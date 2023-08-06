#加減算：座標にパラメータ突っ込んでtp
#乗除算：display entityの行列表現で計算

# 線の方程式は、開始座標を原点とし、yawとpitchによる回転を考慮した方向ベクトルとして表現する
# Z軸に垂直な平面の方程式は z = plane_z となる
data modify storage ckenja.yukata: pos_picker.Pos set from entity @s Pos
data modify storage ckenja.yukata: pos_picker.Rotation set from entity @s Rotation

# floatの値xを計算用データに変換
data modify storage floatcalc: float set from storage ckenja.yukata: pos_picker.Pos[0]
function floatcalc:api/from_float
data modify storage ckenja.yukata: pos_picker.pos_x set from storage floatcalc: x

data modify storage floatcalc: float set from storage ckenja.yukata: pos_picker.Pos[1]
function floatcalc:api/from_float
data modify storage ckenja.yukata: pos_picker.pos_y set from storage floatcalc: x

data modify storage floatcalc: float set from storage ckenja.yukata: pos_picker.Pos[2]
function floatcalc:api/from_float
data modify storage ckenja.yukata: pos_picker.pos_z set from storage floatcalc: x

# 回転はsin cosを求めてからfloat
execute store result storage math: in int 1 run data get storage ckenja.yukata: pos_picker.Rotation[0]
function #math:sin
data modify storage floatcalc: float set from storage math: out
function floatcalc:api/from_float
data modify storage ckenja.yukata: pos_picker.yaw_sin set from storage floatcalc: x

execute store result storage math: in int 1 run data get storage ckenja.yukata: pos_picker.Rotation[1]
function #math:sin
data modify storage floatcalc: float set from storage math: out
function floatcalc:api/from_float
data modify storage ckenja.yukata: pos_picker.pitch_sin set from storage floatcalc: x

execute store result storage math: in int 1 run data get storage ckenja.yukata: pos_picker.Rotation[0]
function #math:cos
data modify storage floatcalc: float set from storage math: out
function floatcalc:api/from_float
data modify storage ckenja.yukata: pos_picker.yaw_cos set from storage floatcalc: x

execute store result storage math: in int 1 run data get storage ckenja.yukata: pos_picker.Rotation[1]
function #math:cos
data modify storage floatcalc: float set from storage math: out
function floatcalc:api/from_float
data modify storage ckenja.yukata: pos_picker.pitch_cos set from storage floatcalc: x

# 方向ベクトルを計算
## direction_x = yaw.cos() * pitch.cos()
data modify storage floatcalc: x set from storage ckenja.yukata: pos_picker.yaw_cos
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.pitch_cos
function floatcalc:api/mul
data modify storage ckenja.yukata: pos_picker.rot_x set from storage floatcalc: x

## direction_y = yaw.sin() * pitch.cos()
data modify storage floatcalc: x set from storage ckenja.yukata: pos_picker.yaw_sin
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.cos_y
function floatcalc:api/mul
data modify storage ckenja.yukata: pos_picker.rot_y set from storage floatcalc: x

## direction_z = pitch.sin()
data modify storage ckenja.yukata: pos_picker.rot_z set from storage ckenja.yukata: pos_picker.pitch_sin

# tを計算する
# plane_z = 5
# t = (plane_z - start.z) / direction_z
data modify storage floatcalc: x set value [I;+1,-28,268435456]
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.cos_y
function floatcalc:api/sub
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.rot_z
function floatcalc:api/div
data modify storage ckenja.yukata: pos_picker.t set from storage floatcalc: x

# 交点を計算する
# intersection_x = start.x + t * direction_x
data modify storage floatcalc: x set from storage ckenja.yukata: pos_picker.t
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.rot_x
function floatcalc:api/mul
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.pos_x
function floatcalc:api/add
function floatcalc:api/to_float
data modify storage ckenja.yukata: pos_picker.int[0] set from storage floatcalc: float
execute unless data storage floatcalc: x[0] run data modify storage ckenja.yukata: pos_picker.int[0] set value 0.0f

# intersection_y = start.y + t * direction_y
data modify storage floatcalc: x set from storage ckenja.yukata: pos_picker.t
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.rot_y
function floatcalc:api/mul
data modify storage floatcalc: y set from storage ckenja.yukata: pos_picker.pos_y
function floatcalc:api/add
function floatcalc:api/to_float
data modify storage ckenja.yukata: pos_picker.int[1] set from storage floatcalc: float
execute unless data storage floatcalc: x[0] run data modify storage ckenja.yukata: pos_picker.int[1] set value 0.0f

# intersection_z = plane_z

# 線分上に交点があるか確認
# if t >= 0.0 && t <= 1.0
tellraw @a {"storage":"ckenja.yukata:", "nbt":"pos_picker.int"}
execute summon marker run function ckenja.yukata:pos_picker/marker
