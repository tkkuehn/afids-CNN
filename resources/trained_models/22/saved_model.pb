Юѕ4
Й
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ж
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	


Conv3DBackpropInputV2
input_sizes"Tshape
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	
"
Tshapetype0:
2	
.
Identity

input"T
output"T"	
Ttype
Р
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68/

conv3d_405/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_405/kernel

%conv3d_405/kernel/Read/ReadVariableOpReadVariableOpconv3d_405/kernel**
_output_shapes
:*
dtype0
v
conv3d_405/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_405/bias
o
#conv3d_405/bias/Read/ReadVariableOpReadVariableOpconv3d_405/bias*
_output_shapes
:*
dtype0

conv3d_406/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_406/kernel

%conv3d_406/kernel/Read/ReadVariableOpReadVariableOpconv3d_406/kernel**
_output_shapes
:*
dtype0
v
conv3d_406/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_406/bias
o
#conv3d_406/bias/Read/ReadVariableOpReadVariableOpconv3d_406/bias*
_output_shapes
:*
dtype0

conv3d_407/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_407/kernel

%conv3d_407/kernel/Read/ReadVariableOpReadVariableOpconv3d_407/kernel**
_output_shapes
: *
dtype0
v
conv3d_407/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_407/bias
o
#conv3d_407/bias/Read/ReadVariableOpReadVariableOpconv3d_407/bias*
_output_shapes
: *
dtype0

conv3d_408/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_408/kernel

%conv3d_408/kernel/Read/ReadVariableOpReadVariableOpconv3d_408/kernel**
_output_shapes
:  *
dtype0
v
conv3d_408/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_408/bias
o
#conv3d_408/bias/Read/ReadVariableOpReadVariableOpconv3d_408/bias*
_output_shapes
: *
dtype0

conv3d_409/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv3d_409/kernel

%conv3d_409/kernel/Read/ReadVariableOpReadVariableOpconv3d_409/kernel**
_output_shapes
: @*
dtype0
v
conv3d_409/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_409/bias
o
#conv3d_409/bias/Read/ReadVariableOpReadVariableOpconv3d_409/bias*
_output_shapes
:@*
dtype0

conv3d_410/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_410/kernel

%conv3d_410/kernel/Read/ReadVariableOpReadVariableOpconv3d_410/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_410/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_410/bias
o
#conv3d_410/bias/Read/ReadVariableOpReadVariableOpconv3d_410/bias*
_output_shapes
:@*
dtype0

conv3d_411/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*"
shared_nameconv3d_411/kernel

%conv3d_411/kernel/Read/ReadVariableOpReadVariableOpconv3d_411/kernel*+
_output_shapes
:@*
dtype0
w
conv3d_411/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_411/bias
p
#conv3d_411/bias/Read/ReadVariableOpReadVariableOpconv3d_411/bias*
_output_shapes	
:*
dtype0

conv3d_412/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_412/kernel

%conv3d_412/kernel/Read/ReadVariableOpReadVariableOpconv3d_412/kernel*,
_output_shapes
:*
dtype0
w
conv3d_412/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_412/bias
p
#conv3d_412/bias/Read/ReadVariableOpReadVariableOpconv3d_412/bias*
_output_shapes	
:*
dtype0

conv3d_413/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_413/kernel

%conv3d_413/kernel/Read/ReadVariableOpReadVariableOpconv3d_413/kernel*,
_output_shapes
:*
dtype0
w
conv3d_413/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_413/bias
p
#conv3d_413/bias/Read/ReadVariableOpReadVariableOpconv3d_413/bias*
_output_shapes	
:*
dtype0

conv3d_414/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_414/kernel

%conv3d_414/kernel/Read/ReadVariableOpReadVariableOpconv3d_414/kernel*,
_output_shapes
:*
dtype0
w
conv3d_414/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_414/bias
p
#conv3d_414/bias/Read/ReadVariableOpReadVariableOpconv3d_414/bias*
_output_shapes	
:*
dtype0

conv3d_transpose_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*+
shared_nameconv3d_transpose_60/kernel

.conv3d_transpose_60/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_60/kernel*,
_output_shapes
:*
dtype0

conv3d_transpose_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv3d_transpose_60/bias

,conv3d_transpose_60/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_60/bias*
_output_shapes	
:*
dtype0

conv3d_415/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_415/kernel

%conv3d_415/kernel/Read/ReadVariableOpReadVariableOpconv3d_415/kernel*,
_output_shapes
:*
dtype0
w
conv3d_415/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_415/bias
p
#conv3d_415/bias/Read/ReadVariableOpReadVariableOpconv3d_415/bias*
_output_shapes	
:*
dtype0

conv3d_416/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_416/kernel

%conv3d_416/kernel/Read/ReadVariableOpReadVariableOpconv3d_416/kernel*,
_output_shapes
:*
dtype0
w
conv3d_416/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_416/bias
p
#conv3d_416/bias/Read/ReadVariableOpReadVariableOpconv3d_416/bias*
_output_shapes	
:*
dtype0

conv3d_417/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_417/kernel

%conv3d_417/kernel/Read/ReadVariableOpReadVariableOpconv3d_417/kernel*,
_output_shapes
:*
dtype0
w
conv3d_417/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_417/bias
p
#conv3d_417/bias/Read/ReadVariableOpReadVariableOpconv3d_417/bias*
_output_shapes	
:*
dtype0

conv3d_418/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_418/kernel

%conv3d_418/kernel/Read/ReadVariableOpReadVariableOpconv3d_418/kernel*,
_output_shapes
:*
dtype0
w
conv3d_418/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_418/bias
p
#conv3d_418/bias/Read/ReadVariableOpReadVariableOpconv3d_418/bias*
_output_shapes	
:*
dtype0

conv3d_transpose_61/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*+
shared_nameconv3d_transpose_61/kernel

.conv3d_transpose_61/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_61/kernel*+
_output_shapes
:@*
dtype0

conv3d_transpose_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv3d_transpose_61/bias

,conv3d_transpose_61/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_61/bias*
_output_shapes
:@*
dtype0

conv3d_419/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_419/kernel

%conv3d_419/kernel/Read/ReadVariableOpReadVariableOpconv3d_419/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_419/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_419/bias
o
#conv3d_419/bias/Read/ReadVariableOpReadVariableOpconv3d_419/bias*
_output_shapes
:@*
dtype0

conv3d_420/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*"
shared_nameconv3d_420/kernel

%conv3d_420/kernel/Read/ReadVariableOpReadVariableOpconv3d_420/kernel*+
_output_shapes
:@*
dtype0
v
conv3d_420/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_420/bias
o
#conv3d_420/bias/Read/ReadVariableOpReadVariableOpconv3d_420/bias*
_output_shapes
:@*
dtype0

conv3d_421/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_421/kernel

%conv3d_421/kernel/Read/ReadVariableOpReadVariableOpconv3d_421/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_421/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_421/bias
o
#conv3d_421/bias/Read/ReadVariableOpReadVariableOpconv3d_421/bias*
_output_shapes
:@*
dtype0

conv3d_422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_422/kernel

%conv3d_422/kernel/Read/ReadVariableOpReadVariableOpconv3d_422/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_422/bias
o
#conv3d_422/bias/Read/ReadVariableOpReadVariableOpconv3d_422/bias*
_output_shapes
:@*
dtype0

conv3d_transpose_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv3d_transpose_62/kernel

.conv3d_transpose_62/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_62/kernel**
_output_shapes
: @*
dtype0

conv3d_transpose_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv3d_transpose_62/bias

,conv3d_transpose_62/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_62/bias*
_output_shapes
: *
dtype0

conv3d_423/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_423/kernel

%conv3d_423/kernel/Read/ReadVariableOpReadVariableOpconv3d_423/kernel**
_output_shapes
:  *
dtype0
v
conv3d_423/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_423/bias
o
#conv3d_423/bias/Read/ReadVariableOpReadVariableOpconv3d_423/bias*
_output_shapes
: *
dtype0

conv3d_424/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv3d_424/kernel

%conv3d_424/kernel/Read/ReadVariableOpReadVariableOpconv3d_424/kernel**
_output_shapes
:@ *
dtype0
v
conv3d_424/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_424/bias
o
#conv3d_424/bias/Read/ReadVariableOpReadVariableOpconv3d_424/bias*
_output_shapes
: *
dtype0

conv3d_425/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_425/kernel

%conv3d_425/kernel/Read/ReadVariableOpReadVariableOpconv3d_425/kernel**
_output_shapes
:  *
dtype0
v
conv3d_425/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_425/bias
o
#conv3d_425/bias/Read/ReadVariableOpReadVariableOpconv3d_425/bias*
_output_shapes
: *
dtype0

conv3d_426/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_426/kernel

%conv3d_426/kernel/Read/ReadVariableOpReadVariableOpconv3d_426/kernel**
_output_shapes
:  *
dtype0
v
conv3d_426/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_426/bias
o
#conv3d_426/bias/Read/ReadVariableOpReadVariableOpconv3d_426/bias*
_output_shapes
: *
dtype0

conv3d_transpose_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv3d_transpose_63/kernel

.conv3d_transpose_63/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_63/kernel**
_output_shapes
: *
dtype0

conv3d_transpose_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv3d_transpose_63/bias

,conv3d_transpose_63/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_63/bias*
_output_shapes
:*
dtype0

conv3d_427/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_427/kernel

%conv3d_427/kernel/Read/ReadVariableOpReadVariableOpconv3d_427/kernel**
_output_shapes
:*
dtype0
v
conv3d_427/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_427/bias
o
#conv3d_427/bias/Read/ReadVariableOpReadVariableOpconv3d_427/bias*
_output_shapes
:*
dtype0

conv3d_428/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_428/kernel

%conv3d_428/kernel/Read/ReadVariableOpReadVariableOpconv3d_428/kernel**
_output_shapes
: *
dtype0
v
conv3d_428/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_428/bias
o
#conv3d_428/bias/Read/ReadVariableOpReadVariableOpconv3d_428/bias*
_output_shapes
:*
dtype0

conv3d_429/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_429/kernel

%conv3d_429/kernel/Read/ReadVariableOpReadVariableOpconv3d_429/kernel**
_output_shapes
:*
dtype0
v
conv3d_429/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_429/bias
o
#conv3d_429/bias/Read/ReadVariableOpReadVariableOpconv3d_429/bias*
_output_shapes
:*
dtype0

conv3d_430/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_430/kernel

%conv3d_430/kernel/Read/ReadVariableOpReadVariableOpconv3d_430/kernel**
_output_shapes
:*
dtype0
v
conv3d_430/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_430/bias
o
#conv3d_430/bias/Read/ReadVariableOpReadVariableOpconv3d_430/bias*
_output_shapes
:*
dtype0

conv3d_431/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_431/kernel

%conv3d_431/kernel/Read/ReadVariableOpReadVariableOpconv3d_431/kernel**
_output_shapes
:*
dtype0
v
conv3d_431/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_431/bias
o
#conv3d_431/bias/Read/ReadVariableOpReadVariableOpconv3d_431/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv3d_405/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_405/kernel/m

,Adam/conv3d_405/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_405/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_405/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_405/bias/m
}
*Adam/conv3d_405/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_405/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_406/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_406/kernel/m

,Adam/conv3d_406/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_406/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_406/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_406/bias/m
}
*Adam/conv3d_406/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_406/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_407/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_407/kernel/m

,Adam/conv3d_407/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_407/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_407/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_407/bias/m
}
*Adam/conv3d_407/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_407/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_408/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_408/kernel/m

,Adam/conv3d_408/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_408/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_408/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_408/bias/m
}
*Adam/conv3d_408/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_408/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_409/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_409/kernel/m

,Adam/conv3d_409/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_409/kernel/m**
_output_shapes
: @*
dtype0

Adam/conv3d_409/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_409/bias/m
}
*Adam/conv3d_409/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_409/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_410/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_410/kernel/m

,Adam/conv3d_410/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_410/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_410/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_410/bias/m
}
*Adam/conv3d_410/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_410/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_411/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_411/kernel/m

,Adam/conv3d_411/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_411/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_411/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_411/bias/m
~
*Adam/conv3d_411/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_411/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_412/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_412/kernel/m

,Adam/conv3d_412/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_412/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_412/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_412/bias/m
~
*Adam/conv3d_412/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_412/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_413/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_413/kernel/m

,Adam/conv3d_413/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_413/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_413/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_413/bias/m
~
*Adam/conv3d_413/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_413/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_414/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_414/kernel/m

,Adam/conv3d_414/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_414/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_414/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_414/bias/m
~
*Adam/conv3d_414/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_414/bias/m*
_output_shapes	
:*
dtype0
Ќ
!Adam/conv3d_transpose_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*2
shared_name#!Adam/conv3d_transpose_60/kernel/m
Ѕ
5Adam/conv3d_transpose_60/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_60/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_transpose_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_60/bias/m

3Adam/conv3d_transpose_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_60/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_415/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_415/kernel/m

,Adam/conv3d_415/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_415/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_415/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_415/bias/m
~
*Adam/conv3d_415/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_415/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_416/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_416/kernel/m

,Adam/conv3d_416/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_416/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_416/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_416/bias/m
~
*Adam/conv3d_416/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_416/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_417/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_417/kernel/m

,Adam/conv3d_417/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_417/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_417/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_417/bias/m
~
*Adam/conv3d_417/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_417/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_418/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_418/kernel/m

,Adam/conv3d_418/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_418/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_418/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_418/bias/m
~
*Adam/conv3d_418/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_418/bias/m*
_output_shapes	
:*
dtype0
Ћ
!Adam/conv3d_transpose_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*2
shared_name#!Adam/conv3d_transpose_61/kernel/m
Є
5Adam/conv3d_transpose_61/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_61/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_transpose_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_61/bias/m

3Adam/conv3d_transpose_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_61/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_419/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_419/kernel/m

,Adam/conv3d_419/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_419/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_419/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_419/bias/m
}
*Adam/conv3d_419/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_419/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_420/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_420/kernel/m

,Adam/conv3d_420/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_420/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_420/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_420/bias/m
}
*Adam/conv3d_420/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_420/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_421/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_421/kernel/m

,Adam/conv3d_421/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_421/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_421/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_421/bias/m
}
*Adam/conv3d_421/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_421/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_422/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_422/kernel/m

,Adam/conv3d_422/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_422/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_422/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_422/bias/m
}
*Adam/conv3d_422/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_422/bias/m*
_output_shapes
:@*
dtype0
Њ
!Adam/conv3d_transpose_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_62/kernel/m
Ѓ
5Adam/conv3d_transpose_62/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_62/kernel/m**
_output_shapes
: @*
dtype0

Adam/conv3d_transpose_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_62/bias/m

3Adam/conv3d_transpose_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_62/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_423/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_423/kernel/m

,Adam/conv3d_423/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_423/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_423/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_423/bias/m
}
*Adam/conv3d_423/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_423/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_424/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_424/kernel/m

,Adam/conv3d_424/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_424/kernel/m**
_output_shapes
:@ *
dtype0

Adam/conv3d_424/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_424/bias/m
}
*Adam/conv3d_424/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_424/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_425/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_425/kernel/m

,Adam/conv3d_425/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_425/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_425/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_425/bias/m
}
*Adam/conv3d_425/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_425/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_426/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_426/kernel/m

,Adam/conv3d_426/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_426/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_426/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_426/bias/m
}
*Adam/conv3d_426/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_426/bias/m*
_output_shapes
: *
dtype0
Њ
!Adam/conv3d_transpose_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_63/kernel/m
Ѓ
5Adam/conv3d_transpose_63/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_63/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_transpose_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_63/bias/m

3Adam/conv3d_transpose_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_63/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_427/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_427/kernel/m

,Adam/conv3d_427/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_427/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_427/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_427/bias/m
}
*Adam/conv3d_427/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_427/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_428/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_428/kernel/m

,Adam/conv3d_428/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_428/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_428/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_428/bias/m
}
*Adam/conv3d_428/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_428/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_429/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_429/kernel/m

,Adam/conv3d_429/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_429/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_429/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_429/bias/m
}
*Adam/conv3d_429/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_429/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_430/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_430/kernel/m

,Adam/conv3d_430/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_430/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_430/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_430/bias/m
}
*Adam/conv3d_430/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_430/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_431/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_431/kernel/m

,Adam/conv3d_431/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_431/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_431/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_431/bias/m
}
*Adam/conv3d_431/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_431/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_405/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_405/kernel/v

,Adam/conv3d_405/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_405/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_405/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_405/bias/v
}
*Adam/conv3d_405/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_405/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_406/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_406/kernel/v

,Adam/conv3d_406/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_406/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_406/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_406/bias/v
}
*Adam/conv3d_406/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_406/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_407/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_407/kernel/v

,Adam/conv3d_407/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_407/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_407/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_407/bias/v
}
*Adam/conv3d_407/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_407/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_408/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_408/kernel/v

,Adam/conv3d_408/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_408/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_408/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_408/bias/v
}
*Adam/conv3d_408/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_408/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_409/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_409/kernel/v

,Adam/conv3d_409/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_409/kernel/v**
_output_shapes
: @*
dtype0

Adam/conv3d_409/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_409/bias/v
}
*Adam/conv3d_409/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_409/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_410/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_410/kernel/v

,Adam/conv3d_410/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_410/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_410/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_410/bias/v
}
*Adam/conv3d_410/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_410/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_411/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_411/kernel/v

,Adam/conv3d_411/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_411/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_411/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_411/bias/v
~
*Adam/conv3d_411/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_411/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_412/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_412/kernel/v

,Adam/conv3d_412/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_412/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_412/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_412/bias/v
~
*Adam/conv3d_412/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_412/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_413/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_413/kernel/v

,Adam/conv3d_413/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_413/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_413/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_413/bias/v
~
*Adam/conv3d_413/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_413/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_414/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_414/kernel/v

,Adam/conv3d_414/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_414/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_414/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_414/bias/v
~
*Adam/conv3d_414/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_414/bias/v*
_output_shapes	
:*
dtype0
Ќ
!Adam/conv3d_transpose_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*2
shared_name#!Adam/conv3d_transpose_60/kernel/v
Ѕ
5Adam/conv3d_transpose_60/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_60/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_transpose_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_60/bias/v

3Adam/conv3d_transpose_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_60/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_415/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_415/kernel/v

,Adam/conv3d_415/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_415/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_415/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_415/bias/v
~
*Adam/conv3d_415/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_415/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_416/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_416/kernel/v

,Adam/conv3d_416/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_416/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_416/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_416/bias/v
~
*Adam/conv3d_416/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_416/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_417/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_417/kernel/v

,Adam/conv3d_417/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_417/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_417/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_417/bias/v
~
*Adam/conv3d_417/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_417/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_418/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_418/kernel/v

,Adam/conv3d_418/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_418/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_418/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_418/bias/v
~
*Adam/conv3d_418/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_418/bias/v*
_output_shapes	
:*
dtype0
Ћ
!Adam/conv3d_transpose_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*2
shared_name#!Adam/conv3d_transpose_61/kernel/v
Є
5Adam/conv3d_transpose_61/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_61/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_transpose_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_61/bias/v

3Adam/conv3d_transpose_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_61/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_419/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_419/kernel/v

,Adam/conv3d_419/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_419/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_419/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_419/bias/v
}
*Adam/conv3d_419/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_419/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_420/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_420/kernel/v

,Adam/conv3d_420/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_420/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_420/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_420/bias/v
}
*Adam/conv3d_420/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_420/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_421/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_421/kernel/v

,Adam/conv3d_421/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_421/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_421/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_421/bias/v
}
*Adam/conv3d_421/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_421/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_422/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_422/kernel/v

,Adam/conv3d_422/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_422/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_422/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_422/bias/v
}
*Adam/conv3d_422/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_422/bias/v*
_output_shapes
:@*
dtype0
Њ
!Adam/conv3d_transpose_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_62/kernel/v
Ѓ
5Adam/conv3d_transpose_62/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_62/kernel/v**
_output_shapes
: @*
dtype0

Adam/conv3d_transpose_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_62/bias/v

3Adam/conv3d_transpose_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_62/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_423/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_423/kernel/v

,Adam/conv3d_423/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_423/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_423/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_423/bias/v
}
*Adam/conv3d_423/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_423/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_424/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_424/kernel/v

,Adam/conv3d_424/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_424/kernel/v**
_output_shapes
:@ *
dtype0

Adam/conv3d_424/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_424/bias/v
}
*Adam/conv3d_424/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_424/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_425/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_425/kernel/v

,Adam/conv3d_425/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_425/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_425/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_425/bias/v
}
*Adam/conv3d_425/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_425/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_426/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_426/kernel/v

,Adam/conv3d_426/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_426/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_426/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_426/bias/v
}
*Adam/conv3d_426/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_426/bias/v*
_output_shapes
: *
dtype0
Њ
!Adam/conv3d_transpose_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_63/kernel/v
Ѓ
5Adam/conv3d_transpose_63/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_63/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_transpose_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_63/bias/v

3Adam/conv3d_transpose_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_63/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_427/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_427/kernel/v

,Adam/conv3d_427/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_427/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_427/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_427/bias/v
}
*Adam/conv3d_427/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_427/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_428/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_428/kernel/v

,Adam/conv3d_428/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_428/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_428/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_428/bias/v
}
*Adam/conv3d_428/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_428/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_429/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_429/kernel/v

,Adam/conv3d_429/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_429/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_429/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_429/bias/v
}
*Adam/conv3d_429/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_429/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_430/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_430/kernel/v

,Adam/conv3d_430/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_430/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_430/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_430/bias/v
}
*Adam/conv3d_430/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_430/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_431/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_431/kernel/v

,Adam/conv3d_431/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_431/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_431/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_431/bias/v
}
*Adam/conv3d_431/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_431/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*а
valueХBС BЙ
г
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer_with_weights-14
layer-21
layer_with_weights-15
layer-22
layer_with_weights-16
layer-23
layer-24
layer_with_weights-17
layer-25
layer_with_weights-18
layer-26
layer_with_weights-19
layer-27
layer_with_weights-20
layer-28
layer_with_weights-21
layer-29
layer-30
 layer_with_weights-22
 layer-31
!layer_with_weights-23
!layer-32
"layer_with_weights-24
"layer-33
#layer_with_weights-25
#layer-34
$layer_with_weights-26
$layer-35
%layer-36
&layer_with_weights-27
&layer-37
'layer_with_weights-28
'layer-38
(layer_with_weights-29
(layer-39
)layer-40
*layer_with_weights-30
*layer-41
+	optimizer
,loss
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_default_save_signature
4
signatures*
* 

5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
І

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
І

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*

K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
І

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses*
І

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses*

a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
І

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
І

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*

w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
Ћ

}kernel
~bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ў
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ў
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ў
kernel
	bias
	variables
trainable_variables
regularization_losses
 	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses*
Ў
Ѓkernel
	Єbias
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses*
Ў
Ћkernel
	Ќbias
­	variables
Ўtrainable_variables
Џregularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses*

Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses* 
Ў
Йkernel
	Кbias
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses*
Ў
Сkernel
	Тbias
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses*
Ў
Щkernel
	Ъbias
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses*
Ў
бkernel
	вbias
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses*
Ў
йkernel
	кbias
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses*

с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses* 
Ў
чkernel
	шbias
щ	variables
ъtrainable_variables
ыregularization_losses
ь	keras_api
э__call__
+ю&call_and_return_all_conditional_losses*
Ў
яkernel
	№bias
ё	variables
ђtrainable_variables
ѓregularization_losses
є	keras_api
ѕ__call__
+і&call_and_return_all_conditional_losses*
Ў
їkernel
	јbias
љ	variables
њtrainable_variables
ћregularization_losses
ќ	keras_api
§__call__
+ў&call_and_return_all_conditional_losses*
Ў
џkernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ў
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ў
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ў
kernel
	bias
	variables
 trainable_variables
Ёregularization_losses
Ђ	keras_api
Ѓ__call__
+Є&call_and_return_all_conditional_losses*
Ў
Ѕkernel
	Іbias
Ї	variables
Јtrainable_variables
Љregularization_losses
Њ	keras_api
Ћ__call__
+Ќ&call_and_return_all_conditional_losses*
Ў
­kernel
	Ўbias
Џ	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses*
Ў
Еkernel
	Жbias
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses*

Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
Ў
Уkernel
	Фbias
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses*
Ў
Ыkernel
	Ьbias
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses*
Ў
гkernel
	дbias
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses*

л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses* 
Ў
сkernel
	тbias
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses*

	щiter
ъbeta_1
ыbeta_2

ьdecay
эlearning_rate;mЫ<mЬCmЭDmЮQmЯRmаYmбZmвgmгhmдomеpmж}mз~mи	mй	mк	mл	mм	mн	mо	Ѓmп	Єmр	Ћmс	Ќmт	Йmу	Кmф	Сmх	Тmц	Щmч	Ъmш	бmщ	вmъ	йmы	кmь	чmэ	шmю	яmя	№m№	їmё	јmђ	џmѓ	mє	mѕ	mі	mї	mј	mљ	mњ	Ѕmћ	Іmќ	­m§	Ўmў	Еmџ	Жm	Уm	Фm	Ыm	Ьm	гm	дm	сm	тm;v<vCvDvQvRvYvZvgvhvovpv}v~v	v	v	v	v	v	v	Ѓv	Єv	Ћv	Ќv 	ЙvЁ	КvЂ	СvЃ	ТvЄ	ЩvЅ	ЪvІ	бvЇ	вvЈ	йvЉ	кvЊ	чvЋ	шvЌ	яv­	№vЎ	їvЏ	јvА	џvБ	vВ	vГ	vД	vЕ	vЖ	vЗ	vИ	ЅvЙ	ІvК	­vЛ	ЎvМ	ЕvН	ЖvО	УvП	ФvР	ЫvС	ЬvТ	гvУ	дvФ	сvХ	тvЦ*
* 

;0
<1
C2
D3
Q4
R5
Y6
Z7
g8
h9
o10
p11
}12
~13
14
15
16
17
18
19
Ѓ20
Є21
Ћ22
Ќ23
Й24
К25
С26
Т27
Щ28
Ъ29
б30
в31
й32
к33
ч34
ш35
я36
№37
ї38
ј39
џ40
41
42
43
44
45
46
47
Ѕ48
І49
­50
Ў51
Е52
Ж53
У54
Ф55
Ы56
Ь57
г58
д59
с60
т61*

;0
<1
C2
D3
Q4
R5
Y6
Z7
g8
h9
o10
p11
}12
~13
14
15
16
17
18
19
Ѓ20
Є21
Ћ22
Ќ23
Й24
К25
С26
Т27
Щ28
Ъ29
б30
в31
й32
к33
ч34
ш35
я36
№37
ї38
ј39
џ40
41
42
43
44
45
46
47
Ѕ48
І49
­50
Ў51
Е52
Ж53
У54
Ф55
Ы56
Ь57
г58
д59
с60
т61*
* 
Е
юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
3_default_save_signature
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 

ѓserving_default* 
* 
* 
* 

єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_405/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_405/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

;0
<1*

;0
<1*
* 

љnon_trainable_variables
њlayers
ћmetrics
 ќlayer_regularization_losses
§layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_406/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_406/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

C0
D1*

C0
D1*
* 

ўnon_trainable_variables
џlayers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_407/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_407/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

Q0
R1*

Q0
R1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_408/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_408/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

Y0
Z1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_409/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_409/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_410/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_410/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ёnon_trainable_variables
Ђlayers
Ѓmetrics
 Єlayer_regularization_losses
Ѕlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_411/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_411/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

}0
~1*

}0
~1*
* 

Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_412/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_412/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_413/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_413/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_414/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_414/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
regularization_losses
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEconv3d_transpose_60/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_60/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ѓ0
Є1*

Ѓ0
Є1*
* 

Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_415/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_415/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ћ0
Ќ1*

Ћ0
Ќ1*
* 

Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
­	variables
Ўtrainable_variables
Џregularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses* 
* 
* 
b\
VARIABLE_VALUEconv3d_416/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_416/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

Й0
К1*

Й0
К1*
* 

Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_417/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_417/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*

С0
Т1*

С0
Т1*
* 

гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_418/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_418/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*

Щ0
Ъ1*

Щ0
Ъ1*
* 

иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEconv3d_transpose_61/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_61/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*

б0
в1*

б0
в1*
* 

нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_419/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_419/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*

й0
к1*

й0
к1*
* 

тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses* 
* 
* 
b\
VARIABLE_VALUEconv3d_420/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_420/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*

ч0
ш1*

ч0
ш1*
* 

ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
щ	variables
ъtrainable_variables
ыregularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_421/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_421/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*

я0
№1*

я0
№1*
* 

ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
ё	variables
ђtrainable_variables
ѓregularization_losses
ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_422/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_422/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*

ї0
ј1*

ї0
ј1*
* 

іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
љ	variables
њtrainable_variables
ћregularization_losses
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEconv3d_transpose_62/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_62/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*

џ0
1*

џ0
1*
* 

ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_423/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_423/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
b\
VARIABLE_VALUEconv3d_424/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_424/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_425/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_425/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
Ёregularization_losses
Ѓ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_426/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_426/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ѕ0
І1*

Ѕ0
І1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ї	variables
Јtrainable_variables
Љregularization_losses
Ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEconv3d_transpose_63/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_63/bias5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUE*

­0
Ў1*

­0
Ў1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Џ	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_427/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_427/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*

Е0
Ж1*

Е0
Ж1*
* 

non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ѓnon_trainable_variables
Єlayers
Ѕmetrics
 Іlayer_regularization_losses
Їlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 
* 
* 
b\
VARIABLE_VALUEconv3d_428/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_428/bias5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUE*

У0
Ф1*

У0
Ф1*
* 

Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_429/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_429/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ы0
Ь1*

Ы0
Ь1*
* 

­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEconv3d_430/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_430/bias5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUE*

г0
д1*

г0
д1*
* 

Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses* 
* 
* 
b\
VARIABLE_VALUEconv3d_431/kernel7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_431/bias5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUE*

с0
т1*

с0
т1*
* 

Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ъ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41*

С0
Т1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Уtotal

Фcount
Х	variables
Ц	keras_api*
<

Чtotal

Шcount
Щ	variables
Ъ	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

У0
Ф1*

Х	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

Ч0
Ш1*

Щ	variables*
~
VARIABLE_VALUEAdam/conv3d_405/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_405/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_406/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_406/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_407/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_407/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_408/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_408/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_409/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_409/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_410/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_410/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_411/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_411/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_412/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_412/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_413/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_413/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_414/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_414/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_60/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_60/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_415/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_415/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_416/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_416/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_417/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_417/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_418/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_418/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_61/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_61/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_419/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_419/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_420/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_420/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_421/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_421/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_422/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_422/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_62/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_62/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_423/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_423/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_424/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_424/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_425/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_425/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_426/kernel/mSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_426/bias/mQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_63/kernel/mSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_63/bias/mQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_427/kernel/mSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_427/bias/mQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_428/kernel/mSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_428/bias/mQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_429/kernel/mSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_429/bias/mQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_430/kernel/mSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_430/bias/mQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_431/kernel/mSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_431/bias/mQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_405/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_405/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_406/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_406/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_407/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_407/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_408/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_408/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_409/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_409/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_410/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_410/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_411/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_411/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_412/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_412/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_413/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_413/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_414/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_414/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_60/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_60/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_415/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_415/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_416/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_416/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_417/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_417/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_418/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_418/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_61/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_61/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_419/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_419/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_420/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_420/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_421/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_421/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_422/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_422/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_62/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_62/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_423/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_423/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_424/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_424/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_425/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_425/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_426/kernel/vSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_426/bias/vQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_63/kernel/vSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_63/bias/vQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_427/kernel/vSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_427/bias/vQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_428/kernel/vSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_428/bias/vQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_429/kernel/vSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_429/bias/vQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_430/kernel/vSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_430/bias/vQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_431/kernel/vSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_431/bias/vQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Щ
serving_default_input_16Placeholder*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*C
shape::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
§
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_16conv3d_405/kernelconv3d_405/biasconv3d_406/kernelconv3d_406/biasconv3d_407/kernelconv3d_407/biasconv3d_408/kernelconv3d_408/biasconv3d_409/kernelconv3d_409/biasconv3d_410/kernelconv3d_410/biasconv3d_411/kernelconv3d_411/biasconv3d_412/kernelconv3d_412/biasconv3d_413/kernelconv3d_413/biasconv3d_414/kernelconv3d_414/biasconv3d_transpose_60/kernelconv3d_transpose_60/biasconv3d_415/kernelconv3d_415/biasconv3d_416/kernelconv3d_416/biasconv3d_417/kernelconv3d_417/biasconv3d_418/kernelconv3d_418/biasconv3d_transpose_61/kernelconv3d_transpose_61/biasconv3d_419/kernelconv3d_419/biasconv3d_420/kernelconv3d_420/biasconv3d_421/kernelconv3d_421/biasconv3d_422/kernelconv3d_422/biasconv3d_transpose_62/kernelconv3d_transpose_62/biasconv3d_423/kernelconv3d_423/biasconv3d_424/kernelconv3d_424/biasconv3d_425/kernelconv3d_425/biasconv3d_426/kernelconv3d_426/biasconv3d_transpose_63/kernelconv3d_transpose_63/biasconv3d_427/kernelconv3d_427/biasconv3d_428/kernelconv3d_428/biasconv3d_429/kernelconv3d_429/biasconv3d_430/kernelconv3d_430/biasconv3d_431/kernelconv3d_431/bias*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_485128
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
жE
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_405/kernel/Read/ReadVariableOp#conv3d_405/bias/Read/ReadVariableOp%conv3d_406/kernel/Read/ReadVariableOp#conv3d_406/bias/Read/ReadVariableOp%conv3d_407/kernel/Read/ReadVariableOp#conv3d_407/bias/Read/ReadVariableOp%conv3d_408/kernel/Read/ReadVariableOp#conv3d_408/bias/Read/ReadVariableOp%conv3d_409/kernel/Read/ReadVariableOp#conv3d_409/bias/Read/ReadVariableOp%conv3d_410/kernel/Read/ReadVariableOp#conv3d_410/bias/Read/ReadVariableOp%conv3d_411/kernel/Read/ReadVariableOp#conv3d_411/bias/Read/ReadVariableOp%conv3d_412/kernel/Read/ReadVariableOp#conv3d_412/bias/Read/ReadVariableOp%conv3d_413/kernel/Read/ReadVariableOp#conv3d_413/bias/Read/ReadVariableOp%conv3d_414/kernel/Read/ReadVariableOp#conv3d_414/bias/Read/ReadVariableOp.conv3d_transpose_60/kernel/Read/ReadVariableOp,conv3d_transpose_60/bias/Read/ReadVariableOp%conv3d_415/kernel/Read/ReadVariableOp#conv3d_415/bias/Read/ReadVariableOp%conv3d_416/kernel/Read/ReadVariableOp#conv3d_416/bias/Read/ReadVariableOp%conv3d_417/kernel/Read/ReadVariableOp#conv3d_417/bias/Read/ReadVariableOp%conv3d_418/kernel/Read/ReadVariableOp#conv3d_418/bias/Read/ReadVariableOp.conv3d_transpose_61/kernel/Read/ReadVariableOp,conv3d_transpose_61/bias/Read/ReadVariableOp%conv3d_419/kernel/Read/ReadVariableOp#conv3d_419/bias/Read/ReadVariableOp%conv3d_420/kernel/Read/ReadVariableOp#conv3d_420/bias/Read/ReadVariableOp%conv3d_421/kernel/Read/ReadVariableOp#conv3d_421/bias/Read/ReadVariableOp%conv3d_422/kernel/Read/ReadVariableOp#conv3d_422/bias/Read/ReadVariableOp.conv3d_transpose_62/kernel/Read/ReadVariableOp,conv3d_transpose_62/bias/Read/ReadVariableOp%conv3d_423/kernel/Read/ReadVariableOp#conv3d_423/bias/Read/ReadVariableOp%conv3d_424/kernel/Read/ReadVariableOp#conv3d_424/bias/Read/ReadVariableOp%conv3d_425/kernel/Read/ReadVariableOp#conv3d_425/bias/Read/ReadVariableOp%conv3d_426/kernel/Read/ReadVariableOp#conv3d_426/bias/Read/ReadVariableOp.conv3d_transpose_63/kernel/Read/ReadVariableOp,conv3d_transpose_63/bias/Read/ReadVariableOp%conv3d_427/kernel/Read/ReadVariableOp#conv3d_427/bias/Read/ReadVariableOp%conv3d_428/kernel/Read/ReadVariableOp#conv3d_428/bias/Read/ReadVariableOp%conv3d_429/kernel/Read/ReadVariableOp#conv3d_429/bias/Read/ReadVariableOp%conv3d_430/kernel/Read/ReadVariableOp#conv3d_430/bias/Read/ReadVariableOp%conv3d_431/kernel/Read/ReadVariableOp#conv3d_431/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv3d_405/kernel/m/Read/ReadVariableOp*Adam/conv3d_405/bias/m/Read/ReadVariableOp,Adam/conv3d_406/kernel/m/Read/ReadVariableOp*Adam/conv3d_406/bias/m/Read/ReadVariableOp,Adam/conv3d_407/kernel/m/Read/ReadVariableOp*Adam/conv3d_407/bias/m/Read/ReadVariableOp,Adam/conv3d_408/kernel/m/Read/ReadVariableOp*Adam/conv3d_408/bias/m/Read/ReadVariableOp,Adam/conv3d_409/kernel/m/Read/ReadVariableOp*Adam/conv3d_409/bias/m/Read/ReadVariableOp,Adam/conv3d_410/kernel/m/Read/ReadVariableOp*Adam/conv3d_410/bias/m/Read/ReadVariableOp,Adam/conv3d_411/kernel/m/Read/ReadVariableOp*Adam/conv3d_411/bias/m/Read/ReadVariableOp,Adam/conv3d_412/kernel/m/Read/ReadVariableOp*Adam/conv3d_412/bias/m/Read/ReadVariableOp,Adam/conv3d_413/kernel/m/Read/ReadVariableOp*Adam/conv3d_413/bias/m/Read/ReadVariableOp,Adam/conv3d_414/kernel/m/Read/ReadVariableOp*Adam/conv3d_414/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_60/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_60/bias/m/Read/ReadVariableOp,Adam/conv3d_415/kernel/m/Read/ReadVariableOp*Adam/conv3d_415/bias/m/Read/ReadVariableOp,Adam/conv3d_416/kernel/m/Read/ReadVariableOp*Adam/conv3d_416/bias/m/Read/ReadVariableOp,Adam/conv3d_417/kernel/m/Read/ReadVariableOp*Adam/conv3d_417/bias/m/Read/ReadVariableOp,Adam/conv3d_418/kernel/m/Read/ReadVariableOp*Adam/conv3d_418/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_61/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_61/bias/m/Read/ReadVariableOp,Adam/conv3d_419/kernel/m/Read/ReadVariableOp*Adam/conv3d_419/bias/m/Read/ReadVariableOp,Adam/conv3d_420/kernel/m/Read/ReadVariableOp*Adam/conv3d_420/bias/m/Read/ReadVariableOp,Adam/conv3d_421/kernel/m/Read/ReadVariableOp*Adam/conv3d_421/bias/m/Read/ReadVariableOp,Adam/conv3d_422/kernel/m/Read/ReadVariableOp*Adam/conv3d_422/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_62/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_62/bias/m/Read/ReadVariableOp,Adam/conv3d_423/kernel/m/Read/ReadVariableOp*Adam/conv3d_423/bias/m/Read/ReadVariableOp,Adam/conv3d_424/kernel/m/Read/ReadVariableOp*Adam/conv3d_424/bias/m/Read/ReadVariableOp,Adam/conv3d_425/kernel/m/Read/ReadVariableOp*Adam/conv3d_425/bias/m/Read/ReadVariableOp,Adam/conv3d_426/kernel/m/Read/ReadVariableOp*Adam/conv3d_426/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_63/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_63/bias/m/Read/ReadVariableOp,Adam/conv3d_427/kernel/m/Read/ReadVariableOp*Adam/conv3d_427/bias/m/Read/ReadVariableOp,Adam/conv3d_428/kernel/m/Read/ReadVariableOp*Adam/conv3d_428/bias/m/Read/ReadVariableOp,Adam/conv3d_429/kernel/m/Read/ReadVariableOp*Adam/conv3d_429/bias/m/Read/ReadVariableOp,Adam/conv3d_430/kernel/m/Read/ReadVariableOp*Adam/conv3d_430/bias/m/Read/ReadVariableOp,Adam/conv3d_431/kernel/m/Read/ReadVariableOp*Adam/conv3d_431/bias/m/Read/ReadVariableOp,Adam/conv3d_405/kernel/v/Read/ReadVariableOp*Adam/conv3d_405/bias/v/Read/ReadVariableOp,Adam/conv3d_406/kernel/v/Read/ReadVariableOp*Adam/conv3d_406/bias/v/Read/ReadVariableOp,Adam/conv3d_407/kernel/v/Read/ReadVariableOp*Adam/conv3d_407/bias/v/Read/ReadVariableOp,Adam/conv3d_408/kernel/v/Read/ReadVariableOp*Adam/conv3d_408/bias/v/Read/ReadVariableOp,Adam/conv3d_409/kernel/v/Read/ReadVariableOp*Adam/conv3d_409/bias/v/Read/ReadVariableOp,Adam/conv3d_410/kernel/v/Read/ReadVariableOp*Adam/conv3d_410/bias/v/Read/ReadVariableOp,Adam/conv3d_411/kernel/v/Read/ReadVariableOp*Adam/conv3d_411/bias/v/Read/ReadVariableOp,Adam/conv3d_412/kernel/v/Read/ReadVariableOp*Adam/conv3d_412/bias/v/Read/ReadVariableOp,Adam/conv3d_413/kernel/v/Read/ReadVariableOp*Adam/conv3d_413/bias/v/Read/ReadVariableOp,Adam/conv3d_414/kernel/v/Read/ReadVariableOp*Adam/conv3d_414/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_60/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_60/bias/v/Read/ReadVariableOp,Adam/conv3d_415/kernel/v/Read/ReadVariableOp*Adam/conv3d_415/bias/v/Read/ReadVariableOp,Adam/conv3d_416/kernel/v/Read/ReadVariableOp*Adam/conv3d_416/bias/v/Read/ReadVariableOp,Adam/conv3d_417/kernel/v/Read/ReadVariableOp*Adam/conv3d_417/bias/v/Read/ReadVariableOp,Adam/conv3d_418/kernel/v/Read/ReadVariableOp*Adam/conv3d_418/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_61/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_61/bias/v/Read/ReadVariableOp,Adam/conv3d_419/kernel/v/Read/ReadVariableOp*Adam/conv3d_419/bias/v/Read/ReadVariableOp,Adam/conv3d_420/kernel/v/Read/ReadVariableOp*Adam/conv3d_420/bias/v/Read/ReadVariableOp,Adam/conv3d_421/kernel/v/Read/ReadVariableOp*Adam/conv3d_421/bias/v/Read/ReadVariableOp,Adam/conv3d_422/kernel/v/Read/ReadVariableOp*Adam/conv3d_422/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_62/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_62/bias/v/Read/ReadVariableOp,Adam/conv3d_423/kernel/v/Read/ReadVariableOp*Adam/conv3d_423/bias/v/Read/ReadVariableOp,Adam/conv3d_424/kernel/v/Read/ReadVariableOp*Adam/conv3d_424/bias/v/Read/ReadVariableOp,Adam/conv3d_425/kernel/v/Read/ReadVariableOp*Adam/conv3d_425/bias/v/Read/ReadVariableOp,Adam/conv3d_426/kernel/v/Read/ReadVariableOp*Adam/conv3d_426/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_63/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_63/bias/v/Read/ReadVariableOp,Adam/conv3d_427/kernel/v/Read/ReadVariableOp*Adam/conv3d_427/bias/v/Read/ReadVariableOp,Adam/conv3d_428/kernel/v/Read/ReadVariableOp*Adam/conv3d_428/bias/v/Read/ReadVariableOp,Adam/conv3d_429/kernel/v/Read/ReadVariableOp*Adam/conv3d_429/bias/v/Read/ReadVariableOp,Adam/conv3d_430/kernel/v/Read/ReadVariableOp*Adam/conv3d_430/bias/v/Read/ReadVariableOp,Adam/conv3d_431/kernel/v/Read/ReadVariableOp*Adam/conv3d_431/bias/v/Read/ReadVariableOpConst*г
TinЫ
Ш2Х	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_486573
'
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_405/kernelconv3d_405/biasconv3d_406/kernelconv3d_406/biasconv3d_407/kernelconv3d_407/biasconv3d_408/kernelconv3d_408/biasconv3d_409/kernelconv3d_409/biasconv3d_410/kernelconv3d_410/biasconv3d_411/kernelconv3d_411/biasconv3d_412/kernelconv3d_412/biasconv3d_413/kernelconv3d_413/biasconv3d_414/kernelconv3d_414/biasconv3d_transpose_60/kernelconv3d_transpose_60/biasconv3d_415/kernelconv3d_415/biasconv3d_416/kernelconv3d_416/biasconv3d_417/kernelconv3d_417/biasconv3d_418/kernelconv3d_418/biasconv3d_transpose_61/kernelconv3d_transpose_61/biasconv3d_419/kernelconv3d_419/biasconv3d_420/kernelconv3d_420/biasconv3d_421/kernelconv3d_421/biasconv3d_422/kernelconv3d_422/biasconv3d_transpose_62/kernelconv3d_transpose_62/biasconv3d_423/kernelconv3d_423/biasconv3d_424/kernelconv3d_424/biasconv3d_425/kernelconv3d_425/biasconv3d_426/kernelconv3d_426/biasconv3d_transpose_63/kernelconv3d_transpose_63/biasconv3d_427/kernelconv3d_427/biasconv3d_428/kernelconv3d_428/biasconv3d_429/kernelconv3d_429/biasconv3d_430/kernelconv3d_430/biasconv3d_431/kernelconv3d_431/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_405/kernel/mAdam/conv3d_405/bias/mAdam/conv3d_406/kernel/mAdam/conv3d_406/bias/mAdam/conv3d_407/kernel/mAdam/conv3d_407/bias/mAdam/conv3d_408/kernel/mAdam/conv3d_408/bias/mAdam/conv3d_409/kernel/mAdam/conv3d_409/bias/mAdam/conv3d_410/kernel/mAdam/conv3d_410/bias/mAdam/conv3d_411/kernel/mAdam/conv3d_411/bias/mAdam/conv3d_412/kernel/mAdam/conv3d_412/bias/mAdam/conv3d_413/kernel/mAdam/conv3d_413/bias/mAdam/conv3d_414/kernel/mAdam/conv3d_414/bias/m!Adam/conv3d_transpose_60/kernel/mAdam/conv3d_transpose_60/bias/mAdam/conv3d_415/kernel/mAdam/conv3d_415/bias/mAdam/conv3d_416/kernel/mAdam/conv3d_416/bias/mAdam/conv3d_417/kernel/mAdam/conv3d_417/bias/mAdam/conv3d_418/kernel/mAdam/conv3d_418/bias/m!Adam/conv3d_transpose_61/kernel/mAdam/conv3d_transpose_61/bias/mAdam/conv3d_419/kernel/mAdam/conv3d_419/bias/mAdam/conv3d_420/kernel/mAdam/conv3d_420/bias/mAdam/conv3d_421/kernel/mAdam/conv3d_421/bias/mAdam/conv3d_422/kernel/mAdam/conv3d_422/bias/m!Adam/conv3d_transpose_62/kernel/mAdam/conv3d_transpose_62/bias/mAdam/conv3d_423/kernel/mAdam/conv3d_423/bias/mAdam/conv3d_424/kernel/mAdam/conv3d_424/bias/mAdam/conv3d_425/kernel/mAdam/conv3d_425/bias/mAdam/conv3d_426/kernel/mAdam/conv3d_426/bias/m!Adam/conv3d_transpose_63/kernel/mAdam/conv3d_transpose_63/bias/mAdam/conv3d_427/kernel/mAdam/conv3d_427/bias/mAdam/conv3d_428/kernel/mAdam/conv3d_428/bias/mAdam/conv3d_429/kernel/mAdam/conv3d_429/bias/mAdam/conv3d_430/kernel/mAdam/conv3d_430/bias/mAdam/conv3d_431/kernel/mAdam/conv3d_431/bias/mAdam/conv3d_405/kernel/vAdam/conv3d_405/bias/vAdam/conv3d_406/kernel/vAdam/conv3d_406/bias/vAdam/conv3d_407/kernel/vAdam/conv3d_407/bias/vAdam/conv3d_408/kernel/vAdam/conv3d_408/bias/vAdam/conv3d_409/kernel/vAdam/conv3d_409/bias/vAdam/conv3d_410/kernel/vAdam/conv3d_410/bias/vAdam/conv3d_411/kernel/vAdam/conv3d_411/bias/vAdam/conv3d_412/kernel/vAdam/conv3d_412/bias/vAdam/conv3d_413/kernel/vAdam/conv3d_413/bias/vAdam/conv3d_414/kernel/vAdam/conv3d_414/bias/v!Adam/conv3d_transpose_60/kernel/vAdam/conv3d_transpose_60/bias/vAdam/conv3d_415/kernel/vAdam/conv3d_415/bias/vAdam/conv3d_416/kernel/vAdam/conv3d_416/bias/vAdam/conv3d_417/kernel/vAdam/conv3d_417/bias/vAdam/conv3d_418/kernel/vAdam/conv3d_418/bias/v!Adam/conv3d_transpose_61/kernel/vAdam/conv3d_transpose_61/bias/vAdam/conv3d_419/kernel/vAdam/conv3d_419/bias/vAdam/conv3d_420/kernel/vAdam/conv3d_420/bias/vAdam/conv3d_421/kernel/vAdam/conv3d_421/bias/vAdam/conv3d_422/kernel/vAdam/conv3d_422/bias/v!Adam/conv3d_transpose_62/kernel/vAdam/conv3d_transpose_62/bias/vAdam/conv3d_423/kernel/vAdam/conv3d_423/bias/vAdam/conv3d_424/kernel/vAdam/conv3d_424/bias/vAdam/conv3d_425/kernel/vAdam/conv3d_425/bias/vAdam/conv3d_426/kernel/vAdam/conv3d_426/bias/v!Adam/conv3d_transpose_63/kernel/vAdam/conv3d_transpose_63/bias/vAdam/conv3d_427/kernel/vAdam/conv3d_427/bias/vAdam/conv3d_428/kernel/vAdam/conv3d_428/bias/vAdam/conv3d_429/kernel/vAdam/conv3d_429/bias/vAdam/conv3d_430/kernel/vAdam/conv3d_430/bias/vAdam/conv3d_431/kernel/vAdam/conv3d_431/bias/v*в
TinЪ
Ч2Ф*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_487168П№'
Ы

F__inference_conv3d_421_layer_call_and_return_conditional_losses_482529

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

F__inference_conv3d_428_layer_call_and_return_conditional_losses_482676

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_410_layer_call_fn_485268

inputs%
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_410_layer_call_and_return_conditional_losses_482312
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ж"
 
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_482184

inputsF
(conv3d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_416_layer_call_fn_485471

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_416_layer_call_and_return_conditional_losses_482430
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_426_layer_call_and_return_conditional_losses_485796

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Я

F__inference_conv3d_420_layer_call_and_return_conditional_losses_482512

inputs=
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ба
ж
D__inference_model_15_layer_call_and_return_conditional_losses_484053
input_16/
conv3d_405_483888:
conv3d_405_483890:/
conv3d_406_483893:
conv3d_406_483895:/
conv3d_407_483899: 
conv3d_407_483901: /
conv3d_408_483904:  
conv3d_408_483906: /
conv3d_409_483910: @
conv3d_409_483912:@/
conv3d_410_483915:@@
conv3d_410_483917:@0
conv3d_411_483921:@ 
conv3d_411_483923:	1
conv3d_412_483926: 
conv3d_412_483928:	1
conv3d_413_483932: 
conv3d_413_483934:	1
conv3d_414_483937: 
conv3d_414_483939:	:
conv3d_transpose_60_483942:)
conv3d_transpose_60_483944:	1
conv3d_415_483947: 
conv3d_415_483949:	1
conv3d_416_483953: 
conv3d_416_483955:	1
conv3d_417_483958: 
conv3d_417_483960:	1
conv3d_418_483963: 
conv3d_418_483965:	9
conv3d_transpose_61_483968:@(
conv3d_transpose_61_483970:@/
conv3d_419_483973:@@
conv3d_419_483975:@0
conv3d_420_483979:@
conv3d_420_483981:@/
conv3d_421_483984:@@
conv3d_421_483986:@/
conv3d_422_483989:@@
conv3d_422_483991:@8
conv3d_transpose_62_483994: @(
conv3d_transpose_62_483996: /
conv3d_423_483999:  
conv3d_423_484001: /
conv3d_424_484005:@ 
conv3d_424_484007: /
conv3d_425_484010:  
conv3d_425_484012: /
conv3d_426_484015:  
conv3d_426_484017: 8
conv3d_transpose_63_484020: (
conv3d_transpose_63_484022:/
conv3d_427_484025:
conv3d_427_484027:/
conv3d_428_484031: 
conv3d_428_484033:/
conv3d_429_484036:
conv3d_429_484038:/
conv3d_430_484041:
conv3d_430_484043:/
conv3d_431_484047:
conv3d_431_484049:
identityЂ"conv3d_405/StatefulPartitionedCallЂ"conv3d_406/StatefulPartitionedCallЂ"conv3d_407/StatefulPartitionedCallЂ"conv3d_408/StatefulPartitionedCallЂ"conv3d_409/StatefulPartitionedCallЂ"conv3d_410/StatefulPartitionedCallЂ"conv3d_411/StatefulPartitionedCallЂ"conv3d_412/StatefulPartitionedCallЂ"conv3d_413/StatefulPartitionedCallЂ"conv3d_414/StatefulPartitionedCallЂ"conv3d_415/StatefulPartitionedCallЂ"conv3d_416/StatefulPartitionedCallЂ"conv3d_417/StatefulPartitionedCallЂ"conv3d_418/StatefulPartitionedCallЂ"conv3d_419/StatefulPartitionedCallЂ"conv3d_420/StatefulPartitionedCallЂ"conv3d_421/StatefulPartitionedCallЂ"conv3d_422/StatefulPartitionedCallЂ"conv3d_423/StatefulPartitionedCallЂ"conv3d_424/StatefulPartitionedCallЂ"conv3d_425/StatefulPartitionedCallЂ"conv3d_426/StatefulPartitionedCallЂ"conv3d_427/StatefulPartitionedCallЂ"conv3d_428/StatefulPartitionedCallЂ"conv3d_429/StatefulPartitionedCallЂ"conv3d_430/StatefulPartitionedCallЂ"conv3d_431/StatefulPartitionedCallЂ+conv3d_transpose_60/StatefulPartitionedCallЂ+conv3d_transpose_61/StatefulPartitionedCallЂ+conv3d_transpose_62/StatefulPartitionedCallЂ+conv3d_transpose_63/StatefulPartitionedCallі
!zero_padding3d_15/PartitionedCallPartitionedCallinput_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_481950Ц
"conv3d_405/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_15/PartitionedCall:output:0conv3d_405_483888conv3d_405_483890*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_405_layer_call_and_return_conditional_losses_482225Ч
"conv3d_406/StatefulPartitionedCallStatefulPartitionedCall+conv3d_405/StatefulPartitionedCall:output:0conv3d_406_483893conv3d_406_483895*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_406_layer_call_and_return_conditional_losses_482242
 max_pooling3d_60/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_481962Х
"conv3d_407/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_60/PartitionedCall:output:0conv3d_407_483899conv3d_407_483901*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_407_layer_call_and_return_conditional_losses_482260Ч
"conv3d_408/StatefulPartitionedCallStatefulPartitionedCall+conv3d_407/StatefulPartitionedCall:output:0conv3d_408_483904conv3d_408_483906*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_408_layer_call_and_return_conditional_losses_482277
 max_pooling3d_61/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_481974Х
"conv3d_409/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_61/PartitionedCall:output:0conv3d_409_483910conv3d_409_483912*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_409_layer_call_and_return_conditional_losses_482295Ч
"conv3d_410/StatefulPartitionedCallStatefulPartitionedCall+conv3d_409/StatefulPartitionedCall:output:0conv3d_410_483915conv3d_410_483917*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_410_layer_call_and_return_conditional_losses_482312
 max_pooling3d_62/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_481986Ц
"conv3d_411/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_62/PartitionedCall:output:0conv3d_411_483921conv3d_411_483923*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_411_layer_call_and_return_conditional_losses_482330Ш
"conv3d_412/StatefulPartitionedCallStatefulPartitionedCall+conv3d_411/StatefulPartitionedCall:output:0conv3d_412_483926conv3d_412_483928*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_412_layer_call_and_return_conditional_losses_482347
 max_pooling3d_63/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_481998Ц
"conv3d_413/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_63/PartitionedCall:output:0conv3d_413_483932conv3d_413_483934*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_413_layer_call_and_return_conditional_losses_482365Ш
"conv3d_414/StatefulPartitionedCallStatefulPartitionedCall+conv3d_413/StatefulPartitionedCall:output:0conv3d_414_483937conv3d_414_483939*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_414_layer_call_and_return_conditional_losses_482382ь
+conv3d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall+conv3d_414/StatefulPartitionedCall:output:0conv3d_transpose_60_483942conv3d_transpose_60_483944*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_482046б
"conv3d_415/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_60/StatefulPartitionedCall:output:0conv3d_415_483947conv3d_415_483949*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_415_layer_call_and_return_conditional_losses_482404Т
concatenate_60/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0+conv3d_415/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_60_layer_call_and_return_conditional_losses_482417Ф
"conv3d_416/StatefulPartitionedCallStatefulPartitionedCall'concatenate_60/PartitionedCall:output:0conv3d_416_483953conv3d_416_483955*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_416_layer_call_and_return_conditional_losses_482430Ш
"conv3d_417/StatefulPartitionedCallStatefulPartitionedCall+conv3d_416/StatefulPartitionedCall:output:0conv3d_417_483958conv3d_417_483960*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_417_layer_call_and_return_conditional_losses_482447Ш
"conv3d_418/StatefulPartitionedCallStatefulPartitionedCall+conv3d_417/StatefulPartitionedCall:output:0conv3d_418_483963conv3d_418_483965*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_418_layer_call_and_return_conditional_losses_482464ы
+conv3d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall+conv3d_418/StatefulPartitionedCall:output:0conv3d_transpose_61_483968conv3d_transpose_61_483970*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_482092а
"conv3d_419/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_61/StatefulPartitionedCall:output:0conv3d_419_483973conv3d_419_483975*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_419_layer_call_and_return_conditional_losses_482486Т
concatenate_61/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0+conv3d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_61_layer_call_and_return_conditional_losses_482499У
"conv3d_420/StatefulPartitionedCallStatefulPartitionedCall'concatenate_61/PartitionedCall:output:0conv3d_420_483979conv3d_420_483981*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_420_layer_call_and_return_conditional_losses_482512Ч
"conv3d_421/StatefulPartitionedCallStatefulPartitionedCall+conv3d_420/StatefulPartitionedCall:output:0conv3d_421_483984conv3d_421_483986*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_421_layer_call_and_return_conditional_losses_482529Ч
"conv3d_422/StatefulPartitionedCallStatefulPartitionedCall+conv3d_421/StatefulPartitionedCall:output:0conv3d_422_483989conv3d_422_483991*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_422_layer_call_and_return_conditional_losses_482546ы
+conv3d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall+conv3d_422/StatefulPartitionedCall:output:0conv3d_transpose_62_483994conv3d_transpose_62_483996*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_482138а
"conv3d_423/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_62/StatefulPartitionedCall:output:0conv3d_423_483999conv3d_423_484001*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_423_layer_call_and_return_conditional_losses_482568С
concatenate_62/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0+conv3d_423/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_62_layer_call_and_return_conditional_losses_482581У
"conv3d_424/StatefulPartitionedCallStatefulPartitionedCall'concatenate_62/PartitionedCall:output:0conv3d_424_484005conv3d_424_484007*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_424_layer_call_and_return_conditional_losses_482594Ч
"conv3d_425/StatefulPartitionedCallStatefulPartitionedCall+conv3d_424/StatefulPartitionedCall:output:0conv3d_425_484010conv3d_425_484012*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_425_layer_call_and_return_conditional_losses_482611Ч
"conv3d_426/StatefulPartitionedCallStatefulPartitionedCall+conv3d_425/StatefulPartitionedCall:output:0conv3d_426_484015conv3d_426_484017*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_426_layer_call_and_return_conditional_losses_482628ы
+conv3d_transpose_63/StatefulPartitionedCallStatefulPartitionedCall+conv3d_426/StatefulPartitionedCall:output:0conv3d_transpose_63_484020conv3d_transpose_63_484022*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_482184а
"conv3d_427/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_63/StatefulPartitionedCall:output:0conv3d_427_484025conv3d_427_484027*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_427_layer_call_and_return_conditional_losses_482650С
concatenate_63/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0+conv3d_427/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_63_layer_call_and_return_conditional_losses_482663У
"conv3d_428/StatefulPartitionedCallStatefulPartitionedCall'concatenate_63/PartitionedCall:output:0conv3d_428_484031conv3d_428_484033*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_428_layer_call_and_return_conditional_losses_482676Ч
"conv3d_429/StatefulPartitionedCallStatefulPartitionedCall+conv3d_428/StatefulPartitionedCall:output:0conv3d_429_484036conv3d_429_484038*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_429_layer_call_and_return_conditional_losses_482693Ч
"conv3d_430/StatefulPartitionedCallStatefulPartitionedCall+conv3d_429/StatefulPartitionedCall:output:0conv3d_430_484041conv3d_430_484043*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_430_layer_call_and_return_conditional_losses_482710
cropping3d_15/PartitionedCallPartitionedCall+conv3d_430/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_482203Т
"conv3d_431/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_15/PartitionedCall:output:0conv3d_431_484047conv3d_431_484049*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_431_layer_call_and_return_conditional_losses_482727Ё
IdentityIdentity+conv3d_431/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_405/StatefulPartitionedCall#^conv3d_406/StatefulPartitionedCall#^conv3d_407/StatefulPartitionedCall#^conv3d_408/StatefulPartitionedCall#^conv3d_409/StatefulPartitionedCall#^conv3d_410/StatefulPartitionedCall#^conv3d_411/StatefulPartitionedCall#^conv3d_412/StatefulPartitionedCall#^conv3d_413/StatefulPartitionedCall#^conv3d_414/StatefulPartitionedCall#^conv3d_415/StatefulPartitionedCall#^conv3d_416/StatefulPartitionedCall#^conv3d_417/StatefulPartitionedCall#^conv3d_418/StatefulPartitionedCall#^conv3d_419/StatefulPartitionedCall#^conv3d_420/StatefulPartitionedCall#^conv3d_421/StatefulPartitionedCall#^conv3d_422/StatefulPartitionedCall#^conv3d_423/StatefulPartitionedCall#^conv3d_424/StatefulPartitionedCall#^conv3d_425/StatefulPartitionedCall#^conv3d_426/StatefulPartitionedCall#^conv3d_427/StatefulPartitionedCall#^conv3d_428/StatefulPartitionedCall#^conv3d_429/StatefulPartitionedCall#^conv3d_430/StatefulPartitionedCall#^conv3d_431/StatefulPartitionedCall,^conv3d_transpose_60/StatefulPartitionedCall,^conv3d_transpose_61/StatefulPartitionedCall,^conv3d_transpose_62/StatefulPartitionedCall,^conv3d_transpose_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_405/StatefulPartitionedCall"conv3d_405/StatefulPartitionedCall2H
"conv3d_406/StatefulPartitionedCall"conv3d_406/StatefulPartitionedCall2H
"conv3d_407/StatefulPartitionedCall"conv3d_407/StatefulPartitionedCall2H
"conv3d_408/StatefulPartitionedCall"conv3d_408/StatefulPartitionedCall2H
"conv3d_409/StatefulPartitionedCall"conv3d_409/StatefulPartitionedCall2H
"conv3d_410/StatefulPartitionedCall"conv3d_410/StatefulPartitionedCall2H
"conv3d_411/StatefulPartitionedCall"conv3d_411/StatefulPartitionedCall2H
"conv3d_412/StatefulPartitionedCall"conv3d_412/StatefulPartitionedCall2H
"conv3d_413/StatefulPartitionedCall"conv3d_413/StatefulPartitionedCall2H
"conv3d_414/StatefulPartitionedCall"conv3d_414/StatefulPartitionedCall2H
"conv3d_415/StatefulPartitionedCall"conv3d_415/StatefulPartitionedCall2H
"conv3d_416/StatefulPartitionedCall"conv3d_416/StatefulPartitionedCall2H
"conv3d_417/StatefulPartitionedCall"conv3d_417/StatefulPartitionedCall2H
"conv3d_418/StatefulPartitionedCall"conv3d_418/StatefulPartitionedCall2H
"conv3d_419/StatefulPartitionedCall"conv3d_419/StatefulPartitionedCall2H
"conv3d_420/StatefulPartitionedCall"conv3d_420/StatefulPartitionedCall2H
"conv3d_421/StatefulPartitionedCall"conv3d_421/StatefulPartitionedCall2H
"conv3d_422/StatefulPartitionedCall"conv3d_422/StatefulPartitionedCall2H
"conv3d_423/StatefulPartitionedCall"conv3d_423/StatefulPartitionedCall2H
"conv3d_424/StatefulPartitionedCall"conv3d_424/StatefulPartitionedCall2H
"conv3d_425/StatefulPartitionedCall"conv3d_425/StatefulPartitionedCall2H
"conv3d_426/StatefulPartitionedCall"conv3d_426/StatefulPartitionedCall2H
"conv3d_427/StatefulPartitionedCall"conv3d_427/StatefulPartitionedCall2H
"conv3d_428/StatefulPartitionedCall"conv3d_428/StatefulPartitionedCall2H
"conv3d_429/StatefulPartitionedCall"conv3d_429/StatefulPartitionedCall2H
"conv3d_430/StatefulPartitionedCall"conv3d_430/StatefulPartitionedCall2H
"conv3d_431/StatefulPartitionedCall"conv3d_431/StatefulPartitionedCall2Z
+conv3d_transpose_60/StatefulPartitionedCall+conv3d_transpose_60/StatefulPartitionedCall2Z
+conv3d_transpose_61/StatefulPartitionedCall+conv3d_transpose_61/StatefulPartitionedCall2Z
+conv3d_transpose_62/StatefulPartitionedCall+conv3d_transpose_62/StatefulPartitionedCall2Z
+conv3d_transpose_63/StatefulPartitionedCall+conv3d_transpose_63/StatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_16
	
А
4__inference_conv3d_transpose_60_layer_call_fn_485388

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_482046
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
г

F__inference_conv3d_411_layer_call_and_return_conditional_losses_482330

inputs=
conv3d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

F__inference_conv3d_429_layer_call_and_return_conditional_losses_482693

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_409_layer_call_and_return_conditional_losses_482295

inputs<
conv3d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: @*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Љ
t
J__inference_concatenate_61_layer_call_and_return_conditional_losses_482499

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:vr
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

F__inference_conv3d_408_layer_call_and_return_conditional_losses_485229

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_430_layer_call_fn_485922

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_430_layer_call_and_return_conditional_losses_482710
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
њ
ОS
__inference__traced_save_486573
file_prefix0
,savev2_conv3d_405_kernel_read_readvariableop.
*savev2_conv3d_405_bias_read_readvariableop0
,savev2_conv3d_406_kernel_read_readvariableop.
*savev2_conv3d_406_bias_read_readvariableop0
,savev2_conv3d_407_kernel_read_readvariableop.
*savev2_conv3d_407_bias_read_readvariableop0
,savev2_conv3d_408_kernel_read_readvariableop.
*savev2_conv3d_408_bias_read_readvariableop0
,savev2_conv3d_409_kernel_read_readvariableop.
*savev2_conv3d_409_bias_read_readvariableop0
,savev2_conv3d_410_kernel_read_readvariableop.
*savev2_conv3d_410_bias_read_readvariableop0
,savev2_conv3d_411_kernel_read_readvariableop.
*savev2_conv3d_411_bias_read_readvariableop0
,savev2_conv3d_412_kernel_read_readvariableop.
*savev2_conv3d_412_bias_read_readvariableop0
,savev2_conv3d_413_kernel_read_readvariableop.
*savev2_conv3d_413_bias_read_readvariableop0
,savev2_conv3d_414_kernel_read_readvariableop.
*savev2_conv3d_414_bias_read_readvariableop9
5savev2_conv3d_transpose_60_kernel_read_readvariableop7
3savev2_conv3d_transpose_60_bias_read_readvariableop0
,savev2_conv3d_415_kernel_read_readvariableop.
*savev2_conv3d_415_bias_read_readvariableop0
,savev2_conv3d_416_kernel_read_readvariableop.
*savev2_conv3d_416_bias_read_readvariableop0
,savev2_conv3d_417_kernel_read_readvariableop.
*savev2_conv3d_417_bias_read_readvariableop0
,savev2_conv3d_418_kernel_read_readvariableop.
*savev2_conv3d_418_bias_read_readvariableop9
5savev2_conv3d_transpose_61_kernel_read_readvariableop7
3savev2_conv3d_transpose_61_bias_read_readvariableop0
,savev2_conv3d_419_kernel_read_readvariableop.
*savev2_conv3d_419_bias_read_readvariableop0
,savev2_conv3d_420_kernel_read_readvariableop.
*savev2_conv3d_420_bias_read_readvariableop0
,savev2_conv3d_421_kernel_read_readvariableop.
*savev2_conv3d_421_bias_read_readvariableop0
,savev2_conv3d_422_kernel_read_readvariableop.
*savev2_conv3d_422_bias_read_readvariableop9
5savev2_conv3d_transpose_62_kernel_read_readvariableop7
3savev2_conv3d_transpose_62_bias_read_readvariableop0
,savev2_conv3d_423_kernel_read_readvariableop.
*savev2_conv3d_423_bias_read_readvariableop0
,savev2_conv3d_424_kernel_read_readvariableop.
*savev2_conv3d_424_bias_read_readvariableop0
,savev2_conv3d_425_kernel_read_readvariableop.
*savev2_conv3d_425_bias_read_readvariableop0
,savev2_conv3d_426_kernel_read_readvariableop.
*savev2_conv3d_426_bias_read_readvariableop9
5savev2_conv3d_transpose_63_kernel_read_readvariableop7
3savev2_conv3d_transpose_63_bias_read_readvariableop0
,savev2_conv3d_427_kernel_read_readvariableop.
*savev2_conv3d_427_bias_read_readvariableop0
,savev2_conv3d_428_kernel_read_readvariableop.
*savev2_conv3d_428_bias_read_readvariableop0
,savev2_conv3d_429_kernel_read_readvariableop.
*savev2_conv3d_429_bias_read_readvariableop0
,savev2_conv3d_430_kernel_read_readvariableop.
*savev2_conv3d_430_bias_read_readvariableop0
,savev2_conv3d_431_kernel_read_readvariableop.
*savev2_conv3d_431_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv3d_405_kernel_m_read_readvariableop5
1savev2_adam_conv3d_405_bias_m_read_readvariableop7
3savev2_adam_conv3d_406_kernel_m_read_readvariableop5
1savev2_adam_conv3d_406_bias_m_read_readvariableop7
3savev2_adam_conv3d_407_kernel_m_read_readvariableop5
1savev2_adam_conv3d_407_bias_m_read_readvariableop7
3savev2_adam_conv3d_408_kernel_m_read_readvariableop5
1savev2_adam_conv3d_408_bias_m_read_readvariableop7
3savev2_adam_conv3d_409_kernel_m_read_readvariableop5
1savev2_adam_conv3d_409_bias_m_read_readvariableop7
3savev2_adam_conv3d_410_kernel_m_read_readvariableop5
1savev2_adam_conv3d_410_bias_m_read_readvariableop7
3savev2_adam_conv3d_411_kernel_m_read_readvariableop5
1savev2_adam_conv3d_411_bias_m_read_readvariableop7
3savev2_adam_conv3d_412_kernel_m_read_readvariableop5
1savev2_adam_conv3d_412_bias_m_read_readvariableop7
3savev2_adam_conv3d_413_kernel_m_read_readvariableop5
1savev2_adam_conv3d_413_bias_m_read_readvariableop7
3savev2_adam_conv3d_414_kernel_m_read_readvariableop5
1savev2_adam_conv3d_414_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_60_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_60_bias_m_read_readvariableop7
3savev2_adam_conv3d_415_kernel_m_read_readvariableop5
1savev2_adam_conv3d_415_bias_m_read_readvariableop7
3savev2_adam_conv3d_416_kernel_m_read_readvariableop5
1savev2_adam_conv3d_416_bias_m_read_readvariableop7
3savev2_adam_conv3d_417_kernel_m_read_readvariableop5
1savev2_adam_conv3d_417_bias_m_read_readvariableop7
3savev2_adam_conv3d_418_kernel_m_read_readvariableop5
1savev2_adam_conv3d_418_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_61_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_61_bias_m_read_readvariableop7
3savev2_adam_conv3d_419_kernel_m_read_readvariableop5
1savev2_adam_conv3d_419_bias_m_read_readvariableop7
3savev2_adam_conv3d_420_kernel_m_read_readvariableop5
1savev2_adam_conv3d_420_bias_m_read_readvariableop7
3savev2_adam_conv3d_421_kernel_m_read_readvariableop5
1savev2_adam_conv3d_421_bias_m_read_readvariableop7
3savev2_adam_conv3d_422_kernel_m_read_readvariableop5
1savev2_adam_conv3d_422_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_62_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_62_bias_m_read_readvariableop7
3savev2_adam_conv3d_423_kernel_m_read_readvariableop5
1savev2_adam_conv3d_423_bias_m_read_readvariableop7
3savev2_adam_conv3d_424_kernel_m_read_readvariableop5
1savev2_adam_conv3d_424_bias_m_read_readvariableop7
3savev2_adam_conv3d_425_kernel_m_read_readvariableop5
1savev2_adam_conv3d_425_bias_m_read_readvariableop7
3savev2_adam_conv3d_426_kernel_m_read_readvariableop5
1savev2_adam_conv3d_426_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_63_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_63_bias_m_read_readvariableop7
3savev2_adam_conv3d_427_kernel_m_read_readvariableop5
1savev2_adam_conv3d_427_bias_m_read_readvariableop7
3savev2_adam_conv3d_428_kernel_m_read_readvariableop5
1savev2_adam_conv3d_428_bias_m_read_readvariableop7
3savev2_adam_conv3d_429_kernel_m_read_readvariableop5
1savev2_adam_conv3d_429_bias_m_read_readvariableop7
3savev2_adam_conv3d_430_kernel_m_read_readvariableop5
1savev2_adam_conv3d_430_bias_m_read_readvariableop7
3savev2_adam_conv3d_431_kernel_m_read_readvariableop5
1savev2_adam_conv3d_431_bias_m_read_readvariableop7
3savev2_adam_conv3d_405_kernel_v_read_readvariableop5
1savev2_adam_conv3d_405_bias_v_read_readvariableop7
3savev2_adam_conv3d_406_kernel_v_read_readvariableop5
1savev2_adam_conv3d_406_bias_v_read_readvariableop7
3savev2_adam_conv3d_407_kernel_v_read_readvariableop5
1savev2_adam_conv3d_407_bias_v_read_readvariableop7
3savev2_adam_conv3d_408_kernel_v_read_readvariableop5
1savev2_adam_conv3d_408_bias_v_read_readvariableop7
3savev2_adam_conv3d_409_kernel_v_read_readvariableop5
1savev2_adam_conv3d_409_bias_v_read_readvariableop7
3savev2_adam_conv3d_410_kernel_v_read_readvariableop5
1savev2_adam_conv3d_410_bias_v_read_readvariableop7
3savev2_adam_conv3d_411_kernel_v_read_readvariableop5
1savev2_adam_conv3d_411_bias_v_read_readvariableop7
3savev2_adam_conv3d_412_kernel_v_read_readvariableop5
1savev2_adam_conv3d_412_bias_v_read_readvariableop7
3savev2_adam_conv3d_413_kernel_v_read_readvariableop5
1savev2_adam_conv3d_413_bias_v_read_readvariableop7
3savev2_adam_conv3d_414_kernel_v_read_readvariableop5
1savev2_adam_conv3d_414_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_60_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_60_bias_v_read_readvariableop7
3savev2_adam_conv3d_415_kernel_v_read_readvariableop5
1savev2_adam_conv3d_415_bias_v_read_readvariableop7
3savev2_adam_conv3d_416_kernel_v_read_readvariableop5
1savev2_adam_conv3d_416_bias_v_read_readvariableop7
3savev2_adam_conv3d_417_kernel_v_read_readvariableop5
1savev2_adam_conv3d_417_bias_v_read_readvariableop7
3savev2_adam_conv3d_418_kernel_v_read_readvariableop5
1savev2_adam_conv3d_418_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_61_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_61_bias_v_read_readvariableop7
3savev2_adam_conv3d_419_kernel_v_read_readvariableop5
1savev2_adam_conv3d_419_bias_v_read_readvariableop7
3savev2_adam_conv3d_420_kernel_v_read_readvariableop5
1savev2_adam_conv3d_420_bias_v_read_readvariableop7
3savev2_adam_conv3d_421_kernel_v_read_readvariableop5
1savev2_adam_conv3d_421_bias_v_read_readvariableop7
3savev2_adam_conv3d_422_kernel_v_read_readvariableop5
1savev2_adam_conv3d_422_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_62_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_62_bias_v_read_readvariableop7
3savev2_adam_conv3d_423_kernel_v_read_readvariableop5
1savev2_adam_conv3d_423_bias_v_read_readvariableop7
3savev2_adam_conv3d_424_kernel_v_read_readvariableop5
1savev2_adam_conv3d_424_bias_v_read_readvariableop7
3savev2_adam_conv3d_425_kernel_v_read_readvariableop5
1savev2_adam_conv3d_425_bias_v_read_readvariableop7
3savev2_adam_conv3d_426_kernel_v_read_readvariableop5
1savev2_adam_conv3d_426_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_63_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_63_bias_v_read_readvariableop7
3savev2_adam_conv3d_427_kernel_v_read_readvariableop5
1savev2_adam_conv3d_427_bias_v_read_readvariableop7
3savev2_adam_conv3d_428_kernel_v_read_readvariableop5
1savev2_adam_conv3d_428_bias_v_read_readvariableop7
3savev2_adam_conv3d_429_kernel_v_read_readvariableop5
1savev2_adam_conv3d_429_bias_v_read_readvariableop7
3savev2_adam_conv3d_430_kernel_v_read_readvariableop5
1savev2_adam_conv3d_430_bias_v_read_readvariableop7
3savev2_adam_conv3d_431_kernel_v_read_readvariableop5
1savev2_adam_conv3d_431_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Эp
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:Ф*
dtype0*ѕo
valueыoBшoФB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHњ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:Ф*
dtype0*
valueBФB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B НO
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_405_kernel_read_readvariableop*savev2_conv3d_405_bias_read_readvariableop,savev2_conv3d_406_kernel_read_readvariableop*savev2_conv3d_406_bias_read_readvariableop,savev2_conv3d_407_kernel_read_readvariableop*savev2_conv3d_407_bias_read_readvariableop,savev2_conv3d_408_kernel_read_readvariableop*savev2_conv3d_408_bias_read_readvariableop,savev2_conv3d_409_kernel_read_readvariableop*savev2_conv3d_409_bias_read_readvariableop,savev2_conv3d_410_kernel_read_readvariableop*savev2_conv3d_410_bias_read_readvariableop,savev2_conv3d_411_kernel_read_readvariableop*savev2_conv3d_411_bias_read_readvariableop,savev2_conv3d_412_kernel_read_readvariableop*savev2_conv3d_412_bias_read_readvariableop,savev2_conv3d_413_kernel_read_readvariableop*savev2_conv3d_413_bias_read_readvariableop,savev2_conv3d_414_kernel_read_readvariableop*savev2_conv3d_414_bias_read_readvariableop5savev2_conv3d_transpose_60_kernel_read_readvariableop3savev2_conv3d_transpose_60_bias_read_readvariableop,savev2_conv3d_415_kernel_read_readvariableop*savev2_conv3d_415_bias_read_readvariableop,savev2_conv3d_416_kernel_read_readvariableop*savev2_conv3d_416_bias_read_readvariableop,savev2_conv3d_417_kernel_read_readvariableop*savev2_conv3d_417_bias_read_readvariableop,savev2_conv3d_418_kernel_read_readvariableop*savev2_conv3d_418_bias_read_readvariableop5savev2_conv3d_transpose_61_kernel_read_readvariableop3savev2_conv3d_transpose_61_bias_read_readvariableop,savev2_conv3d_419_kernel_read_readvariableop*savev2_conv3d_419_bias_read_readvariableop,savev2_conv3d_420_kernel_read_readvariableop*savev2_conv3d_420_bias_read_readvariableop,savev2_conv3d_421_kernel_read_readvariableop*savev2_conv3d_421_bias_read_readvariableop,savev2_conv3d_422_kernel_read_readvariableop*savev2_conv3d_422_bias_read_readvariableop5savev2_conv3d_transpose_62_kernel_read_readvariableop3savev2_conv3d_transpose_62_bias_read_readvariableop,savev2_conv3d_423_kernel_read_readvariableop*savev2_conv3d_423_bias_read_readvariableop,savev2_conv3d_424_kernel_read_readvariableop*savev2_conv3d_424_bias_read_readvariableop,savev2_conv3d_425_kernel_read_readvariableop*savev2_conv3d_425_bias_read_readvariableop,savev2_conv3d_426_kernel_read_readvariableop*savev2_conv3d_426_bias_read_readvariableop5savev2_conv3d_transpose_63_kernel_read_readvariableop3savev2_conv3d_transpose_63_bias_read_readvariableop,savev2_conv3d_427_kernel_read_readvariableop*savev2_conv3d_427_bias_read_readvariableop,savev2_conv3d_428_kernel_read_readvariableop*savev2_conv3d_428_bias_read_readvariableop,savev2_conv3d_429_kernel_read_readvariableop*savev2_conv3d_429_bias_read_readvariableop,savev2_conv3d_430_kernel_read_readvariableop*savev2_conv3d_430_bias_read_readvariableop,savev2_conv3d_431_kernel_read_readvariableop*savev2_conv3d_431_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv3d_405_kernel_m_read_readvariableop1savev2_adam_conv3d_405_bias_m_read_readvariableop3savev2_adam_conv3d_406_kernel_m_read_readvariableop1savev2_adam_conv3d_406_bias_m_read_readvariableop3savev2_adam_conv3d_407_kernel_m_read_readvariableop1savev2_adam_conv3d_407_bias_m_read_readvariableop3savev2_adam_conv3d_408_kernel_m_read_readvariableop1savev2_adam_conv3d_408_bias_m_read_readvariableop3savev2_adam_conv3d_409_kernel_m_read_readvariableop1savev2_adam_conv3d_409_bias_m_read_readvariableop3savev2_adam_conv3d_410_kernel_m_read_readvariableop1savev2_adam_conv3d_410_bias_m_read_readvariableop3savev2_adam_conv3d_411_kernel_m_read_readvariableop1savev2_adam_conv3d_411_bias_m_read_readvariableop3savev2_adam_conv3d_412_kernel_m_read_readvariableop1savev2_adam_conv3d_412_bias_m_read_readvariableop3savev2_adam_conv3d_413_kernel_m_read_readvariableop1savev2_adam_conv3d_413_bias_m_read_readvariableop3savev2_adam_conv3d_414_kernel_m_read_readvariableop1savev2_adam_conv3d_414_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_60_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_60_bias_m_read_readvariableop3savev2_adam_conv3d_415_kernel_m_read_readvariableop1savev2_adam_conv3d_415_bias_m_read_readvariableop3savev2_adam_conv3d_416_kernel_m_read_readvariableop1savev2_adam_conv3d_416_bias_m_read_readvariableop3savev2_adam_conv3d_417_kernel_m_read_readvariableop1savev2_adam_conv3d_417_bias_m_read_readvariableop3savev2_adam_conv3d_418_kernel_m_read_readvariableop1savev2_adam_conv3d_418_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_61_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_61_bias_m_read_readvariableop3savev2_adam_conv3d_419_kernel_m_read_readvariableop1savev2_adam_conv3d_419_bias_m_read_readvariableop3savev2_adam_conv3d_420_kernel_m_read_readvariableop1savev2_adam_conv3d_420_bias_m_read_readvariableop3savev2_adam_conv3d_421_kernel_m_read_readvariableop1savev2_adam_conv3d_421_bias_m_read_readvariableop3savev2_adam_conv3d_422_kernel_m_read_readvariableop1savev2_adam_conv3d_422_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_62_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_62_bias_m_read_readvariableop3savev2_adam_conv3d_423_kernel_m_read_readvariableop1savev2_adam_conv3d_423_bias_m_read_readvariableop3savev2_adam_conv3d_424_kernel_m_read_readvariableop1savev2_adam_conv3d_424_bias_m_read_readvariableop3savev2_adam_conv3d_425_kernel_m_read_readvariableop1savev2_adam_conv3d_425_bias_m_read_readvariableop3savev2_adam_conv3d_426_kernel_m_read_readvariableop1savev2_adam_conv3d_426_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_63_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_63_bias_m_read_readvariableop3savev2_adam_conv3d_427_kernel_m_read_readvariableop1savev2_adam_conv3d_427_bias_m_read_readvariableop3savev2_adam_conv3d_428_kernel_m_read_readvariableop1savev2_adam_conv3d_428_bias_m_read_readvariableop3savev2_adam_conv3d_429_kernel_m_read_readvariableop1savev2_adam_conv3d_429_bias_m_read_readvariableop3savev2_adam_conv3d_430_kernel_m_read_readvariableop1savev2_adam_conv3d_430_bias_m_read_readvariableop3savev2_adam_conv3d_431_kernel_m_read_readvariableop1savev2_adam_conv3d_431_bias_m_read_readvariableop3savev2_adam_conv3d_405_kernel_v_read_readvariableop1savev2_adam_conv3d_405_bias_v_read_readvariableop3savev2_adam_conv3d_406_kernel_v_read_readvariableop1savev2_adam_conv3d_406_bias_v_read_readvariableop3savev2_adam_conv3d_407_kernel_v_read_readvariableop1savev2_adam_conv3d_407_bias_v_read_readvariableop3savev2_adam_conv3d_408_kernel_v_read_readvariableop1savev2_adam_conv3d_408_bias_v_read_readvariableop3savev2_adam_conv3d_409_kernel_v_read_readvariableop1savev2_adam_conv3d_409_bias_v_read_readvariableop3savev2_adam_conv3d_410_kernel_v_read_readvariableop1savev2_adam_conv3d_410_bias_v_read_readvariableop3savev2_adam_conv3d_411_kernel_v_read_readvariableop1savev2_adam_conv3d_411_bias_v_read_readvariableop3savev2_adam_conv3d_412_kernel_v_read_readvariableop1savev2_adam_conv3d_412_bias_v_read_readvariableop3savev2_adam_conv3d_413_kernel_v_read_readvariableop1savev2_adam_conv3d_413_bias_v_read_readvariableop3savev2_adam_conv3d_414_kernel_v_read_readvariableop1savev2_adam_conv3d_414_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_60_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_60_bias_v_read_readvariableop3savev2_adam_conv3d_415_kernel_v_read_readvariableop1savev2_adam_conv3d_415_bias_v_read_readvariableop3savev2_adam_conv3d_416_kernel_v_read_readvariableop1savev2_adam_conv3d_416_bias_v_read_readvariableop3savev2_adam_conv3d_417_kernel_v_read_readvariableop1savev2_adam_conv3d_417_bias_v_read_readvariableop3savev2_adam_conv3d_418_kernel_v_read_readvariableop1savev2_adam_conv3d_418_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_61_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_61_bias_v_read_readvariableop3savev2_adam_conv3d_419_kernel_v_read_readvariableop1savev2_adam_conv3d_419_bias_v_read_readvariableop3savev2_adam_conv3d_420_kernel_v_read_readvariableop1savev2_adam_conv3d_420_bias_v_read_readvariableop3savev2_adam_conv3d_421_kernel_v_read_readvariableop1savev2_adam_conv3d_421_bias_v_read_readvariableop3savev2_adam_conv3d_422_kernel_v_read_readvariableop1savev2_adam_conv3d_422_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_62_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_62_bias_v_read_readvariableop3savev2_adam_conv3d_423_kernel_v_read_readvariableop1savev2_adam_conv3d_423_bias_v_read_readvariableop3savev2_adam_conv3d_424_kernel_v_read_readvariableop1savev2_adam_conv3d_424_bias_v_read_readvariableop3savev2_adam_conv3d_425_kernel_v_read_readvariableop1savev2_adam_conv3d_425_bias_v_read_readvariableop3savev2_adam_conv3d_426_kernel_v_read_readvariableop1savev2_adam_conv3d_426_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_63_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_63_bias_v_read_readvariableop3savev2_adam_conv3d_427_kernel_v_read_readvariableop1savev2_adam_conv3d_427_bias_v_read_readvariableop3savev2_adam_conv3d_428_kernel_v_read_readvariableop1savev2_adam_conv3d_428_bias_v_read_readvariableop3savev2_adam_conv3d_429_kernel_v_read_readvariableop1savev2_adam_conv3d_429_bias_v_read_readvariableop3savev2_adam_conv3d_430_kernel_v_read_readvariableop1savev2_adam_conv3d_430_bias_v_read_readvariableop3savev2_adam_conv3d_431_kernel_v_read_readvariableop1savev2_adam_conv3d_431_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *е
dtypesЪ
Ч2Ф	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ћ
_input_shapes
: ::::: : :  : : @:@:@@:@:@::::::::::::::::::@:@:@@:@:@:@:@@:@:@@:@: @: :  : :@ : :  : :  : : :::: :::::::: : : : : : : : : ::::: : :  : : @:@:@@:@:@::::::::::::::::::@:@:@@:@:@:@:@@:@:@@:@: @: :  : :@ : :  : :  : : :::: :::::::::::: : :  : : @:@:@@:@:@::::::::::::::::::@:@:@@:@:@:@:@@:@:@@:@: @: :  : :@ : :  : :  : : :::: :::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
: : 

_output_shapes
: :0,
*
_output_shapes
:  : 

_output_shapes
: :0	,
*
_output_shapes
: @: 


_output_shapes
:@:0,
*
_output_shapes
:@@: 

_output_shapes
:@:1-
+
_output_shapes
:@:!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::1-
+
_output_shapes
:@:  

_output_shapes
:@:0!,
*
_output_shapes
:@@: "

_output_shapes
:@:1#-
+
_output_shapes
:@: $

_output_shapes
:@:0%,
*
_output_shapes
:@@: &

_output_shapes
:@:0',
*
_output_shapes
:@@: (

_output_shapes
:@:0),
*
_output_shapes
: @: *

_output_shapes
: :0+,
*
_output_shapes
:  : ,

_output_shapes
: :0-,
*
_output_shapes
:@ : .

_output_shapes
: :0/,
*
_output_shapes
:  : 0

_output_shapes
: :01,
*
_output_shapes
:  : 2

_output_shapes
: :03,
*
_output_shapes
: : 4

_output_shapes
::05,
*
_output_shapes
:: 6

_output_shapes
::07,
*
_output_shapes
: : 8

_output_shapes
::09,
*
_output_shapes
:: :

_output_shapes
::0;,
*
_output_shapes
:: <

_output_shapes
::0=,
*
_output_shapes
:: >

_output_shapes
::?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :0H,
*
_output_shapes
:: I

_output_shapes
::0J,
*
_output_shapes
:: K

_output_shapes
::0L,
*
_output_shapes
: : M

_output_shapes
: :0N,
*
_output_shapes
:  : O

_output_shapes
: :0P,
*
_output_shapes
: @: Q

_output_shapes
:@:0R,
*
_output_shapes
:@@: S

_output_shapes
:@:1T-
+
_output_shapes
:@:!U

_output_shapes	
::2V.
,
_output_shapes
::!W

_output_shapes	
::2X.
,
_output_shapes
::!Y

_output_shapes	
::2Z.
,
_output_shapes
::![

_output_shapes	
::2\.
,
_output_shapes
::!]

_output_shapes	
::2^.
,
_output_shapes
::!_

_output_shapes	
::2`.
,
_output_shapes
::!a

_output_shapes	
::2b.
,
_output_shapes
::!c

_output_shapes	
::2d.
,
_output_shapes
::!e

_output_shapes	
::1f-
+
_output_shapes
:@: g

_output_shapes
:@:0h,
*
_output_shapes
:@@: i

_output_shapes
:@:1j-
+
_output_shapes
:@: k

_output_shapes
:@:0l,
*
_output_shapes
:@@: m

_output_shapes
:@:0n,
*
_output_shapes
:@@: o

_output_shapes
:@:0p,
*
_output_shapes
: @: q

_output_shapes
: :0r,
*
_output_shapes
:  : s

_output_shapes
: :0t,
*
_output_shapes
:@ : u

_output_shapes
: :0v,
*
_output_shapes
:  : w

_output_shapes
: :0x,
*
_output_shapes
:  : y

_output_shapes
: :0z,
*
_output_shapes
: : {

_output_shapes
::0|,
*
_output_shapes
:: }

_output_shapes
::0~,
*
_output_shapes
: : 

_output_shapes
::1,
*
_output_shapes
::!

_output_shapes
::1,
*
_output_shapes
::!

_output_shapes
::1,
*
_output_shapes
::!

_output_shapes
::1,
*
_output_shapes
::!

_output_shapes
::1,
*
_output_shapes
::!

_output_shapes
::1,
*
_output_shapes
: :!

_output_shapes
: :1,
*
_output_shapes
:  :!

_output_shapes
: :1,
*
_output_shapes
: @:!

_output_shapes
:@:1,
*
_output_shapes
:@@:!

_output_shapes
:@:2-
+
_output_shapes
:@:"

_output_shapes	
::3.
,
_output_shapes
::"

_output_shapes	
::3.
,
_output_shapes
::"

_output_shapes	
::3.
,
_output_shapes
::"

_output_shapes	
::3.
,
_output_shapes
::"

_output_shapes	
::3.
,
_output_shapes
::"

_output_shapes	
::3.
,
_output_shapes
::"

_output_shapes	
::3 .
,
_output_shapes
::"Ё

_output_shapes	
::3Ђ.
,
_output_shapes
::"Ѓ

_output_shapes	
::2Є-
+
_output_shapes
:@:!Ѕ

_output_shapes
:@:1І,
*
_output_shapes
:@@:!Ї

_output_shapes
:@:2Ј-
+
_output_shapes
:@:!Љ

_output_shapes
:@:1Њ,
*
_output_shapes
:@@:!Ћ

_output_shapes
:@:1Ќ,
*
_output_shapes
:@@:!­

_output_shapes
:@:1Ў,
*
_output_shapes
: @:!Џ

_output_shapes
: :1А,
*
_output_shapes
:  :!Б

_output_shapes
: :1В,
*
_output_shapes
:@ :!Г

_output_shapes
: :1Д,
*
_output_shapes
:  :!Е

_output_shapes
: :1Ж,
*
_output_shapes
:  :!З

_output_shapes
: :1И,
*
_output_shapes
: :!Й

_output_shapes
::1К,
*
_output_shapes
::!Л

_output_shapes
::1М,
*
_output_shapes
: :!Н

_output_shapes
::1О,
*
_output_shapes
::!П

_output_shapes
::1Р,
*
_output_shapes
::!С

_output_shapes
::1Т,
*
_output_shapes
::!У

_output_shapes
::Ф

_output_shapes
: 
з

F__inference_conv3d_418_layer_call_and_return_conditional_losses_485522

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_419_layer_call_and_return_conditional_losses_485586

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

F__inference_conv3d_427_layer_call_and_return_conditional_losses_485860

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_422_layer_call_fn_485648

inputs%
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_422_layer_call_and_return_conditional_losses_482546
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_428_layer_call_fn_485882

inputs%
unknown: 
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_428_layer_call_and_return_conditional_losses_482676
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
к
h
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_485189

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_421_layer_call_fn_485628

inputs%
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_421_layer_call_and_return_conditional_losses_482529
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_429_layer_call_fn_485902

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_429_layer_call_and_return_conditional_losses_482693
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

[
/__inference_concatenate_63_layer_call_fn_485866
inputs_0
inputs_1
identityь
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_63_layer_call_and_return_conditional_losses_482663
IdentityIdentityPartitionedCall:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1
ђ
Є
+__inference_conv3d_406_layer_call_fn_485168

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_406_layer_call_and_return_conditional_losses_482242
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_417_layer_call_and_return_conditional_losses_482447

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_407_layer_call_and_return_conditional_losses_482260

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_416_layer_call_and_return_conditional_losses_485482

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
 
Њ
$__inference_signature_wrapper_485128
input_16%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3: 
	unknown_4: '
	unknown_5:  
	unknown_6: '
	unknown_7: @
	unknown_8:@'
	unknown_9:@@

unknown_10:@)

unknown_11:@

unknown_12:	*

unknown_13:

unknown_14:	*

unknown_15:

unknown_16:	*

unknown_17:

unknown_18:	*

unknown_19:

unknown_20:	*

unknown_21:

unknown_22:	*

unknown_23:

unknown_24:	*

unknown_25:

unknown_26:	*

unknown_27:

unknown_28:	)

unknown_29:@

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:@

unknown_34:@(

unknown_35:@@

unknown_36:@(

unknown_37:@@

unknown_38:@(

unknown_39: @

unknown_40: (

unknown_41:  

unknown_42: (

unknown_43:@ 

unknown_44: (

unknown_45:  

unknown_46: (

unknown_47:  

unknown_48: (

unknown_49: 

unknown_50:(

unknown_51:

unknown_52:(

unknown_53: 

unknown_54:(

unknown_55:

unknown_56:(

unknown_57:

unknown_58:(

unknown_59:

unknown_60:
identityЂStatefulPartitionedCallЁ	
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_481940
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_16
к
h
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_481986

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_406_layer_call_and_return_conditional_losses_485179

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_419_layer_call_fn_485575

inputs%
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_419_layer_call_and_return_conditional_losses_482486
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ї
t
J__inference_concatenate_63_layer_call_and_return_conditional_losses_482663

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:vr
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­
t
J__inference_concatenate_60_layer_call_and_return_conditional_losses_482417

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesx
v:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:ws
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_414_layer_call_and_return_conditional_losses_482382

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
e
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_482203

inputs
identityp
strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 r
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    r
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Й 
Џ
)__inference_model_15_layer_call_fn_483715
input_16%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3: 
	unknown_4: '
	unknown_5:  
	unknown_6: '
	unknown_7: @
	unknown_8:@'
	unknown_9:@@

unknown_10:@)

unknown_11:@

unknown_12:	*

unknown_13:

unknown_14:	*

unknown_15:

unknown_16:	*

unknown_17:

unknown_18:	*

unknown_19:

unknown_20:	*

unknown_21:

unknown_22:	*

unknown_23:

unknown_24:	*

unknown_25:

unknown_26:	*

unknown_27:

unknown_28:	)

unknown_29:@

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:@

unknown_34:@(

unknown_35:@@

unknown_36:@(

unknown_37:@@

unknown_38:@(

unknown_39: @

unknown_40: (

unknown_41:  

unknown_42: (

unknown_43:@ 

unknown_44: (

unknown_45:  

unknown_46: (

unknown_47:  

unknown_48: (

unknown_49: 

unknown_50:(

unknown_51:

unknown_52:(

unknown_53: 

unknown_54:(

unknown_55:

unknown_56:(

unknown_57:

unknown_58:(

unknown_59:

unknown_60:
identityЂStatefulPartitionedCallФ	
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_483459
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_16
Ы

F__inference_conv3d_429_layer_call_and_return_conditional_losses_485913

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

[
/__inference_concatenate_61_layer_call_fn_485592
inputs_0
inputs_1
identityэ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_61_layer_call_and_return_conditional_losses_482499
IdentityIdentityPartitionedCall:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/1
ђ
Є
+__inference_conv3d_427_layer_call_fn_485849

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_427_layer_call_and_return_conditional_losses_482650
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ыа
д
D__inference_model_15_layer_call_and_return_conditional_losses_482734

inputs/
conv3d_405_482226:
conv3d_405_482228:/
conv3d_406_482243:
conv3d_406_482245:/
conv3d_407_482261: 
conv3d_407_482263: /
conv3d_408_482278:  
conv3d_408_482280: /
conv3d_409_482296: @
conv3d_409_482298:@/
conv3d_410_482313:@@
conv3d_410_482315:@0
conv3d_411_482331:@ 
conv3d_411_482333:	1
conv3d_412_482348: 
conv3d_412_482350:	1
conv3d_413_482366: 
conv3d_413_482368:	1
conv3d_414_482383: 
conv3d_414_482385:	:
conv3d_transpose_60_482388:)
conv3d_transpose_60_482390:	1
conv3d_415_482405: 
conv3d_415_482407:	1
conv3d_416_482431: 
conv3d_416_482433:	1
conv3d_417_482448: 
conv3d_417_482450:	1
conv3d_418_482465: 
conv3d_418_482467:	9
conv3d_transpose_61_482470:@(
conv3d_transpose_61_482472:@/
conv3d_419_482487:@@
conv3d_419_482489:@0
conv3d_420_482513:@
conv3d_420_482515:@/
conv3d_421_482530:@@
conv3d_421_482532:@/
conv3d_422_482547:@@
conv3d_422_482549:@8
conv3d_transpose_62_482552: @(
conv3d_transpose_62_482554: /
conv3d_423_482569:  
conv3d_423_482571: /
conv3d_424_482595:@ 
conv3d_424_482597: /
conv3d_425_482612:  
conv3d_425_482614: /
conv3d_426_482629:  
conv3d_426_482631: 8
conv3d_transpose_63_482634: (
conv3d_transpose_63_482636:/
conv3d_427_482651:
conv3d_427_482653:/
conv3d_428_482677: 
conv3d_428_482679:/
conv3d_429_482694:
conv3d_429_482696:/
conv3d_430_482711:
conv3d_430_482713:/
conv3d_431_482728:
conv3d_431_482730:
identityЂ"conv3d_405/StatefulPartitionedCallЂ"conv3d_406/StatefulPartitionedCallЂ"conv3d_407/StatefulPartitionedCallЂ"conv3d_408/StatefulPartitionedCallЂ"conv3d_409/StatefulPartitionedCallЂ"conv3d_410/StatefulPartitionedCallЂ"conv3d_411/StatefulPartitionedCallЂ"conv3d_412/StatefulPartitionedCallЂ"conv3d_413/StatefulPartitionedCallЂ"conv3d_414/StatefulPartitionedCallЂ"conv3d_415/StatefulPartitionedCallЂ"conv3d_416/StatefulPartitionedCallЂ"conv3d_417/StatefulPartitionedCallЂ"conv3d_418/StatefulPartitionedCallЂ"conv3d_419/StatefulPartitionedCallЂ"conv3d_420/StatefulPartitionedCallЂ"conv3d_421/StatefulPartitionedCallЂ"conv3d_422/StatefulPartitionedCallЂ"conv3d_423/StatefulPartitionedCallЂ"conv3d_424/StatefulPartitionedCallЂ"conv3d_425/StatefulPartitionedCallЂ"conv3d_426/StatefulPartitionedCallЂ"conv3d_427/StatefulPartitionedCallЂ"conv3d_428/StatefulPartitionedCallЂ"conv3d_429/StatefulPartitionedCallЂ"conv3d_430/StatefulPartitionedCallЂ"conv3d_431/StatefulPartitionedCallЂ+conv3d_transpose_60/StatefulPartitionedCallЂ+conv3d_transpose_61/StatefulPartitionedCallЂ+conv3d_transpose_62/StatefulPartitionedCallЂ+conv3d_transpose_63/StatefulPartitionedCallє
!zero_padding3d_15/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_481950Ц
"conv3d_405/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_15/PartitionedCall:output:0conv3d_405_482226conv3d_405_482228*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_405_layer_call_and_return_conditional_losses_482225Ч
"conv3d_406/StatefulPartitionedCallStatefulPartitionedCall+conv3d_405/StatefulPartitionedCall:output:0conv3d_406_482243conv3d_406_482245*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_406_layer_call_and_return_conditional_losses_482242
 max_pooling3d_60/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_481962Х
"conv3d_407/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_60/PartitionedCall:output:0conv3d_407_482261conv3d_407_482263*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_407_layer_call_and_return_conditional_losses_482260Ч
"conv3d_408/StatefulPartitionedCallStatefulPartitionedCall+conv3d_407/StatefulPartitionedCall:output:0conv3d_408_482278conv3d_408_482280*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_408_layer_call_and_return_conditional_losses_482277
 max_pooling3d_61/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_481974Х
"conv3d_409/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_61/PartitionedCall:output:0conv3d_409_482296conv3d_409_482298*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_409_layer_call_and_return_conditional_losses_482295Ч
"conv3d_410/StatefulPartitionedCallStatefulPartitionedCall+conv3d_409/StatefulPartitionedCall:output:0conv3d_410_482313conv3d_410_482315*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_410_layer_call_and_return_conditional_losses_482312
 max_pooling3d_62/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_481986Ц
"conv3d_411/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_62/PartitionedCall:output:0conv3d_411_482331conv3d_411_482333*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_411_layer_call_and_return_conditional_losses_482330Ш
"conv3d_412/StatefulPartitionedCallStatefulPartitionedCall+conv3d_411/StatefulPartitionedCall:output:0conv3d_412_482348conv3d_412_482350*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_412_layer_call_and_return_conditional_losses_482347
 max_pooling3d_63/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_481998Ц
"conv3d_413/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_63/PartitionedCall:output:0conv3d_413_482366conv3d_413_482368*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_413_layer_call_and_return_conditional_losses_482365Ш
"conv3d_414/StatefulPartitionedCallStatefulPartitionedCall+conv3d_413/StatefulPartitionedCall:output:0conv3d_414_482383conv3d_414_482385*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_414_layer_call_and_return_conditional_losses_482382ь
+conv3d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall+conv3d_414/StatefulPartitionedCall:output:0conv3d_transpose_60_482388conv3d_transpose_60_482390*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_482046б
"conv3d_415/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_60/StatefulPartitionedCall:output:0conv3d_415_482405conv3d_415_482407*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_415_layer_call_and_return_conditional_losses_482404Т
concatenate_60/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0+conv3d_415/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_60_layer_call_and_return_conditional_losses_482417Ф
"conv3d_416/StatefulPartitionedCallStatefulPartitionedCall'concatenate_60/PartitionedCall:output:0conv3d_416_482431conv3d_416_482433*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_416_layer_call_and_return_conditional_losses_482430Ш
"conv3d_417/StatefulPartitionedCallStatefulPartitionedCall+conv3d_416/StatefulPartitionedCall:output:0conv3d_417_482448conv3d_417_482450*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_417_layer_call_and_return_conditional_losses_482447Ш
"conv3d_418/StatefulPartitionedCallStatefulPartitionedCall+conv3d_417/StatefulPartitionedCall:output:0conv3d_418_482465conv3d_418_482467*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_418_layer_call_and_return_conditional_losses_482464ы
+conv3d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall+conv3d_418/StatefulPartitionedCall:output:0conv3d_transpose_61_482470conv3d_transpose_61_482472*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_482092а
"conv3d_419/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_61/StatefulPartitionedCall:output:0conv3d_419_482487conv3d_419_482489*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_419_layer_call_and_return_conditional_losses_482486Т
concatenate_61/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0+conv3d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_61_layer_call_and_return_conditional_losses_482499У
"conv3d_420/StatefulPartitionedCallStatefulPartitionedCall'concatenate_61/PartitionedCall:output:0conv3d_420_482513conv3d_420_482515*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_420_layer_call_and_return_conditional_losses_482512Ч
"conv3d_421/StatefulPartitionedCallStatefulPartitionedCall+conv3d_420/StatefulPartitionedCall:output:0conv3d_421_482530conv3d_421_482532*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_421_layer_call_and_return_conditional_losses_482529Ч
"conv3d_422/StatefulPartitionedCallStatefulPartitionedCall+conv3d_421/StatefulPartitionedCall:output:0conv3d_422_482547conv3d_422_482549*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_422_layer_call_and_return_conditional_losses_482546ы
+conv3d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall+conv3d_422/StatefulPartitionedCall:output:0conv3d_transpose_62_482552conv3d_transpose_62_482554*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_482138а
"conv3d_423/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_62/StatefulPartitionedCall:output:0conv3d_423_482569conv3d_423_482571*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_423_layer_call_and_return_conditional_losses_482568С
concatenate_62/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0+conv3d_423/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_62_layer_call_and_return_conditional_losses_482581У
"conv3d_424/StatefulPartitionedCallStatefulPartitionedCall'concatenate_62/PartitionedCall:output:0conv3d_424_482595conv3d_424_482597*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_424_layer_call_and_return_conditional_losses_482594Ч
"conv3d_425/StatefulPartitionedCallStatefulPartitionedCall+conv3d_424/StatefulPartitionedCall:output:0conv3d_425_482612conv3d_425_482614*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_425_layer_call_and_return_conditional_losses_482611Ч
"conv3d_426/StatefulPartitionedCallStatefulPartitionedCall+conv3d_425/StatefulPartitionedCall:output:0conv3d_426_482629conv3d_426_482631*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_426_layer_call_and_return_conditional_losses_482628ы
+conv3d_transpose_63/StatefulPartitionedCallStatefulPartitionedCall+conv3d_426/StatefulPartitionedCall:output:0conv3d_transpose_63_482634conv3d_transpose_63_482636*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_482184а
"conv3d_427/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_63/StatefulPartitionedCall:output:0conv3d_427_482651conv3d_427_482653*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_427_layer_call_and_return_conditional_losses_482650С
concatenate_63/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0+conv3d_427/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_63_layer_call_and_return_conditional_losses_482663У
"conv3d_428/StatefulPartitionedCallStatefulPartitionedCall'concatenate_63/PartitionedCall:output:0conv3d_428_482677conv3d_428_482679*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_428_layer_call_and_return_conditional_losses_482676Ч
"conv3d_429/StatefulPartitionedCallStatefulPartitionedCall+conv3d_428/StatefulPartitionedCall:output:0conv3d_429_482694conv3d_429_482696*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_429_layer_call_and_return_conditional_losses_482693Ч
"conv3d_430/StatefulPartitionedCallStatefulPartitionedCall+conv3d_429/StatefulPartitionedCall:output:0conv3d_430_482711conv3d_430_482713*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_430_layer_call_and_return_conditional_losses_482710
cropping3d_15/PartitionedCallPartitionedCall+conv3d_430/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_482203Т
"conv3d_431/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_15/PartitionedCall:output:0conv3d_431_482728conv3d_431_482730*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_431_layer_call_and_return_conditional_losses_482727Ё
IdentityIdentity+conv3d_431/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_405/StatefulPartitionedCall#^conv3d_406/StatefulPartitionedCall#^conv3d_407/StatefulPartitionedCall#^conv3d_408/StatefulPartitionedCall#^conv3d_409/StatefulPartitionedCall#^conv3d_410/StatefulPartitionedCall#^conv3d_411/StatefulPartitionedCall#^conv3d_412/StatefulPartitionedCall#^conv3d_413/StatefulPartitionedCall#^conv3d_414/StatefulPartitionedCall#^conv3d_415/StatefulPartitionedCall#^conv3d_416/StatefulPartitionedCall#^conv3d_417/StatefulPartitionedCall#^conv3d_418/StatefulPartitionedCall#^conv3d_419/StatefulPartitionedCall#^conv3d_420/StatefulPartitionedCall#^conv3d_421/StatefulPartitionedCall#^conv3d_422/StatefulPartitionedCall#^conv3d_423/StatefulPartitionedCall#^conv3d_424/StatefulPartitionedCall#^conv3d_425/StatefulPartitionedCall#^conv3d_426/StatefulPartitionedCall#^conv3d_427/StatefulPartitionedCall#^conv3d_428/StatefulPartitionedCall#^conv3d_429/StatefulPartitionedCall#^conv3d_430/StatefulPartitionedCall#^conv3d_431/StatefulPartitionedCall,^conv3d_transpose_60/StatefulPartitionedCall,^conv3d_transpose_61/StatefulPartitionedCall,^conv3d_transpose_62/StatefulPartitionedCall,^conv3d_transpose_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_405/StatefulPartitionedCall"conv3d_405/StatefulPartitionedCall2H
"conv3d_406/StatefulPartitionedCall"conv3d_406/StatefulPartitionedCall2H
"conv3d_407/StatefulPartitionedCall"conv3d_407/StatefulPartitionedCall2H
"conv3d_408/StatefulPartitionedCall"conv3d_408/StatefulPartitionedCall2H
"conv3d_409/StatefulPartitionedCall"conv3d_409/StatefulPartitionedCall2H
"conv3d_410/StatefulPartitionedCall"conv3d_410/StatefulPartitionedCall2H
"conv3d_411/StatefulPartitionedCall"conv3d_411/StatefulPartitionedCall2H
"conv3d_412/StatefulPartitionedCall"conv3d_412/StatefulPartitionedCall2H
"conv3d_413/StatefulPartitionedCall"conv3d_413/StatefulPartitionedCall2H
"conv3d_414/StatefulPartitionedCall"conv3d_414/StatefulPartitionedCall2H
"conv3d_415/StatefulPartitionedCall"conv3d_415/StatefulPartitionedCall2H
"conv3d_416/StatefulPartitionedCall"conv3d_416/StatefulPartitionedCall2H
"conv3d_417/StatefulPartitionedCall"conv3d_417/StatefulPartitionedCall2H
"conv3d_418/StatefulPartitionedCall"conv3d_418/StatefulPartitionedCall2H
"conv3d_419/StatefulPartitionedCall"conv3d_419/StatefulPartitionedCall2H
"conv3d_420/StatefulPartitionedCall"conv3d_420/StatefulPartitionedCall2H
"conv3d_421/StatefulPartitionedCall"conv3d_421/StatefulPartitionedCall2H
"conv3d_422/StatefulPartitionedCall"conv3d_422/StatefulPartitionedCall2H
"conv3d_423/StatefulPartitionedCall"conv3d_423/StatefulPartitionedCall2H
"conv3d_424/StatefulPartitionedCall"conv3d_424/StatefulPartitionedCall2H
"conv3d_425/StatefulPartitionedCall"conv3d_425/StatefulPartitionedCall2H
"conv3d_426/StatefulPartitionedCall"conv3d_426/StatefulPartitionedCall2H
"conv3d_427/StatefulPartitionedCall"conv3d_427/StatefulPartitionedCall2H
"conv3d_428/StatefulPartitionedCall"conv3d_428/StatefulPartitionedCall2H
"conv3d_429/StatefulPartitionedCall"conv3d_429/StatefulPartitionedCall2H
"conv3d_430/StatefulPartitionedCall"conv3d_430/StatefulPartitionedCall2H
"conv3d_431/StatefulPartitionedCall"conv3d_431/StatefulPartitionedCall2Z
+conv3d_transpose_60/StatefulPartitionedCall+conv3d_transpose_60/StatefulPartitionedCall2Z
+conv3d_transpose_61/StatefulPartitionedCall+conv3d_transpose_61/StatefulPartitionedCall2Z
+conv3d_transpose_62/StatefulPartitionedCall+conv3d_transpose_62/StatefulPartitionedCall2Z
+conv3d_transpose_63/StatefulPartitionedCall+conv3d_transpose_63/StatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_430_layer_call_and_return_conditional_losses_482710

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_417_layer_call_and_return_conditional_losses_485502

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к
h
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_485239

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к"
Ё
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_485566

inputsG
(conv3d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :@
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0ь
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

[
/__inference_concatenate_62_layer_call_fn_485729
inputs_0
inputs_1
identityь
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_62_layer_call_and_return_conditional_losses_482581
IdentityIdentityPartitionedCall:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ :8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ :x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/1
Ы

F__inference_conv3d_424_layer_call_and_return_conditional_losses_482594

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
к"
Ё
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_482092

inputsG
(conv3d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :@
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0ь
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_410_layer_call_and_return_conditional_losses_482312

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_418_layer_call_fn_485511

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_418_layer_call_and_return_conditional_losses_482464
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
­
4__inference_conv3d_transpose_62_layer_call_fn_485668

inputs%
unknown: @
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_482138
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ё
M
1__inference_max_pooling3d_63_layer_call_fn_485334

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_481998
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
Ў
4__inference_conv3d_transpose_61_layer_call_fn_485531

inputs&
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_482092
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_410_layer_call_and_return_conditional_losses_485279

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_417_layer_call_fn_485491

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_417_layer_call_and_return_conditional_losses_482447
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_412_layer_call_and_return_conditional_losses_482347

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_424_layer_call_fn_485745

inputs%
unknown:@ 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_424_layer_call_and_return_conditional_losses_482594
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Й 
Џ
)__inference_model_15_layer_call_fn_482861
input_16%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3: 
	unknown_4: '
	unknown_5:  
	unknown_6: '
	unknown_7: @
	unknown_8:@'
	unknown_9:@@

unknown_10:@)

unknown_11:@

unknown_12:	*

unknown_13:

unknown_14:	*

unknown_15:

unknown_16:	*

unknown_17:

unknown_18:	*

unknown_19:

unknown_20:	*

unknown_21:

unknown_22:	*

unknown_23:

unknown_24:	*

unknown_25:

unknown_26:	*

unknown_27:

unknown_28:	)

unknown_29:@

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:@

unknown_34:@(

unknown_35:@@

unknown_36:@(

unknown_37:@@

unknown_38:@(

unknown_39: @

unknown_40: (

unknown_41:  

unknown_42: (

unknown_43:@ 

unknown_44: (

unknown_45:  

unknown_46: (

unknown_47:  

unknown_48: (

unknown_49: 

unknown_50:(

unknown_51:

unknown_52:(

unknown_53: 

unknown_54:(

unknown_55:

unknown_56:(

unknown_57:

unknown_58:(

unknown_59:

unknown_60:
identityЂStatefulPartitionedCallФ	
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_482734
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_16
к
h
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_481962

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Њ
i
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_485139

inputs
identity
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_412_layer_call_and_return_conditional_losses_485329

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_431_layer_call_fn_485955

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_431_layer_call_and_return_conditional_losses_482727
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѕ
Ѕ
+__inference_conv3d_420_layer_call_fn_485608

inputs&
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_420_layer_call_and_return_conditional_losses_482512
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_423_layer_call_and_return_conditional_losses_482568

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Љи
е3
D__inference_model_15_layer_call_and_return_conditional_losses_484997

inputsG
)conv3d_405_conv3d_readvariableop_resource:8
*conv3d_405_biasadd_readvariableop_resource:G
)conv3d_406_conv3d_readvariableop_resource:8
*conv3d_406_biasadd_readvariableop_resource:G
)conv3d_407_conv3d_readvariableop_resource: 8
*conv3d_407_biasadd_readvariableop_resource: G
)conv3d_408_conv3d_readvariableop_resource:  8
*conv3d_408_biasadd_readvariableop_resource: G
)conv3d_409_conv3d_readvariableop_resource: @8
*conv3d_409_biasadd_readvariableop_resource:@G
)conv3d_410_conv3d_readvariableop_resource:@@8
*conv3d_410_biasadd_readvariableop_resource:@H
)conv3d_411_conv3d_readvariableop_resource:@9
*conv3d_411_biasadd_readvariableop_resource:	I
)conv3d_412_conv3d_readvariableop_resource:9
*conv3d_412_biasadd_readvariableop_resource:	I
)conv3d_413_conv3d_readvariableop_resource:9
*conv3d_413_biasadd_readvariableop_resource:	I
)conv3d_414_conv3d_readvariableop_resource:9
*conv3d_414_biasadd_readvariableop_resource:	\
<conv3d_transpose_60_conv3d_transpose_readvariableop_resource:B
3conv3d_transpose_60_biasadd_readvariableop_resource:	I
)conv3d_415_conv3d_readvariableop_resource:9
*conv3d_415_biasadd_readvariableop_resource:	I
)conv3d_416_conv3d_readvariableop_resource:9
*conv3d_416_biasadd_readvariableop_resource:	I
)conv3d_417_conv3d_readvariableop_resource:9
*conv3d_417_biasadd_readvariableop_resource:	I
)conv3d_418_conv3d_readvariableop_resource:9
*conv3d_418_biasadd_readvariableop_resource:	[
<conv3d_transpose_61_conv3d_transpose_readvariableop_resource:@A
3conv3d_transpose_61_biasadd_readvariableop_resource:@G
)conv3d_419_conv3d_readvariableop_resource:@@8
*conv3d_419_biasadd_readvariableop_resource:@H
)conv3d_420_conv3d_readvariableop_resource:@8
*conv3d_420_biasadd_readvariableop_resource:@G
)conv3d_421_conv3d_readvariableop_resource:@@8
*conv3d_421_biasadd_readvariableop_resource:@G
)conv3d_422_conv3d_readvariableop_resource:@@8
*conv3d_422_biasadd_readvariableop_resource:@Z
<conv3d_transpose_62_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_62_biasadd_readvariableop_resource: G
)conv3d_423_conv3d_readvariableop_resource:  8
*conv3d_423_biasadd_readvariableop_resource: G
)conv3d_424_conv3d_readvariableop_resource:@ 8
*conv3d_424_biasadd_readvariableop_resource: G
)conv3d_425_conv3d_readvariableop_resource:  8
*conv3d_425_biasadd_readvariableop_resource: G
)conv3d_426_conv3d_readvariableop_resource:  8
*conv3d_426_biasadd_readvariableop_resource: Z
<conv3d_transpose_63_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_63_biasadd_readvariableop_resource:G
)conv3d_427_conv3d_readvariableop_resource:8
*conv3d_427_biasadd_readvariableop_resource:G
)conv3d_428_conv3d_readvariableop_resource: 8
*conv3d_428_biasadd_readvariableop_resource:G
)conv3d_429_conv3d_readvariableop_resource:8
*conv3d_429_biasadd_readvariableop_resource:G
)conv3d_430_conv3d_readvariableop_resource:8
*conv3d_430_biasadd_readvariableop_resource:G
)conv3d_431_conv3d_readvariableop_resource:8
*conv3d_431_biasadd_readvariableop_resource:
identityЂ!conv3d_405/BiasAdd/ReadVariableOpЂ conv3d_405/Conv3D/ReadVariableOpЂ!conv3d_406/BiasAdd/ReadVariableOpЂ conv3d_406/Conv3D/ReadVariableOpЂ!conv3d_407/BiasAdd/ReadVariableOpЂ conv3d_407/Conv3D/ReadVariableOpЂ!conv3d_408/BiasAdd/ReadVariableOpЂ conv3d_408/Conv3D/ReadVariableOpЂ!conv3d_409/BiasAdd/ReadVariableOpЂ conv3d_409/Conv3D/ReadVariableOpЂ!conv3d_410/BiasAdd/ReadVariableOpЂ conv3d_410/Conv3D/ReadVariableOpЂ!conv3d_411/BiasAdd/ReadVariableOpЂ conv3d_411/Conv3D/ReadVariableOpЂ!conv3d_412/BiasAdd/ReadVariableOpЂ conv3d_412/Conv3D/ReadVariableOpЂ!conv3d_413/BiasAdd/ReadVariableOpЂ conv3d_413/Conv3D/ReadVariableOpЂ!conv3d_414/BiasAdd/ReadVariableOpЂ conv3d_414/Conv3D/ReadVariableOpЂ!conv3d_415/BiasAdd/ReadVariableOpЂ conv3d_415/Conv3D/ReadVariableOpЂ!conv3d_416/BiasAdd/ReadVariableOpЂ conv3d_416/Conv3D/ReadVariableOpЂ!conv3d_417/BiasAdd/ReadVariableOpЂ conv3d_417/Conv3D/ReadVariableOpЂ!conv3d_418/BiasAdd/ReadVariableOpЂ conv3d_418/Conv3D/ReadVariableOpЂ!conv3d_419/BiasAdd/ReadVariableOpЂ conv3d_419/Conv3D/ReadVariableOpЂ!conv3d_420/BiasAdd/ReadVariableOpЂ conv3d_420/Conv3D/ReadVariableOpЂ!conv3d_421/BiasAdd/ReadVariableOpЂ conv3d_421/Conv3D/ReadVariableOpЂ!conv3d_422/BiasAdd/ReadVariableOpЂ conv3d_422/Conv3D/ReadVariableOpЂ!conv3d_423/BiasAdd/ReadVariableOpЂ conv3d_423/Conv3D/ReadVariableOpЂ!conv3d_424/BiasAdd/ReadVariableOpЂ conv3d_424/Conv3D/ReadVariableOpЂ!conv3d_425/BiasAdd/ReadVariableOpЂ conv3d_425/Conv3D/ReadVariableOpЂ!conv3d_426/BiasAdd/ReadVariableOpЂ conv3d_426/Conv3D/ReadVariableOpЂ!conv3d_427/BiasAdd/ReadVariableOpЂ conv3d_427/Conv3D/ReadVariableOpЂ!conv3d_428/BiasAdd/ReadVariableOpЂ conv3d_428/Conv3D/ReadVariableOpЂ!conv3d_429/BiasAdd/ReadVariableOpЂ conv3d_429/Conv3D/ReadVariableOpЂ!conv3d_430/BiasAdd/ReadVariableOpЂ conv3d_430/Conv3D/ReadVariableOpЂ!conv3d_431/BiasAdd/ReadVariableOpЂ conv3d_431/Conv3D/ReadVariableOpЂ*conv3d_transpose_60/BiasAdd/ReadVariableOpЂ3conv3d_transpose_60/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_61/BiasAdd/ReadVariableOpЂ3conv3d_transpose_61/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_62/BiasAdd/ReadVariableOpЂ3conv3d_transpose_62/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_63/BiasAdd/ReadVariableOpЂ3conv3d_transpose_63/conv3d_transpose/ReadVariableOp
zero_padding3d_15/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_15/PadPadinputs'zero_padding3d_15/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_405/Conv3D/ReadVariableOpReadVariableOp)conv3d_405_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ч
conv3d_405/Conv3DConv3Dzero_padding3d_15/Pad:output:0(conv3d_405/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_405/BiasAdd/ReadVariableOpReadVariableOp*conv3d_405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_405/BiasAddBiasAddconv3d_405/Conv3D:output:0)conv3d_405/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_405/ReluReluconv3d_405/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_406/Conv3D/ReadVariableOpReadVariableOp)conv3d_406_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_406/Conv3DConv3Dconv3d_405/Relu:activations:0(conv3d_406/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_406/BiasAdd/ReadVariableOpReadVariableOp*conv3d_406_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_406/BiasAddBiasAddconv3d_406/Conv3D:output:0)conv3d_406/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_406/ReluReluconv3d_406/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџн
max_pooling3d_60/MaxPool3D	MaxPool3Dconv3d_406/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_407/Conv3D/ReadVariableOpReadVariableOp)conv3d_407_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_407/Conv3DConv3D#max_pooling3d_60/MaxPool3D:output:0(conv3d_407/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_407/BiasAdd/ReadVariableOpReadVariableOp*conv3d_407_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_407/BiasAddBiasAddconv3d_407/Conv3D:output:0)conv3d_407/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_407/ReluReluconv3d_407/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_408/Conv3D/ReadVariableOpReadVariableOp)conv3d_408_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_408/Conv3DConv3Dconv3d_407/Relu:activations:0(conv3d_408/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_408/BiasAdd/ReadVariableOpReadVariableOp*conv3d_408_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_408/BiasAddBiasAddconv3d_408/Conv3D:output:0)conv3d_408/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_408/ReluReluconv3d_408/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ н
max_pooling3d_61/MaxPool3D	MaxPool3Dconv3d_408/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	

 conv3d_409/Conv3D/ReadVariableOpReadVariableOp)conv3d_409_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_409/Conv3DConv3D#max_pooling3d_61/MaxPool3D:output:0(conv3d_409/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_409/BiasAdd/ReadVariableOpReadVariableOp*conv3d_409_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_409/BiasAddBiasAddconv3d_409/Conv3D:output:0)conv3d_409/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_409/ReluReluconv3d_409/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_410/Conv3D/ReadVariableOpReadVariableOp)conv3d_410_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_410/Conv3DConv3Dconv3d_409/Relu:activations:0(conv3d_410/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_410/BiasAdd/ReadVariableOpReadVariableOp*conv3d_410_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_410/BiasAddBiasAddconv3d_410/Conv3D:output:0)conv3d_410/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_410/ReluReluconv3d_410/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@н
max_pooling3d_62/MaxPool3D	MaxPool3Dconv3d_410/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	

 conv3d_411/Conv3D/ReadVariableOpReadVariableOp)conv3d_411_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0э
conv3d_411/Conv3DConv3D#max_pooling3d_62/MaxPool3D:output:0(conv3d_411/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_411/BiasAdd/ReadVariableOpReadVariableOp*conv3d_411_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_411/BiasAddBiasAddconv3d_411/Conv3D:output:0)conv3d_411/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_411/ReluReluconv3d_411/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_412/Conv3D/ReadVariableOpReadVariableOp)conv3d_412_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_412/Conv3DConv3Dconv3d_411/Relu:activations:0(conv3d_412/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_412/BiasAdd/ReadVariableOpReadVariableOp*conv3d_412_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_412/BiasAddBiasAddconv3d_412/Conv3D:output:0)conv3d_412/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_412/ReluReluconv3d_412/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџо
max_pooling3d_63/MaxPool3D	MaxPool3Dconv3d_412/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_413/Conv3D/ReadVariableOpReadVariableOp)conv3d_413_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0э
conv3d_413/Conv3DConv3D#max_pooling3d_63/MaxPool3D:output:0(conv3d_413/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_413/BiasAdd/ReadVariableOpReadVariableOp*conv3d_413_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_413/BiasAddBiasAddconv3d_413/Conv3D:output:0)conv3d_413/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_413/ReluReluconv3d_413/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_414/Conv3D/ReadVariableOpReadVariableOp)conv3d_414_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_414/Conv3DConv3Dconv3d_413/Relu:activations:0(conv3d_414/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_414/BiasAdd/ReadVariableOpReadVariableOp*conv3d_414_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_414/BiasAddBiasAddconv3d_414/Conv3D:output:0)conv3d_414/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_414/ReluReluconv3d_414/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_60/ShapeShapeconv3d_414/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_60/strided_sliceStridedSlice"conv3d_transpose_60/Shape:output:00conv3d_transpose_60/strided_slice/stack:output:02conv3d_transpose_60/strided_slice/stack_1:output:02conv3d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_60/strided_slice_1StridedSlice"conv3d_transpose_60/Shape:output:02conv3d_transpose_60/strided_slice_1/stack:output:04conv3d_transpose_60/strided_slice_1/stack_1:output:04conv3d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_60/strided_slice_2StridedSlice"conv3d_transpose_60/Shape:output:02conv3d_transpose_60/strided_slice_2/stack:output:04conv3d_transpose_60/strided_slice_2/stack_1:output:04conv3d_transpose_60/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_60/strided_slice_3StridedSlice"conv3d_transpose_60/Shape:output:02conv3d_transpose_60/strided_slice_3/stack:output:04conv3d_transpose_60/strided_slice_3/stack_1:output:04conv3d_transpose_60/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_60/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_60/mulMul,conv3d_transpose_60/strided_slice_1:output:0"conv3d_transpose_60/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_60/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_60/addAddV2conv3d_transpose_60/mul:z:0"conv3d_transpose_60/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_60/mul_1Mul,conv3d_transpose_60/strided_slice_2:output:0$conv3d_transpose_60/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_60/add_1AddV2conv3d_transpose_60/mul_1:z:0$conv3d_transpose_60/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_60/mul_2Mul,conv3d_transpose_60/strided_slice_3:output:0$conv3d_transpose_60/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_60/add_2AddV2conv3d_transpose_60/mul_2:z:0$conv3d_transpose_60/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_60/stack/4Const*
_output_shapes
: *
dtype0*
value
B :ќ
conv3d_transpose_60/stackPack*conv3d_transpose_60/strided_slice:output:0conv3d_transpose_60/add:z:0conv3d_transpose_60/add_1:z:0conv3d_transpose_60/add_2:z:0$conv3d_transpose_60/stack/4:output:0*
N*
T0*
_output_shapes
:О
3conv3d_transpose_60/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_60_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0С
$conv3d_transpose_60/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_60/stack:output:0;conv3d_transpose_60/conv3d_transpose/ReadVariableOp:value:0conv3d_414/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	

*conv3d_transpose_60/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0у
conv3d_transpose_60/BiasAddBiasAdd-conv3d_transpose_60/conv3d_transpose:output:02conv3d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_415/Conv3D/ReadVariableOpReadVariableOp)conv3d_415_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_415/Conv3DConv3D$conv3d_transpose_60/BiasAdd:output:0(conv3d_415/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_415/BiasAdd/ReadVariableOpReadVariableOp*conv3d_415_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_415/BiasAddBiasAddconv3d_415/Conv3D:output:0)conv3d_415/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_415/ReluReluconv3d_415/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_60/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_60/concatConcatV2conv3d_412/Relu:activations:0conv3d_415/Relu:activations:0#concatenate_60/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_416/Conv3D/ReadVariableOpReadVariableOp)conv3d_416_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ш
conv3d_416/Conv3DConv3Dconcatenate_60/concat:output:0(conv3d_416/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_416/BiasAdd/ReadVariableOpReadVariableOp*conv3d_416_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_416/BiasAddBiasAddconv3d_416/Conv3D:output:0)conv3d_416/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_416/ReluReluconv3d_416/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_417/Conv3D/ReadVariableOpReadVariableOp)conv3d_417_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_417/Conv3DConv3Dconv3d_416/Relu:activations:0(conv3d_417/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_417/BiasAdd/ReadVariableOpReadVariableOp*conv3d_417_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_417/BiasAddBiasAddconv3d_417/Conv3D:output:0)conv3d_417/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_417/ReluReluconv3d_417/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_418/Conv3D/ReadVariableOpReadVariableOp)conv3d_418_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_418/Conv3DConv3Dconv3d_417/Relu:activations:0(conv3d_418/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_418/BiasAdd/ReadVariableOpReadVariableOp*conv3d_418_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_418/BiasAddBiasAddconv3d_418/Conv3D:output:0)conv3d_418/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_418/ReluReluconv3d_418/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_61/ShapeShapeconv3d_418/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_61/strided_sliceStridedSlice"conv3d_transpose_61/Shape:output:00conv3d_transpose_61/strided_slice/stack:output:02conv3d_transpose_61/strided_slice/stack_1:output:02conv3d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_61/strided_slice_1StridedSlice"conv3d_transpose_61/Shape:output:02conv3d_transpose_61/strided_slice_1/stack:output:04conv3d_transpose_61/strided_slice_1/stack_1:output:04conv3d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_61/strided_slice_2StridedSlice"conv3d_transpose_61/Shape:output:02conv3d_transpose_61/strided_slice_2/stack:output:04conv3d_transpose_61/strided_slice_2/stack_1:output:04conv3d_transpose_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_61/strided_slice_3StridedSlice"conv3d_transpose_61/Shape:output:02conv3d_transpose_61/strided_slice_3/stack:output:04conv3d_transpose_61/strided_slice_3/stack_1:output:04conv3d_transpose_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_61/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_61/mulMul,conv3d_transpose_61/strided_slice_1:output:0"conv3d_transpose_61/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_61/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_61/mul_1Mul,conv3d_transpose_61/strided_slice_2:output:0$conv3d_transpose_61/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_61/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_61/mul_2Mul,conv3d_transpose_61/strided_slice_3:output:0$conv3d_transpose_61/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_61/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@ќ
conv3d_transpose_61/stackPack*conv3d_transpose_61/strided_slice:output:0conv3d_transpose_61/mul:z:0conv3d_transpose_61/mul_1:z:0conv3d_transpose_61/mul_2:z:0$conv3d_transpose_61/stack/4:output:0*
N*
T0*
_output_shapes
:Н
3conv3d_transpose_61/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_61_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0П
$conv3d_transpose_61/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_61/stack:output:0;conv3d_transpose_61/conv3d_transpose/ReadVariableOp:value:0conv3d_418/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*conv3d_transpose_61/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0т
conv3d_transpose_61/BiasAddBiasAdd-conv3d_transpose_61/conv3d_transpose:output:02conv3d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_419/Conv3D/ReadVariableOpReadVariableOp)conv3d_419_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0э
conv3d_419/Conv3DConv3D$conv3d_transpose_61/BiasAdd:output:0(conv3d_419/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_419/BiasAdd/ReadVariableOpReadVariableOp*conv3d_419_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_419/BiasAddBiasAddconv3d_419/Conv3D:output:0)conv3d_419/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_419/ReluReluconv3d_419/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@\
concatenate_61/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_61/concatConcatV2conv3d_410/Relu:activations:0conv3d_419/Relu:activations:0#concatenate_61/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_420/Conv3D/ReadVariableOpReadVariableOp)conv3d_420_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ч
conv3d_420/Conv3DConv3Dconcatenate_61/concat:output:0(conv3d_420/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_420/BiasAdd/ReadVariableOpReadVariableOp*conv3d_420_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_420/BiasAddBiasAddconv3d_420/Conv3D:output:0)conv3d_420/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_420/ReluReluconv3d_420/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_421/Conv3D/ReadVariableOpReadVariableOp)conv3d_421_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_421/Conv3DConv3Dconv3d_420/Relu:activations:0(conv3d_421/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_421/BiasAdd/ReadVariableOpReadVariableOp*conv3d_421_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_421/BiasAddBiasAddconv3d_421/Conv3D:output:0)conv3d_421/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_421/ReluReluconv3d_421/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_422/Conv3D/ReadVariableOpReadVariableOp)conv3d_422_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_422/Conv3DConv3Dconv3d_421/Relu:activations:0(conv3d_422/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_422/BiasAdd/ReadVariableOpReadVariableOp*conv3d_422_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_422/BiasAddBiasAddconv3d_422/Conv3D:output:0)conv3d_422/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_422/ReluReluconv3d_422/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@f
conv3d_transpose_62/ShapeShapeconv3d_422/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_62/strided_sliceStridedSlice"conv3d_transpose_62/Shape:output:00conv3d_transpose_62/strided_slice/stack:output:02conv3d_transpose_62/strided_slice/stack_1:output:02conv3d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_62/strided_slice_1StridedSlice"conv3d_transpose_62/Shape:output:02conv3d_transpose_62/strided_slice_1/stack:output:04conv3d_transpose_62/strided_slice_1/stack_1:output:04conv3d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_62/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_62/strided_slice_2StridedSlice"conv3d_transpose_62/Shape:output:02conv3d_transpose_62/strided_slice_2/stack:output:04conv3d_transpose_62/strided_slice_2/stack_1:output:04conv3d_transpose_62/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_62/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_62/strided_slice_3StridedSlice"conv3d_transpose_62/Shape:output:02conv3d_transpose_62/strided_slice_3/stack:output:04conv3d_transpose_62/strided_slice_3/stack_1:output:04conv3d_transpose_62/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_62/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_62/mulMul,conv3d_transpose_62/strided_slice_1:output:0"conv3d_transpose_62/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_62/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_62/mul_1Mul,conv3d_transpose_62/strided_slice_2:output:0$conv3d_transpose_62/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_62/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_62/mul_2Mul,conv3d_transpose_62/strided_slice_3:output:0$conv3d_transpose_62/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_62/stack/4Const*
_output_shapes
: *
dtype0*
value	B : ќ
conv3d_transpose_62/stackPack*conv3d_transpose_62/strided_slice:output:0conv3d_transpose_62/mul:z:0conv3d_transpose_62/mul_1:z:0conv3d_transpose_62/mul_2:z:0$conv3d_transpose_62/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_62/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_62_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0П
$conv3d_transpose_62/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_62/stack:output:0;conv3d_transpose_62/conv3d_transpose/ReadVariableOp:value:0conv3d_422/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*conv3d_transpose_62/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0т
conv3d_transpose_62/BiasAddBiasAdd-conv3d_transpose_62/conv3d_transpose:output:02conv3d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_423/Conv3D/ReadVariableOpReadVariableOp)conv3d_423_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0э
conv3d_423/Conv3DConv3D$conv3d_transpose_62/BiasAdd:output:0(conv3d_423/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_423/BiasAdd/ReadVariableOpReadVariableOp*conv3d_423_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_423/BiasAddBiasAddconv3d_423/Conv3D:output:0)conv3d_423/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_423/ReluReluconv3d_423/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ \
concatenate_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_62/concatConcatV2conv3d_408/Relu:activations:0conv3d_423/Relu:activations:0#concatenate_62/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_424/Conv3D/ReadVariableOpReadVariableOp)conv3d_424_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0ч
conv3d_424/Conv3DConv3Dconcatenate_62/concat:output:0(conv3d_424/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_424/BiasAdd/ReadVariableOpReadVariableOp*conv3d_424_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_424/BiasAddBiasAddconv3d_424/Conv3D:output:0)conv3d_424/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_424/ReluReluconv3d_424/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_425/Conv3D/ReadVariableOpReadVariableOp)conv3d_425_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_425/Conv3DConv3Dconv3d_424/Relu:activations:0(conv3d_425/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_425/BiasAdd/ReadVariableOpReadVariableOp*conv3d_425_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_425/BiasAddBiasAddconv3d_425/Conv3D:output:0)conv3d_425/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_425/ReluReluconv3d_425/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_426/Conv3D/ReadVariableOpReadVariableOp)conv3d_426_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_426/Conv3DConv3Dconv3d_425/Relu:activations:0(conv3d_426/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_426/BiasAdd/ReadVariableOpReadVariableOp*conv3d_426_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_426/BiasAddBiasAddconv3d_426/Conv3D:output:0)conv3d_426/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_426/ReluReluconv3d_426/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ f
conv3d_transpose_63/ShapeShapeconv3d_426/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_63/strided_sliceStridedSlice"conv3d_transpose_63/Shape:output:00conv3d_transpose_63/strided_slice/stack:output:02conv3d_transpose_63/strided_slice/stack_1:output:02conv3d_transpose_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_63/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_63/strided_slice_1StridedSlice"conv3d_transpose_63/Shape:output:02conv3d_transpose_63/strided_slice_1/stack:output:04conv3d_transpose_63/strided_slice_1/stack_1:output:04conv3d_transpose_63/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_63/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_63/strided_slice_2StridedSlice"conv3d_transpose_63/Shape:output:02conv3d_transpose_63/strided_slice_2/stack:output:04conv3d_transpose_63/strided_slice_2/stack_1:output:04conv3d_transpose_63/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_63/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_63/strided_slice_3StridedSlice"conv3d_transpose_63/Shape:output:02conv3d_transpose_63/strided_slice_3/stack:output:04conv3d_transpose_63/strided_slice_3/stack_1:output:04conv3d_transpose_63/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_63/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_63/mulMul,conv3d_transpose_63/strided_slice_1:output:0"conv3d_transpose_63/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_63/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_63/mul_1Mul,conv3d_transpose_63/strided_slice_2:output:0$conv3d_transpose_63/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_63/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_63/mul_2Mul,conv3d_transpose_63/strided_slice_3:output:0$conv3d_transpose_63/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_63/stack/4Const*
_output_shapes
: *
dtype0*
value	B :ќ
conv3d_transpose_63/stackPack*conv3d_transpose_63/strided_slice:output:0conv3d_transpose_63/mul:z:0conv3d_transpose_63/mul_1:z:0conv3d_transpose_63/mul_2:z:0$conv3d_transpose_63/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_63/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_63_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0П
$conv3d_transpose_63/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_63/stack:output:0;conv3d_transpose_63/conv3d_transpose/ReadVariableOp:value:0conv3d_426/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*conv3d_transpose_63/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0т
conv3d_transpose_63/BiasAddBiasAdd-conv3d_transpose_63/conv3d_transpose:output:02conv3d_transpose_63/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_427/Conv3D/ReadVariableOpReadVariableOp)conv3d_427_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_427/Conv3DConv3D$conv3d_transpose_63/BiasAdd:output:0(conv3d_427/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_427/BiasAdd/ReadVariableOpReadVariableOp*conv3d_427_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_427/BiasAddBiasAddconv3d_427/Conv3D:output:0)conv3d_427/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_427/ReluReluconv3d_427/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_63/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_63/concatConcatV2conv3d_406/Relu:activations:0conv3d_427/Relu:activations:0#concatenate_63/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_428/Conv3D/ReadVariableOpReadVariableOp)conv3d_428_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ч
conv3d_428/Conv3DConv3Dconcatenate_63/concat:output:0(conv3d_428/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_428/BiasAdd/ReadVariableOpReadVariableOp*conv3d_428_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_428/BiasAddBiasAddconv3d_428/Conv3D:output:0)conv3d_428/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_428/ReluReluconv3d_428/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_429/Conv3D/ReadVariableOpReadVariableOp)conv3d_429_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_429/Conv3DConv3Dconv3d_428/Relu:activations:0(conv3d_429/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_429/BiasAdd/ReadVariableOpReadVariableOp*conv3d_429_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_429/BiasAddBiasAddconv3d_429/Conv3D:output:0)conv3d_429/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_429/ReluReluconv3d_429/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_430/Conv3D/ReadVariableOpReadVariableOp)conv3d_430_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_430/Conv3DConv3Dconv3d_429/Relu:activations:0(conv3d_430/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_430/BiasAdd/ReadVariableOpReadVariableOp*conv3d_430_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_430/BiasAddBiasAddconv3d_430/Conv3D:output:0)conv3d_430/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_430/ReluReluconv3d_430/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ~
!cropping3d_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
#cropping3d_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
#cropping3d_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               к
cropping3d_15/strided_sliceStridedSliceconv3d_430/Relu:activations:0*cropping3d_15/strided_slice/stack:output:0,cropping3d_15/strided_slice/stack_1:output:0,cropping3d_15/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
 conv3d_431/Conv3D/ReadVariableOpReadVariableOp)conv3d_431_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_431/Conv3DConv3D$cropping3d_15/strided_slice:output:0(conv3d_431/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_431/BiasAdd/ReadVariableOpReadVariableOp*conv3d_431_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_431/BiasAddBiasAddconv3d_431/Conv3D:output:0)conv3d_431/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconv3d_431/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЯ
NoOpNoOp"^conv3d_405/BiasAdd/ReadVariableOp!^conv3d_405/Conv3D/ReadVariableOp"^conv3d_406/BiasAdd/ReadVariableOp!^conv3d_406/Conv3D/ReadVariableOp"^conv3d_407/BiasAdd/ReadVariableOp!^conv3d_407/Conv3D/ReadVariableOp"^conv3d_408/BiasAdd/ReadVariableOp!^conv3d_408/Conv3D/ReadVariableOp"^conv3d_409/BiasAdd/ReadVariableOp!^conv3d_409/Conv3D/ReadVariableOp"^conv3d_410/BiasAdd/ReadVariableOp!^conv3d_410/Conv3D/ReadVariableOp"^conv3d_411/BiasAdd/ReadVariableOp!^conv3d_411/Conv3D/ReadVariableOp"^conv3d_412/BiasAdd/ReadVariableOp!^conv3d_412/Conv3D/ReadVariableOp"^conv3d_413/BiasAdd/ReadVariableOp!^conv3d_413/Conv3D/ReadVariableOp"^conv3d_414/BiasAdd/ReadVariableOp!^conv3d_414/Conv3D/ReadVariableOp"^conv3d_415/BiasAdd/ReadVariableOp!^conv3d_415/Conv3D/ReadVariableOp"^conv3d_416/BiasAdd/ReadVariableOp!^conv3d_416/Conv3D/ReadVariableOp"^conv3d_417/BiasAdd/ReadVariableOp!^conv3d_417/Conv3D/ReadVariableOp"^conv3d_418/BiasAdd/ReadVariableOp!^conv3d_418/Conv3D/ReadVariableOp"^conv3d_419/BiasAdd/ReadVariableOp!^conv3d_419/Conv3D/ReadVariableOp"^conv3d_420/BiasAdd/ReadVariableOp!^conv3d_420/Conv3D/ReadVariableOp"^conv3d_421/BiasAdd/ReadVariableOp!^conv3d_421/Conv3D/ReadVariableOp"^conv3d_422/BiasAdd/ReadVariableOp!^conv3d_422/Conv3D/ReadVariableOp"^conv3d_423/BiasAdd/ReadVariableOp!^conv3d_423/Conv3D/ReadVariableOp"^conv3d_424/BiasAdd/ReadVariableOp!^conv3d_424/Conv3D/ReadVariableOp"^conv3d_425/BiasAdd/ReadVariableOp!^conv3d_425/Conv3D/ReadVariableOp"^conv3d_426/BiasAdd/ReadVariableOp!^conv3d_426/Conv3D/ReadVariableOp"^conv3d_427/BiasAdd/ReadVariableOp!^conv3d_427/Conv3D/ReadVariableOp"^conv3d_428/BiasAdd/ReadVariableOp!^conv3d_428/Conv3D/ReadVariableOp"^conv3d_429/BiasAdd/ReadVariableOp!^conv3d_429/Conv3D/ReadVariableOp"^conv3d_430/BiasAdd/ReadVariableOp!^conv3d_430/Conv3D/ReadVariableOp"^conv3d_431/BiasAdd/ReadVariableOp!^conv3d_431/Conv3D/ReadVariableOp+^conv3d_transpose_60/BiasAdd/ReadVariableOp4^conv3d_transpose_60/conv3d_transpose/ReadVariableOp+^conv3d_transpose_61/BiasAdd/ReadVariableOp4^conv3d_transpose_61/conv3d_transpose/ReadVariableOp+^conv3d_transpose_62/BiasAdd/ReadVariableOp4^conv3d_transpose_62/conv3d_transpose/ReadVariableOp+^conv3d_transpose_63/BiasAdd/ReadVariableOp4^conv3d_transpose_63/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_405/BiasAdd/ReadVariableOp!conv3d_405/BiasAdd/ReadVariableOp2D
 conv3d_405/Conv3D/ReadVariableOp conv3d_405/Conv3D/ReadVariableOp2F
!conv3d_406/BiasAdd/ReadVariableOp!conv3d_406/BiasAdd/ReadVariableOp2D
 conv3d_406/Conv3D/ReadVariableOp conv3d_406/Conv3D/ReadVariableOp2F
!conv3d_407/BiasAdd/ReadVariableOp!conv3d_407/BiasAdd/ReadVariableOp2D
 conv3d_407/Conv3D/ReadVariableOp conv3d_407/Conv3D/ReadVariableOp2F
!conv3d_408/BiasAdd/ReadVariableOp!conv3d_408/BiasAdd/ReadVariableOp2D
 conv3d_408/Conv3D/ReadVariableOp conv3d_408/Conv3D/ReadVariableOp2F
!conv3d_409/BiasAdd/ReadVariableOp!conv3d_409/BiasAdd/ReadVariableOp2D
 conv3d_409/Conv3D/ReadVariableOp conv3d_409/Conv3D/ReadVariableOp2F
!conv3d_410/BiasAdd/ReadVariableOp!conv3d_410/BiasAdd/ReadVariableOp2D
 conv3d_410/Conv3D/ReadVariableOp conv3d_410/Conv3D/ReadVariableOp2F
!conv3d_411/BiasAdd/ReadVariableOp!conv3d_411/BiasAdd/ReadVariableOp2D
 conv3d_411/Conv3D/ReadVariableOp conv3d_411/Conv3D/ReadVariableOp2F
!conv3d_412/BiasAdd/ReadVariableOp!conv3d_412/BiasAdd/ReadVariableOp2D
 conv3d_412/Conv3D/ReadVariableOp conv3d_412/Conv3D/ReadVariableOp2F
!conv3d_413/BiasAdd/ReadVariableOp!conv3d_413/BiasAdd/ReadVariableOp2D
 conv3d_413/Conv3D/ReadVariableOp conv3d_413/Conv3D/ReadVariableOp2F
!conv3d_414/BiasAdd/ReadVariableOp!conv3d_414/BiasAdd/ReadVariableOp2D
 conv3d_414/Conv3D/ReadVariableOp conv3d_414/Conv3D/ReadVariableOp2F
!conv3d_415/BiasAdd/ReadVariableOp!conv3d_415/BiasAdd/ReadVariableOp2D
 conv3d_415/Conv3D/ReadVariableOp conv3d_415/Conv3D/ReadVariableOp2F
!conv3d_416/BiasAdd/ReadVariableOp!conv3d_416/BiasAdd/ReadVariableOp2D
 conv3d_416/Conv3D/ReadVariableOp conv3d_416/Conv3D/ReadVariableOp2F
!conv3d_417/BiasAdd/ReadVariableOp!conv3d_417/BiasAdd/ReadVariableOp2D
 conv3d_417/Conv3D/ReadVariableOp conv3d_417/Conv3D/ReadVariableOp2F
!conv3d_418/BiasAdd/ReadVariableOp!conv3d_418/BiasAdd/ReadVariableOp2D
 conv3d_418/Conv3D/ReadVariableOp conv3d_418/Conv3D/ReadVariableOp2F
!conv3d_419/BiasAdd/ReadVariableOp!conv3d_419/BiasAdd/ReadVariableOp2D
 conv3d_419/Conv3D/ReadVariableOp conv3d_419/Conv3D/ReadVariableOp2F
!conv3d_420/BiasAdd/ReadVariableOp!conv3d_420/BiasAdd/ReadVariableOp2D
 conv3d_420/Conv3D/ReadVariableOp conv3d_420/Conv3D/ReadVariableOp2F
!conv3d_421/BiasAdd/ReadVariableOp!conv3d_421/BiasAdd/ReadVariableOp2D
 conv3d_421/Conv3D/ReadVariableOp conv3d_421/Conv3D/ReadVariableOp2F
!conv3d_422/BiasAdd/ReadVariableOp!conv3d_422/BiasAdd/ReadVariableOp2D
 conv3d_422/Conv3D/ReadVariableOp conv3d_422/Conv3D/ReadVariableOp2F
!conv3d_423/BiasAdd/ReadVariableOp!conv3d_423/BiasAdd/ReadVariableOp2D
 conv3d_423/Conv3D/ReadVariableOp conv3d_423/Conv3D/ReadVariableOp2F
!conv3d_424/BiasAdd/ReadVariableOp!conv3d_424/BiasAdd/ReadVariableOp2D
 conv3d_424/Conv3D/ReadVariableOp conv3d_424/Conv3D/ReadVariableOp2F
!conv3d_425/BiasAdd/ReadVariableOp!conv3d_425/BiasAdd/ReadVariableOp2D
 conv3d_425/Conv3D/ReadVariableOp conv3d_425/Conv3D/ReadVariableOp2F
!conv3d_426/BiasAdd/ReadVariableOp!conv3d_426/BiasAdd/ReadVariableOp2D
 conv3d_426/Conv3D/ReadVariableOp conv3d_426/Conv3D/ReadVariableOp2F
!conv3d_427/BiasAdd/ReadVariableOp!conv3d_427/BiasAdd/ReadVariableOp2D
 conv3d_427/Conv3D/ReadVariableOp conv3d_427/Conv3D/ReadVariableOp2F
!conv3d_428/BiasAdd/ReadVariableOp!conv3d_428/BiasAdd/ReadVariableOp2D
 conv3d_428/Conv3D/ReadVariableOp conv3d_428/Conv3D/ReadVariableOp2F
!conv3d_429/BiasAdd/ReadVariableOp!conv3d_429/BiasAdd/ReadVariableOp2D
 conv3d_429/Conv3D/ReadVariableOp conv3d_429/Conv3D/ReadVariableOp2F
!conv3d_430/BiasAdd/ReadVariableOp!conv3d_430/BiasAdd/ReadVariableOp2D
 conv3d_430/Conv3D/ReadVariableOp conv3d_430/Conv3D/ReadVariableOp2F
!conv3d_431/BiasAdd/ReadVariableOp!conv3d_431/BiasAdd/ReadVariableOp2D
 conv3d_431/Conv3D/ReadVariableOp conv3d_431/Conv3D/ReadVariableOp2X
*conv3d_transpose_60/BiasAdd/ReadVariableOp*conv3d_transpose_60/BiasAdd/ReadVariableOp2j
3conv3d_transpose_60/conv3d_transpose/ReadVariableOp3conv3d_transpose_60/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_61/BiasAdd/ReadVariableOp*conv3d_transpose_61/BiasAdd/ReadVariableOp2j
3conv3d_transpose_61/conv3d_transpose/ReadVariableOp3conv3d_transpose_61/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_62/BiasAdd/ReadVariableOp*conv3d_transpose_62/BiasAdd/ReadVariableOp2j
3conv3d_transpose_62/conv3d_transpose/ReadVariableOp3conv3d_transpose_62/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_63/BiasAdd/ReadVariableOp*conv3d_transpose_63/BiasAdd/ReadVariableOp2j
3conv3d_transpose_63/conv3d_transpose/ReadVariableOp3conv3d_transpose_63/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

<
!__inference__wrapped_model_481940
input_16P
2model_15_conv3d_405_conv3d_readvariableop_resource:A
3model_15_conv3d_405_biasadd_readvariableop_resource:P
2model_15_conv3d_406_conv3d_readvariableop_resource:A
3model_15_conv3d_406_biasadd_readvariableop_resource:P
2model_15_conv3d_407_conv3d_readvariableop_resource: A
3model_15_conv3d_407_biasadd_readvariableop_resource: P
2model_15_conv3d_408_conv3d_readvariableop_resource:  A
3model_15_conv3d_408_biasadd_readvariableop_resource: P
2model_15_conv3d_409_conv3d_readvariableop_resource: @A
3model_15_conv3d_409_biasadd_readvariableop_resource:@P
2model_15_conv3d_410_conv3d_readvariableop_resource:@@A
3model_15_conv3d_410_biasadd_readvariableop_resource:@Q
2model_15_conv3d_411_conv3d_readvariableop_resource:@B
3model_15_conv3d_411_biasadd_readvariableop_resource:	R
2model_15_conv3d_412_conv3d_readvariableop_resource:B
3model_15_conv3d_412_biasadd_readvariableop_resource:	R
2model_15_conv3d_413_conv3d_readvariableop_resource:B
3model_15_conv3d_413_biasadd_readvariableop_resource:	R
2model_15_conv3d_414_conv3d_readvariableop_resource:B
3model_15_conv3d_414_biasadd_readvariableop_resource:	e
Emodel_15_conv3d_transpose_60_conv3d_transpose_readvariableop_resource:K
<model_15_conv3d_transpose_60_biasadd_readvariableop_resource:	R
2model_15_conv3d_415_conv3d_readvariableop_resource:B
3model_15_conv3d_415_biasadd_readvariableop_resource:	R
2model_15_conv3d_416_conv3d_readvariableop_resource:B
3model_15_conv3d_416_biasadd_readvariableop_resource:	R
2model_15_conv3d_417_conv3d_readvariableop_resource:B
3model_15_conv3d_417_biasadd_readvariableop_resource:	R
2model_15_conv3d_418_conv3d_readvariableop_resource:B
3model_15_conv3d_418_biasadd_readvariableop_resource:	d
Emodel_15_conv3d_transpose_61_conv3d_transpose_readvariableop_resource:@J
<model_15_conv3d_transpose_61_biasadd_readvariableop_resource:@P
2model_15_conv3d_419_conv3d_readvariableop_resource:@@A
3model_15_conv3d_419_biasadd_readvariableop_resource:@Q
2model_15_conv3d_420_conv3d_readvariableop_resource:@A
3model_15_conv3d_420_biasadd_readvariableop_resource:@P
2model_15_conv3d_421_conv3d_readvariableop_resource:@@A
3model_15_conv3d_421_biasadd_readvariableop_resource:@P
2model_15_conv3d_422_conv3d_readvariableop_resource:@@A
3model_15_conv3d_422_biasadd_readvariableop_resource:@c
Emodel_15_conv3d_transpose_62_conv3d_transpose_readvariableop_resource: @J
<model_15_conv3d_transpose_62_biasadd_readvariableop_resource: P
2model_15_conv3d_423_conv3d_readvariableop_resource:  A
3model_15_conv3d_423_biasadd_readvariableop_resource: P
2model_15_conv3d_424_conv3d_readvariableop_resource:@ A
3model_15_conv3d_424_biasadd_readvariableop_resource: P
2model_15_conv3d_425_conv3d_readvariableop_resource:  A
3model_15_conv3d_425_biasadd_readvariableop_resource: P
2model_15_conv3d_426_conv3d_readvariableop_resource:  A
3model_15_conv3d_426_biasadd_readvariableop_resource: c
Emodel_15_conv3d_transpose_63_conv3d_transpose_readvariableop_resource: J
<model_15_conv3d_transpose_63_biasadd_readvariableop_resource:P
2model_15_conv3d_427_conv3d_readvariableop_resource:A
3model_15_conv3d_427_biasadd_readvariableop_resource:P
2model_15_conv3d_428_conv3d_readvariableop_resource: A
3model_15_conv3d_428_biasadd_readvariableop_resource:P
2model_15_conv3d_429_conv3d_readvariableop_resource:A
3model_15_conv3d_429_biasadd_readvariableop_resource:P
2model_15_conv3d_430_conv3d_readvariableop_resource:A
3model_15_conv3d_430_biasadd_readvariableop_resource:P
2model_15_conv3d_431_conv3d_readvariableop_resource:A
3model_15_conv3d_431_biasadd_readvariableop_resource:
identityЂ*model_15/conv3d_405/BiasAdd/ReadVariableOpЂ)model_15/conv3d_405/Conv3D/ReadVariableOpЂ*model_15/conv3d_406/BiasAdd/ReadVariableOpЂ)model_15/conv3d_406/Conv3D/ReadVariableOpЂ*model_15/conv3d_407/BiasAdd/ReadVariableOpЂ)model_15/conv3d_407/Conv3D/ReadVariableOpЂ*model_15/conv3d_408/BiasAdd/ReadVariableOpЂ)model_15/conv3d_408/Conv3D/ReadVariableOpЂ*model_15/conv3d_409/BiasAdd/ReadVariableOpЂ)model_15/conv3d_409/Conv3D/ReadVariableOpЂ*model_15/conv3d_410/BiasAdd/ReadVariableOpЂ)model_15/conv3d_410/Conv3D/ReadVariableOpЂ*model_15/conv3d_411/BiasAdd/ReadVariableOpЂ)model_15/conv3d_411/Conv3D/ReadVariableOpЂ*model_15/conv3d_412/BiasAdd/ReadVariableOpЂ)model_15/conv3d_412/Conv3D/ReadVariableOpЂ*model_15/conv3d_413/BiasAdd/ReadVariableOpЂ)model_15/conv3d_413/Conv3D/ReadVariableOpЂ*model_15/conv3d_414/BiasAdd/ReadVariableOpЂ)model_15/conv3d_414/Conv3D/ReadVariableOpЂ*model_15/conv3d_415/BiasAdd/ReadVariableOpЂ)model_15/conv3d_415/Conv3D/ReadVariableOpЂ*model_15/conv3d_416/BiasAdd/ReadVariableOpЂ)model_15/conv3d_416/Conv3D/ReadVariableOpЂ*model_15/conv3d_417/BiasAdd/ReadVariableOpЂ)model_15/conv3d_417/Conv3D/ReadVariableOpЂ*model_15/conv3d_418/BiasAdd/ReadVariableOpЂ)model_15/conv3d_418/Conv3D/ReadVariableOpЂ*model_15/conv3d_419/BiasAdd/ReadVariableOpЂ)model_15/conv3d_419/Conv3D/ReadVariableOpЂ*model_15/conv3d_420/BiasAdd/ReadVariableOpЂ)model_15/conv3d_420/Conv3D/ReadVariableOpЂ*model_15/conv3d_421/BiasAdd/ReadVariableOpЂ)model_15/conv3d_421/Conv3D/ReadVariableOpЂ*model_15/conv3d_422/BiasAdd/ReadVariableOpЂ)model_15/conv3d_422/Conv3D/ReadVariableOpЂ*model_15/conv3d_423/BiasAdd/ReadVariableOpЂ)model_15/conv3d_423/Conv3D/ReadVariableOpЂ*model_15/conv3d_424/BiasAdd/ReadVariableOpЂ)model_15/conv3d_424/Conv3D/ReadVariableOpЂ*model_15/conv3d_425/BiasAdd/ReadVariableOpЂ)model_15/conv3d_425/Conv3D/ReadVariableOpЂ*model_15/conv3d_426/BiasAdd/ReadVariableOpЂ)model_15/conv3d_426/Conv3D/ReadVariableOpЂ*model_15/conv3d_427/BiasAdd/ReadVariableOpЂ)model_15/conv3d_427/Conv3D/ReadVariableOpЂ*model_15/conv3d_428/BiasAdd/ReadVariableOpЂ)model_15/conv3d_428/Conv3D/ReadVariableOpЂ*model_15/conv3d_429/BiasAdd/ReadVariableOpЂ)model_15/conv3d_429/Conv3D/ReadVariableOpЂ*model_15/conv3d_430/BiasAdd/ReadVariableOpЂ)model_15/conv3d_430/Conv3D/ReadVariableOpЂ*model_15/conv3d_431/BiasAdd/ReadVariableOpЂ)model_15/conv3d_431/Conv3D/ReadVariableOpЂ3model_15/conv3d_transpose_60/BiasAdd/ReadVariableOpЂ<model_15/conv3d_transpose_60/conv3d_transpose/ReadVariableOpЂ3model_15/conv3d_transpose_61/BiasAdd/ReadVariableOpЂ<model_15/conv3d_transpose_61/conv3d_transpose/ReadVariableOpЂ3model_15/conv3d_transpose_62/BiasAdd/ReadVariableOpЂ<model_15/conv3d_transpose_62/conv3d_transpose/ReadVariableOpЂ3model_15/conv3d_transpose_63/BiasAdd/ReadVariableOpЂ<model_15/conv3d_transpose_63/conv3d_transpose/ReadVariableOp 
'model_15/zero_padding3d_15/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     К
model_15/zero_padding3d_15/PadPadinput_160model_15/zero_padding3d_15/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_15/conv3d_405/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_405_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_15/conv3d_405/Conv3DConv3D'model_15/zero_padding3d_15/Pad:output:01model_15/conv3d_405/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_405/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_15/conv3d_405/BiasAddBiasAdd#model_15/conv3d_405/Conv3D:output:02model_15/conv3d_405/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_15/conv3d_405/ReluRelu$model_15/conv3d_405/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_15/conv3d_406/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_406_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_15/conv3d_406/Conv3DConv3D&model_15/conv3d_405/Relu:activations:01model_15/conv3d_406/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_406/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_406_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_15/conv3d_406/BiasAddBiasAdd#model_15/conv3d_406/Conv3D:output:02model_15/conv3d_406/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_15/conv3d_406/ReluRelu$model_15/conv3d_406/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџя
#model_15/max_pooling3d_60/MaxPool3D	MaxPool3D&model_15/conv3d_406/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
Ј
)model_15/conv3d_407/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_407_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0
model_15/conv3d_407/Conv3DConv3D,model_15/max_pooling3d_60/MaxPool3D:output:01model_15/conv3d_407/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_15/conv3d_407/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_407_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_15/conv3d_407/BiasAddBiasAdd#model_15/conv3d_407/Conv3D:output:02model_15/conv3d_407/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_407/ReluRelu$model_15/conv3d_407/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_15/conv3d_408/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_408_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_15/conv3d_408/Conv3DConv3D&model_15/conv3d_407/Relu:activations:01model_15/conv3d_408/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_15/conv3d_408/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_408_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_15/conv3d_408/BiasAddBiasAdd#model_15/conv3d_408/Conv3D:output:02model_15/conv3d_408/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_408/ReluRelu$model_15/conv3d_408/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ я
#model_15/max_pooling3d_61/MaxPool3D	MaxPool3D&model_15/conv3d_408/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	
Ј
)model_15/conv3d_409/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_409_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0
model_15/conv3d_409/Conv3DConv3D,model_15/max_pooling3d_61/MaxPool3D:output:01model_15/conv3d_409/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_15/conv3d_409/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_409_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_15/conv3d_409/BiasAddBiasAdd#model_15/conv3d_409/Conv3D:output:02model_15/conv3d_409/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_15/conv3d_409/ReluRelu$model_15/conv3d_409/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_15/conv3d_410/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_410_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_15/conv3d_410/Conv3DConv3D&model_15/conv3d_409/Relu:activations:01model_15/conv3d_410/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_15/conv3d_410/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_410_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_15/conv3d_410/BiasAddBiasAdd#model_15/conv3d_410/Conv3D:output:02model_15/conv3d_410/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_15/conv3d_410/ReluRelu$model_15/conv3d_410/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@я
#model_15/max_pooling3d_62/MaxPool3D	MaxPool3D&model_15/conv3d_410/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	
Љ
)model_15/conv3d_411/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_411_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0
model_15/conv3d_411/Conv3DConv3D,model_15/max_pooling3d_62/MaxPool3D:output:01model_15/conv3d_411/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_411/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_411_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_411/BiasAddBiasAdd#model_15/conv3d_411/Conv3D:output:02model_15/conv3d_411/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_411/ReluRelu$model_15/conv3d_411/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_15/conv3d_412/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_412_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_15/conv3d_412/Conv3DConv3D&model_15/conv3d_411/Relu:activations:01model_15/conv3d_412/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_412/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_412_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_412/BiasAddBiasAdd#model_15/conv3d_412/Conv3D:output:02model_15/conv3d_412/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_412/ReluRelu$model_15/conv3d_412/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
#model_15/max_pooling3d_63/MaxPool3D	MaxPool3D&model_15/conv3d_412/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
Њ
)model_15/conv3d_413/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_413_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_15/conv3d_413/Conv3DConv3D,model_15/max_pooling3d_63/MaxPool3D:output:01model_15/conv3d_413/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_413/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_413_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_413/BiasAddBiasAdd#model_15/conv3d_413/Conv3D:output:02model_15/conv3d_413/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_413/ReluRelu$model_15/conv3d_413/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_15/conv3d_414/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_414_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_15/conv3d_414/Conv3DConv3D&model_15/conv3d_413/Relu:activations:01model_15/conv3d_414/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_414/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_414_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_414/BiasAddBiasAdd#model_15/conv3d_414/Conv3D:output:02model_15/conv3d_414/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_414/ReluRelu$model_15/conv3d_414/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
"model_15/conv3d_transpose_60/ShapeShape&model_15/conv3d_414/Relu:activations:0*
T0*
_output_shapes
:z
0model_15/conv3d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_15/conv3d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_15/conv3d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_15/conv3d_transpose_60/strided_sliceStridedSlice+model_15/conv3d_transpose_60/Shape:output:09model_15/conv3d_transpose_60/strided_slice/stack:output:0;model_15/conv3d_transpose_60/strided_slice/stack_1:output:0;model_15/conv3d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_60/strided_slice_1StridedSlice+model_15/conv3d_transpose_60/Shape:output:0;model_15/conv3d_transpose_60/strided_slice_1/stack:output:0=model_15/conv3d_transpose_60/strided_slice_1/stack_1:output:0=model_15/conv3d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_60/strided_slice_2StridedSlice+model_15/conv3d_transpose_60/Shape:output:0;model_15/conv3d_transpose_60/strided_slice_2/stack:output:0=model_15/conv3d_transpose_60/strided_slice_2/stack_1:output:0=model_15/conv3d_transpose_60/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_60/strided_slice_3StridedSlice+model_15/conv3d_transpose_60/Shape:output:0;model_15/conv3d_transpose_60/strided_slice_3/stack:output:0=model_15/conv3d_transpose_60/strided_slice_3/stack_1:output:0=model_15/conv3d_transpose_60/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_15/conv3d_transpose_60/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_15/conv3d_transpose_60/mulMul5model_15/conv3d_transpose_60/strided_slice_1:output:0+model_15/conv3d_transpose_60/mul/y:output:0*
T0*
_output_shapes
: d
"model_15/conv3d_transpose_60/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
 model_15/conv3d_transpose_60/addAddV2$model_15/conv3d_transpose_60/mul:z:0+model_15/conv3d_transpose_60/add/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_60/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_60/mul_1Mul5model_15/conv3d_transpose_60/strided_slice_2:output:0-model_15/conv3d_transpose_60/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_60/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
"model_15/conv3d_transpose_60/add_1AddV2&model_15/conv3d_transpose_60/mul_1:z:0-model_15/conv3d_transpose_60/add_1/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_60/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_60/mul_2Mul5model_15/conv3d_transpose_60/strided_slice_3:output:0-model_15/conv3d_transpose_60/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_60/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
"model_15/conv3d_transpose_60/add_2AddV2&model_15/conv3d_transpose_60/mul_2:z:0-model_15/conv3d_transpose_60/add_2/y:output:0*
T0*
_output_shapes
: g
$model_15/conv3d_transpose_60/stack/4Const*
_output_shapes
: *
dtype0*
value
B :В
"model_15/conv3d_transpose_60/stackPack3model_15/conv3d_transpose_60/strided_slice:output:0$model_15/conv3d_transpose_60/add:z:0&model_15/conv3d_transpose_60/add_1:z:0&model_15/conv3d_transpose_60/add_2:z:0-model_15/conv3d_transpose_60/stack/4:output:0*
N*
T0*
_output_shapes
:а
<model_15/conv3d_transpose_60/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_15_conv3d_transpose_60_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0х
-model_15/conv3d_transpose_60/conv3d_transposeConv3DBackpropInputV2+model_15/conv3d_transpose_60/stack:output:0Dmodel_15/conv3d_transpose_60/conv3d_transpose/ReadVariableOp:value:0&model_15/conv3d_414/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	
­
3model_15/conv3d_transpose_60/BiasAdd/ReadVariableOpReadVariableOp<model_15_conv3d_transpose_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ў
$model_15/conv3d_transpose_60/BiasAddBiasAdd6model_15/conv3d_transpose_60/conv3d_transpose:output:0;model_15/conv3d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_15/conv3d_415/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_415_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_15/conv3d_415/Conv3DConv3D-model_15/conv3d_transpose_60/BiasAdd:output:01model_15/conv3d_415/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_415/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_415_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_415/BiasAddBiasAdd#model_15/conv3d_415/Conv3D:output:02model_15/conv3d_415/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_415/ReluRelu$model_15/conv3d_415/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe
#model_15/concatenate_60/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_15/concatenate_60/concatConcatV2&model_15/conv3d_412/Relu:activations:0&model_15/conv3d_415/Relu:activations:0,model_15/concatenate_60/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_15/conv3d_416/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_416_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_15/conv3d_416/Conv3DConv3D'model_15/concatenate_60/concat:output:01model_15/conv3d_416/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_416/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_416_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_416/BiasAddBiasAdd#model_15/conv3d_416/Conv3D:output:02model_15/conv3d_416/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_416/ReluRelu$model_15/conv3d_416/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_15/conv3d_417/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_417_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_15/conv3d_417/Conv3DConv3D&model_15/conv3d_416/Relu:activations:01model_15/conv3d_417/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_417/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_417_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_417/BiasAddBiasAdd#model_15/conv3d_417/Conv3D:output:02model_15/conv3d_417/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_417/ReluRelu$model_15/conv3d_417/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_15/conv3d_418/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_418_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_15/conv3d_418/Conv3DConv3D&model_15/conv3d_417/Relu:activations:01model_15/conv3d_418/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_418/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_418_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_15/conv3d_418/BiasAddBiasAdd#model_15/conv3d_418/Conv3D:output:02model_15/conv3d_418/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_418/ReluRelu$model_15/conv3d_418/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
"model_15/conv3d_transpose_61/ShapeShape&model_15/conv3d_418/Relu:activations:0*
T0*
_output_shapes
:z
0model_15/conv3d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_15/conv3d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_15/conv3d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_15/conv3d_transpose_61/strided_sliceStridedSlice+model_15/conv3d_transpose_61/Shape:output:09model_15/conv3d_transpose_61/strided_slice/stack:output:0;model_15/conv3d_transpose_61/strided_slice/stack_1:output:0;model_15/conv3d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_61/strided_slice_1StridedSlice+model_15/conv3d_transpose_61/Shape:output:0;model_15/conv3d_transpose_61/strided_slice_1/stack:output:0=model_15/conv3d_transpose_61/strided_slice_1/stack_1:output:0=model_15/conv3d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_61/strided_slice_2StridedSlice+model_15/conv3d_transpose_61/Shape:output:0;model_15/conv3d_transpose_61/strided_slice_2/stack:output:0=model_15/conv3d_transpose_61/strided_slice_2/stack_1:output:0=model_15/conv3d_transpose_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_61/strided_slice_3StridedSlice+model_15/conv3d_transpose_61/Shape:output:0;model_15/conv3d_transpose_61/strided_slice_3/stack:output:0=model_15/conv3d_transpose_61/strided_slice_3/stack_1:output:0=model_15/conv3d_transpose_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_15/conv3d_transpose_61/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_15/conv3d_transpose_61/mulMul5model_15/conv3d_transpose_61/strided_slice_1:output:0+model_15/conv3d_transpose_61/mul/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_61/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_61/mul_1Mul5model_15/conv3d_transpose_61/strided_slice_2:output:0-model_15/conv3d_transpose_61/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_61/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_61/mul_2Mul5model_15/conv3d_transpose_61/strided_slice_3:output:0-model_15/conv3d_transpose_61/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_61/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@В
"model_15/conv3d_transpose_61/stackPack3model_15/conv3d_transpose_61/strided_slice:output:0$model_15/conv3d_transpose_61/mul:z:0&model_15/conv3d_transpose_61/mul_1:z:0&model_15/conv3d_transpose_61/mul_2:z:0-model_15/conv3d_transpose_61/stack/4:output:0*
N*
T0*
_output_shapes
:Я
<model_15/conv3d_transpose_61/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_15_conv3d_transpose_61_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0у
-model_15/conv3d_transpose_61/conv3d_transposeConv3DBackpropInputV2+model_15/conv3d_transpose_61/stack:output:0Dmodel_15/conv3d_transpose_61/conv3d_transpose/ReadVariableOp:value:0&model_15/conv3d_418/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
Ќ
3model_15/conv3d_transpose_61/BiasAdd/ReadVariableOpReadVariableOp<model_15_conv3d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0§
$model_15/conv3d_transpose_61/BiasAddBiasAdd6model_15/conv3d_transpose_61/conv3d_transpose:output:0;model_15/conv3d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_15/conv3d_419/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_419_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_15/conv3d_419/Conv3DConv3D-model_15/conv3d_transpose_61/BiasAdd:output:01model_15/conv3d_419/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_15/conv3d_419/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_419_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_15/conv3d_419/BiasAddBiasAdd#model_15/conv3d_419/Conv3D:output:02model_15/conv3d_419/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_15/conv3d_419/ReluRelu$model_15/conv3d_419/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@e
#model_15/concatenate_61/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_15/concatenate_61/concatConcatV2&model_15/conv3d_410/Relu:activations:0&model_15/conv3d_419/Relu:activations:0,model_15/concatenate_61/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЉ
)model_15/conv3d_420/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_420_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0
model_15/conv3d_420/Conv3DConv3D'model_15/concatenate_61/concat:output:01model_15/conv3d_420/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_15/conv3d_420/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_420_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_15/conv3d_420/BiasAddBiasAdd#model_15/conv3d_420/Conv3D:output:02model_15/conv3d_420/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_15/conv3d_420/ReluRelu$model_15/conv3d_420/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_15/conv3d_421/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_421_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_15/conv3d_421/Conv3DConv3D&model_15/conv3d_420/Relu:activations:01model_15/conv3d_421/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_15/conv3d_421/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_421_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_15/conv3d_421/BiasAddBiasAdd#model_15/conv3d_421/Conv3D:output:02model_15/conv3d_421/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_15/conv3d_421/ReluRelu$model_15/conv3d_421/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_15/conv3d_422/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_422_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_15/conv3d_422/Conv3DConv3D&model_15/conv3d_421/Relu:activations:01model_15/conv3d_422/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_15/conv3d_422/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_422_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_15/conv3d_422/BiasAddBiasAdd#model_15/conv3d_422/Conv3D:output:02model_15/conv3d_422/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_15/conv3d_422/ReluRelu$model_15/conv3d_422/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@x
"model_15/conv3d_transpose_62/ShapeShape&model_15/conv3d_422/Relu:activations:0*
T0*
_output_shapes
:z
0model_15/conv3d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_15/conv3d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_15/conv3d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_15/conv3d_transpose_62/strided_sliceStridedSlice+model_15/conv3d_transpose_62/Shape:output:09model_15/conv3d_transpose_62/strided_slice/stack:output:0;model_15/conv3d_transpose_62/strided_slice/stack_1:output:0;model_15/conv3d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_62/strided_slice_1StridedSlice+model_15/conv3d_transpose_62/Shape:output:0;model_15/conv3d_transpose_62/strided_slice_1/stack:output:0=model_15/conv3d_transpose_62/strided_slice_1/stack_1:output:0=model_15/conv3d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_62/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_62/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_62/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_62/strided_slice_2StridedSlice+model_15/conv3d_transpose_62/Shape:output:0;model_15/conv3d_transpose_62/strided_slice_2/stack:output:0=model_15/conv3d_transpose_62/strided_slice_2/stack_1:output:0=model_15/conv3d_transpose_62/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_62/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_62/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_62/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_62/strided_slice_3StridedSlice+model_15/conv3d_transpose_62/Shape:output:0;model_15/conv3d_transpose_62/strided_slice_3/stack:output:0=model_15/conv3d_transpose_62/strided_slice_3/stack_1:output:0=model_15/conv3d_transpose_62/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_15/conv3d_transpose_62/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_15/conv3d_transpose_62/mulMul5model_15/conv3d_transpose_62/strided_slice_1:output:0+model_15/conv3d_transpose_62/mul/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_62/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_62/mul_1Mul5model_15/conv3d_transpose_62/strided_slice_2:output:0-model_15/conv3d_transpose_62/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_62/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_62/mul_2Mul5model_15/conv3d_transpose_62/strided_slice_3:output:0-model_15/conv3d_transpose_62/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_62/stack/4Const*
_output_shapes
: *
dtype0*
value	B : В
"model_15/conv3d_transpose_62/stackPack3model_15/conv3d_transpose_62/strided_slice:output:0$model_15/conv3d_transpose_62/mul:z:0&model_15/conv3d_transpose_62/mul_1:z:0&model_15/conv3d_transpose_62/mul_2:z:0-model_15/conv3d_transpose_62/stack/4:output:0*
N*
T0*
_output_shapes
:Ю
<model_15/conv3d_transpose_62/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_15_conv3d_transpose_62_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0у
-model_15/conv3d_transpose_62/conv3d_transposeConv3DBackpropInputV2+model_15/conv3d_transpose_62/stack:output:0Dmodel_15/conv3d_transpose_62/conv3d_transpose/ReadVariableOp:value:0&model_15/conv3d_422/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
Ќ
3model_15/conv3d_transpose_62/BiasAdd/ReadVariableOpReadVariableOp<model_15_conv3d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0§
$model_15/conv3d_transpose_62/BiasAddBiasAdd6model_15/conv3d_transpose_62/conv3d_transpose:output:0;model_15/conv3d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_15/conv3d_423/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_423_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_15/conv3d_423/Conv3DConv3D-model_15/conv3d_transpose_62/BiasAdd:output:01model_15/conv3d_423/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_15/conv3d_423/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_423_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_15/conv3d_423/BiasAddBiasAdd#model_15/conv3d_423/Conv3D:output:02model_15/conv3d_423/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_423/ReluRelu$model_15/conv3d_423/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ e
#model_15/concatenate_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_15/concatenate_62/concatConcatV2&model_15/conv3d_408/Relu:activations:0&model_15/conv3d_423/Relu:activations:0,model_15/concatenate_62/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_15/conv3d_424/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_424_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0
model_15/conv3d_424/Conv3DConv3D'model_15/concatenate_62/concat:output:01model_15/conv3d_424/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_15/conv3d_424/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_424_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_15/conv3d_424/BiasAddBiasAdd#model_15/conv3d_424/Conv3D:output:02model_15/conv3d_424/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_424/ReluRelu$model_15/conv3d_424/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_15/conv3d_425/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_425_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_15/conv3d_425/Conv3DConv3D&model_15/conv3d_424/Relu:activations:01model_15/conv3d_425/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_15/conv3d_425/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_425_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_15/conv3d_425/BiasAddBiasAdd#model_15/conv3d_425/Conv3D:output:02model_15/conv3d_425/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_425/ReluRelu$model_15/conv3d_425/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_15/conv3d_426/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_426_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_15/conv3d_426/Conv3DConv3D&model_15/conv3d_425/Relu:activations:01model_15/conv3d_426/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_15/conv3d_426/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_426_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_15/conv3d_426/BiasAddBiasAdd#model_15/conv3d_426/Conv3D:output:02model_15/conv3d_426/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_15/conv3d_426/ReluRelu$model_15/conv3d_426/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ x
"model_15/conv3d_transpose_63/ShapeShape&model_15/conv3d_426/Relu:activations:0*
T0*
_output_shapes
:z
0model_15/conv3d_transpose_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_15/conv3d_transpose_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_15/conv3d_transpose_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_15/conv3d_transpose_63/strided_sliceStridedSlice+model_15/conv3d_transpose_63/Shape:output:09model_15/conv3d_transpose_63/strided_slice/stack:output:0;model_15/conv3d_transpose_63/strided_slice/stack_1:output:0;model_15/conv3d_transpose_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_63/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_63/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_63/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_63/strided_slice_1StridedSlice+model_15/conv3d_transpose_63/Shape:output:0;model_15/conv3d_transpose_63/strided_slice_1/stack:output:0=model_15/conv3d_transpose_63/strided_slice_1/stack_1:output:0=model_15/conv3d_transpose_63/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_63/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_63/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_63/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_63/strided_slice_2StridedSlice+model_15/conv3d_transpose_63/Shape:output:0;model_15/conv3d_transpose_63/strided_slice_2/stack:output:0=model_15/conv3d_transpose_63/strided_slice_2/stack_1:output:0=model_15/conv3d_transpose_63/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_15/conv3d_transpose_63/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_63/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_15/conv3d_transpose_63/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_15/conv3d_transpose_63/strided_slice_3StridedSlice+model_15/conv3d_transpose_63/Shape:output:0;model_15/conv3d_transpose_63/strided_slice_3/stack:output:0=model_15/conv3d_transpose_63/strided_slice_3/stack_1:output:0=model_15/conv3d_transpose_63/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_15/conv3d_transpose_63/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_15/conv3d_transpose_63/mulMul5model_15/conv3d_transpose_63/strided_slice_1:output:0+model_15/conv3d_transpose_63/mul/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_63/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_63/mul_1Mul5model_15/conv3d_transpose_63/strided_slice_2:output:0-model_15/conv3d_transpose_63/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_63/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_15/conv3d_transpose_63/mul_2Mul5model_15/conv3d_transpose_63/strided_slice_3:output:0-model_15/conv3d_transpose_63/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_15/conv3d_transpose_63/stack/4Const*
_output_shapes
: *
dtype0*
value	B :В
"model_15/conv3d_transpose_63/stackPack3model_15/conv3d_transpose_63/strided_slice:output:0$model_15/conv3d_transpose_63/mul:z:0&model_15/conv3d_transpose_63/mul_1:z:0&model_15/conv3d_transpose_63/mul_2:z:0-model_15/conv3d_transpose_63/stack/4:output:0*
N*
T0*
_output_shapes
:Ю
<model_15/conv3d_transpose_63/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_15_conv3d_transpose_63_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0у
-model_15/conv3d_transpose_63/conv3d_transposeConv3DBackpropInputV2+model_15/conv3d_transpose_63/stack:output:0Dmodel_15/conv3d_transpose_63/conv3d_transpose/ReadVariableOp:value:0&model_15/conv3d_426/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
Ќ
3model_15/conv3d_transpose_63/BiasAdd/ReadVariableOpReadVariableOp<model_15_conv3d_transpose_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0§
$model_15/conv3d_transpose_63/BiasAddBiasAdd6model_15/conv3d_transpose_63/conv3d_transpose:output:0;model_15/conv3d_transpose_63/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_15/conv3d_427/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_427_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_15/conv3d_427/Conv3DConv3D-model_15/conv3d_transpose_63/BiasAdd:output:01model_15/conv3d_427/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_427/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_427_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_15/conv3d_427/BiasAddBiasAdd#model_15/conv3d_427/Conv3D:output:02model_15/conv3d_427/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_15/conv3d_427/ReluRelu$model_15/conv3d_427/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe
#model_15/concatenate_63/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_15/concatenate_63/concatConcatV2&model_15/conv3d_406/Relu:activations:0&model_15/conv3d_427/Relu:activations:0,model_15/concatenate_63/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_15/conv3d_428/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_428_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0
model_15/conv3d_428/Conv3DConv3D'model_15/concatenate_63/concat:output:01model_15/conv3d_428/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_428/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_428_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_15/conv3d_428/BiasAddBiasAdd#model_15/conv3d_428/Conv3D:output:02model_15/conv3d_428/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_15/conv3d_428/ReluRelu$model_15/conv3d_428/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_15/conv3d_429/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_429_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_15/conv3d_429/Conv3DConv3D&model_15/conv3d_428/Relu:activations:01model_15/conv3d_429/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_429/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_429_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_15/conv3d_429/BiasAddBiasAdd#model_15/conv3d_429/Conv3D:output:02model_15/conv3d_429/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_15/conv3d_429/ReluRelu$model_15/conv3d_429/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_15/conv3d_430/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_430_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_15/conv3d_430/Conv3DConv3D&model_15/conv3d_429/Relu:activations:01model_15/conv3d_430/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_430/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_430_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_15/conv3d_430/BiasAddBiasAdd#model_15/conv3d_430/Conv3D:output:02model_15/conv3d_430/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_15/conv3d_430/ReluRelu$model_15/conv3d_430/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
*model_15/cropping3d_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
,model_15/cropping3d_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
,model_15/cropping3d_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               
$model_15/cropping3d_15/strided_sliceStridedSlice&model_15/conv3d_430/Relu:activations:03model_15/cropping3d_15/strided_slice/stack:output:05model_15/cropping3d_15/strided_slice/stack_1:output:05model_15/cropping3d_15/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_maskЈ
)model_15/conv3d_431/Conv3D/ReadVariableOpReadVariableOp2model_15_conv3d_431_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_15/conv3d_431/Conv3DConv3D-model_15/cropping3d_15/strided_slice:output:01model_15/conv3d_431/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_15/conv3d_431/BiasAdd/ReadVariableOpReadVariableOp3model_15_conv3d_431_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_15/conv3d_431/BiasAddBiasAdd#model_15/conv3d_431/Conv3D:output:02model_15/conv3d_431/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentity$model_15/conv3d_431/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ§
NoOpNoOp+^model_15/conv3d_405/BiasAdd/ReadVariableOp*^model_15/conv3d_405/Conv3D/ReadVariableOp+^model_15/conv3d_406/BiasAdd/ReadVariableOp*^model_15/conv3d_406/Conv3D/ReadVariableOp+^model_15/conv3d_407/BiasAdd/ReadVariableOp*^model_15/conv3d_407/Conv3D/ReadVariableOp+^model_15/conv3d_408/BiasAdd/ReadVariableOp*^model_15/conv3d_408/Conv3D/ReadVariableOp+^model_15/conv3d_409/BiasAdd/ReadVariableOp*^model_15/conv3d_409/Conv3D/ReadVariableOp+^model_15/conv3d_410/BiasAdd/ReadVariableOp*^model_15/conv3d_410/Conv3D/ReadVariableOp+^model_15/conv3d_411/BiasAdd/ReadVariableOp*^model_15/conv3d_411/Conv3D/ReadVariableOp+^model_15/conv3d_412/BiasAdd/ReadVariableOp*^model_15/conv3d_412/Conv3D/ReadVariableOp+^model_15/conv3d_413/BiasAdd/ReadVariableOp*^model_15/conv3d_413/Conv3D/ReadVariableOp+^model_15/conv3d_414/BiasAdd/ReadVariableOp*^model_15/conv3d_414/Conv3D/ReadVariableOp+^model_15/conv3d_415/BiasAdd/ReadVariableOp*^model_15/conv3d_415/Conv3D/ReadVariableOp+^model_15/conv3d_416/BiasAdd/ReadVariableOp*^model_15/conv3d_416/Conv3D/ReadVariableOp+^model_15/conv3d_417/BiasAdd/ReadVariableOp*^model_15/conv3d_417/Conv3D/ReadVariableOp+^model_15/conv3d_418/BiasAdd/ReadVariableOp*^model_15/conv3d_418/Conv3D/ReadVariableOp+^model_15/conv3d_419/BiasAdd/ReadVariableOp*^model_15/conv3d_419/Conv3D/ReadVariableOp+^model_15/conv3d_420/BiasAdd/ReadVariableOp*^model_15/conv3d_420/Conv3D/ReadVariableOp+^model_15/conv3d_421/BiasAdd/ReadVariableOp*^model_15/conv3d_421/Conv3D/ReadVariableOp+^model_15/conv3d_422/BiasAdd/ReadVariableOp*^model_15/conv3d_422/Conv3D/ReadVariableOp+^model_15/conv3d_423/BiasAdd/ReadVariableOp*^model_15/conv3d_423/Conv3D/ReadVariableOp+^model_15/conv3d_424/BiasAdd/ReadVariableOp*^model_15/conv3d_424/Conv3D/ReadVariableOp+^model_15/conv3d_425/BiasAdd/ReadVariableOp*^model_15/conv3d_425/Conv3D/ReadVariableOp+^model_15/conv3d_426/BiasAdd/ReadVariableOp*^model_15/conv3d_426/Conv3D/ReadVariableOp+^model_15/conv3d_427/BiasAdd/ReadVariableOp*^model_15/conv3d_427/Conv3D/ReadVariableOp+^model_15/conv3d_428/BiasAdd/ReadVariableOp*^model_15/conv3d_428/Conv3D/ReadVariableOp+^model_15/conv3d_429/BiasAdd/ReadVariableOp*^model_15/conv3d_429/Conv3D/ReadVariableOp+^model_15/conv3d_430/BiasAdd/ReadVariableOp*^model_15/conv3d_430/Conv3D/ReadVariableOp+^model_15/conv3d_431/BiasAdd/ReadVariableOp*^model_15/conv3d_431/Conv3D/ReadVariableOp4^model_15/conv3d_transpose_60/BiasAdd/ReadVariableOp=^model_15/conv3d_transpose_60/conv3d_transpose/ReadVariableOp4^model_15/conv3d_transpose_61/BiasAdd/ReadVariableOp=^model_15/conv3d_transpose_61/conv3d_transpose/ReadVariableOp4^model_15/conv3d_transpose_62/BiasAdd/ReadVariableOp=^model_15/conv3d_transpose_62/conv3d_transpose/ReadVariableOp4^model_15/conv3d_transpose_63/BiasAdd/ReadVariableOp=^model_15/conv3d_transpose_63/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*model_15/conv3d_405/BiasAdd/ReadVariableOp*model_15/conv3d_405/BiasAdd/ReadVariableOp2V
)model_15/conv3d_405/Conv3D/ReadVariableOp)model_15/conv3d_405/Conv3D/ReadVariableOp2X
*model_15/conv3d_406/BiasAdd/ReadVariableOp*model_15/conv3d_406/BiasAdd/ReadVariableOp2V
)model_15/conv3d_406/Conv3D/ReadVariableOp)model_15/conv3d_406/Conv3D/ReadVariableOp2X
*model_15/conv3d_407/BiasAdd/ReadVariableOp*model_15/conv3d_407/BiasAdd/ReadVariableOp2V
)model_15/conv3d_407/Conv3D/ReadVariableOp)model_15/conv3d_407/Conv3D/ReadVariableOp2X
*model_15/conv3d_408/BiasAdd/ReadVariableOp*model_15/conv3d_408/BiasAdd/ReadVariableOp2V
)model_15/conv3d_408/Conv3D/ReadVariableOp)model_15/conv3d_408/Conv3D/ReadVariableOp2X
*model_15/conv3d_409/BiasAdd/ReadVariableOp*model_15/conv3d_409/BiasAdd/ReadVariableOp2V
)model_15/conv3d_409/Conv3D/ReadVariableOp)model_15/conv3d_409/Conv3D/ReadVariableOp2X
*model_15/conv3d_410/BiasAdd/ReadVariableOp*model_15/conv3d_410/BiasAdd/ReadVariableOp2V
)model_15/conv3d_410/Conv3D/ReadVariableOp)model_15/conv3d_410/Conv3D/ReadVariableOp2X
*model_15/conv3d_411/BiasAdd/ReadVariableOp*model_15/conv3d_411/BiasAdd/ReadVariableOp2V
)model_15/conv3d_411/Conv3D/ReadVariableOp)model_15/conv3d_411/Conv3D/ReadVariableOp2X
*model_15/conv3d_412/BiasAdd/ReadVariableOp*model_15/conv3d_412/BiasAdd/ReadVariableOp2V
)model_15/conv3d_412/Conv3D/ReadVariableOp)model_15/conv3d_412/Conv3D/ReadVariableOp2X
*model_15/conv3d_413/BiasAdd/ReadVariableOp*model_15/conv3d_413/BiasAdd/ReadVariableOp2V
)model_15/conv3d_413/Conv3D/ReadVariableOp)model_15/conv3d_413/Conv3D/ReadVariableOp2X
*model_15/conv3d_414/BiasAdd/ReadVariableOp*model_15/conv3d_414/BiasAdd/ReadVariableOp2V
)model_15/conv3d_414/Conv3D/ReadVariableOp)model_15/conv3d_414/Conv3D/ReadVariableOp2X
*model_15/conv3d_415/BiasAdd/ReadVariableOp*model_15/conv3d_415/BiasAdd/ReadVariableOp2V
)model_15/conv3d_415/Conv3D/ReadVariableOp)model_15/conv3d_415/Conv3D/ReadVariableOp2X
*model_15/conv3d_416/BiasAdd/ReadVariableOp*model_15/conv3d_416/BiasAdd/ReadVariableOp2V
)model_15/conv3d_416/Conv3D/ReadVariableOp)model_15/conv3d_416/Conv3D/ReadVariableOp2X
*model_15/conv3d_417/BiasAdd/ReadVariableOp*model_15/conv3d_417/BiasAdd/ReadVariableOp2V
)model_15/conv3d_417/Conv3D/ReadVariableOp)model_15/conv3d_417/Conv3D/ReadVariableOp2X
*model_15/conv3d_418/BiasAdd/ReadVariableOp*model_15/conv3d_418/BiasAdd/ReadVariableOp2V
)model_15/conv3d_418/Conv3D/ReadVariableOp)model_15/conv3d_418/Conv3D/ReadVariableOp2X
*model_15/conv3d_419/BiasAdd/ReadVariableOp*model_15/conv3d_419/BiasAdd/ReadVariableOp2V
)model_15/conv3d_419/Conv3D/ReadVariableOp)model_15/conv3d_419/Conv3D/ReadVariableOp2X
*model_15/conv3d_420/BiasAdd/ReadVariableOp*model_15/conv3d_420/BiasAdd/ReadVariableOp2V
)model_15/conv3d_420/Conv3D/ReadVariableOp)model_15/conv3d_420/Conv3D/ReadVariableOp2X
*model_15/conv3d_421/BiasAdd/ReadVariableOp*model_15/conv3d_421/BiasAdd/ReadVariableOp2V
)model_15/conv3d_421/Conv3D/ReadVariableOp)model_15/conv3d_421/Conv3D/ReadVariableOp2X
*model_15/conv3d_422/BiasAdd/ReadVariableOp*model_15/conv3d_422/BiasAdd/ReadVariableOp2V
)model_15/conv3d_422/Conv3D/ReadVariableOp)model_15/conv3d_422/Conv3D/ReadVariableOp2X
*model_15/conv3d_423/BiasAdd/ReadVariableOp*model_15/conv3d_423/BiasAdd/ReadVariableOp2V
)model_15/conv3d_423/Conv3D/ReadVariableOp)model_15/conv3d_423/Conv3D/ReadVariableOp2X
*model_15/conv3d_424/BiasAdd/ReadVariableOp*model_15/conv3d_424/BiasAdd/ReadVariableOp2V
)model_15/conv3d_424/Conv3D/ReadVariableOp)model_15/conv3d_424/Conv3D/ReadVariableOp2X
*model_15/conv3d_425/BiasAdd/ReadVariableOp*model_15/conv3d_425/BiasAdd/ReadVariableOp2V
)model_15/conv3d_425/Conv3D/ReadVariableOp)model_15/conv3d_425/Conv3D/ReadVariableOp2X
*model_15/conv3d_426/BiasAdd/ReadVariableOp*model_15/conv3d_426/BiasAdd/ReadVariableOp2V
)model_15/conv3d_426/Conv3D/ReadVariableOp)model_15/conv3d_426/Conv3D/ReadVariableOp2X
*model_15/conv3d_427/BiasAdd/ReadVariableOp*model_15/conv3d_427/BiasAdd/ReadVariableOp2V
)model_15/conv3d_427/Conv3D/ReadVariableOp)model_15/conv3d_427/Conv3D/ReadVariableOp2X
*model_15/conv3d_428/BiasAdd/ReadVariableOp*model_15/conv3d_428/BiasAdd/ReadVariableOp2V
)model_15/conv3d_428/Conv3D/ReadVariableOp)model_15/conv3d_428/Conv3D/ReadVariableOp2X
*model_15/conv3d_429/BiasAdd/ReadVariableOp*model_15/conv3d_429/BiasAdd/ReadVariableOp2V
)model_15/conv3d_429/Conv3D/ReadVariableOp)model_15/conv3d_429/Conv3D/ReadVariableOp2X
*model_15/conv3d_430/BiasAdd/ReadVariableOp*model_15/conv3d_430/BiasAdd/ReadVariableOp2V
)model_15/conv3d_430/Conv3D/ReadVariableOp)model_15/conv3d_430/Conv3D/ReadVariableOp2X
*model_15/conv3d_431/BiasAdd/ReadVariableOp*model_15/conv3d_431/BiasAdd/ReadVariableOp2V
)model_15/conv3d_431/Conv3D/ReadVariableOp)model_15/conv3d_431/Conv3D/ReadVariableOp2j
3model_15/conv3d_transpose_60/BiasAdd/ReadVariableOp3model_15/conv3d_transpose_60/BiasAdd/ReadVariableOp2|
<model_15/conv3d_transpose_60/conv3d_transpose/ReadVariableOp<model_15/conv3d_transpose_60/conv3d_transpose/ReadVariableOp2j
3model_15/conv3d_transpose_61/BiasAdd/ReadVariableOp3model_15/conv3d_transpose_61/BiasAdd/ReadVariableOp2|
<model_15/conv3d_transpose_61/conv3d_transpose/ReadVariableOp<model_15/conv3d_transpose_61/conv3d_transpose/ReadVariableOp2j
3model_15/conv3d_transpose_62/BiasAdd/ReadVariableOp3model_15/conv3d_transpose_62/BiasAdd/ReadVariableOp2|
<model_15/conv3d_transpose_62/conv3d_transpose/ReadVariableOp<model_15/conv3d_transpose_62/conv3d_transpose/ReadVariableOp2j
3model_15/conv3d_transpose_63/BiasAdd/ReadVariableOp3model_15/conv3d_transpose_63/BiasAdd/ReadVariableOp2|
<model_15/conv3d_transpose_63/conv3d_transpose/ReadVariableOp<model_15/conv3d_transpose_63/conv3d_transpose/ReadVariableOp:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_16
Ы

F__inference_conv3d_425_layer_call_and_return_conditional_losses_485776

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ы
J
.__inference_cropping3d_15_layer_call_fn_485938

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_482203
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_405_layer_call_and_return_conditional_losses_482225

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_413_layer_call_fn_485348

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_413_layer_call_and_return_conditional_losses_482365
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_408_layer_call_and_return_conditional_losses_482277

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
з

F__inference_conv3d_413_layer_call_and_return_conditional_losses_482365

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_406_layer_call_and_return_conditional_losses_482242

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_421_layer_call_and_return_conditional_losses_485639

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ыа
д
D__inference_model_15_layer_call_and_return_conditional_losses_483459

inputs/
conv3d_405_483294:
conv3d_405_483296:/
conv3d_406_483299:
conv3d_406_483301:/
conv3d_407_483305: 
conv3d_407_483307: /
conv3d_408_483310:  
conv3d_408_483312: /
conv3d_409_483316: @
conv3d_409_483318:@/
conv3d_410_483321:@@
conv3d_410_483323:@0
conv3d_411_483327:@ 
conv3d_411_483329:	1
conv3d_412_483332: 
conv3d_412_483334:	1
conv3d_413_483338: 
conv3d_413_483340:	1
conv3d_414_483343: 
conv3d_414_483345:	:
conv3d_transpose_60_483348:)
conv3d_transpose_60_483350:	1
conv3d_415_483353: 
conv3d_415_483355:	1
conv3d_416_483359: 
conv3d_416_483361:	1
conv3d_417_483364: 
conv3d_417_483366:	1
conv3d_418_483369: 
conv3d_418_483371:	9
conv3d_transpose_61_483374:@(
conv3d_transpose_61_483376:@/
conv3d_419_483379:@@
conv3d_419_483381:@0
conv3d_420_483385:@
conv3d_420_483387:@/
conv3d_421_483390:@@
conv3d_421_483392:@/
conv3d_422_483395:@@
conv3d_422_483397:@8
conv3d_transpose_62_483400: @(
conv3d_transpose_62_483402: /
conv3d_423_483405:  
conv3d_423_483407: /
conv3d_424_483411:@ 
conv3d_424_483413: /
conv3d_425_483416:  
conv3d_425_483418: /
conv3d_426_483421:  
conv3d_426_483423: 8
conv3d_transpose_63_483426: (
conv3d_transpose_63_483428:/
conv3d_427_483431:
conv3d_427_483433:/
conv3d_428_483437: 
conv3d_428_483439:/
conv3d_429_483442:
conv3d_429_483444:/
conv3d_430_483447:
conv3d_430_483449:/
conv3d_431_483453:
conv3d_431_483455:
identityЂ"conv3d_405/StatefulPartitionedCallЂ"conv3d_406/StatefulPartitionedCallЂ"conv3d_407/StatefulPartitionedCallЂ"conv3d_408/StatefulPartitionedCallЂ"conv3d_409/StatefulPartitionedCallЂ"conv3d_410/StatefulPartitionedCallЂ"conv3d_411/StatefulPartitionedCallЂ"conv3d_412/StatefulPartitionedCallЂ"conv3d_413/StatefulPartitionedCallЂ"conv3d_414/StatefulPartitionedCallЂ"conv3d_415/StatefulPartitionedCallЂ"conv3d_416/StatefulPartitionedCallЂ"conv3d_417/StatefulPartitionedCallЂ"conv3d_418/StatefulPartitionedCallЂ"conv3d_419/StatefulPartitionedCallЂ"conv3d_420/StatefulPartitionedCallЂ"conv3d_421/StatefulPartitionedCallЂ"conv3d_422/StatefulPartitionedCallЂ"conv3d_423/StatefulPartitionedCallЂ"conv3d_424/StatefulPartitionedCallЂ"conv3d_425/StatefulPartitionedCallЂ"conv3d_426/StatefulPartitionedCallЂ"conv3d_427/StatefulPartitionedCallЂ"conv3d_428/StatefulPartitionedCallЂ"conv3d_429/StatefulPartitionedCallЂ"conv3d_430/StatefulPartitionedCallЂ"conv3d_431/StatefulPartitionedCallЂ+conv3d_transpose_60/StatefulPartitionedCallЂ+conv3d_transpose_61/StatefulPartitionedCallЂ+conv3d_transpose_62/StatefulPartitionedCallЂ+conv3d_transpose_63/StatefulPartitionedCallє
!zero_padding3d_15/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_481950Ц
"conv3d_405/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_15/PartitionedCall:output:0conv3d_405_483294conv3d_405_483296*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_405_layer_call_and_return_conditional_losses_482225Ч
"conv3d_406/StatefulPartitionedCallStatefulPartitionedCall+conv3d_405/StatefulPartitionedCall:output:0conv3d_406_483299conv3d_406_483301*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_406_layer_call_and_return_conditional_losses_482242
 max_pooling3d_60/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_481962Х
"conv3d_407/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_60/PartitionedCall:output:0conv3d_407_483305conv3d_407_483307*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_407_layer_call_and_return_conditional_losses_482260Ч
"conv3d_408/StatefulPartitionedCallStatefulPartitionedCall+conv3d_407/StatefulPartitionedCall:output:0conv3d_408_483310conv3d_408_483312*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_408_layer_call_and_return_conditional_losses_482277
 max_pooling3d_61/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_481974Х
"conv3d_409/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_61/PartitionedCall:output:0conv3d_409_483316conv3d_409_483318*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_409_layer_call_and_return_conditional_losses_482295Ч
"conv3d_410/StatefulPartitionedCallStatefulPartitionedCall+conv3d_409/StatefulPartitionedCall:output:0conv3d_410_483321conv3d_410_483323*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_410_layer_call_and_return_conditional_losses_482312
 max_pooling3d_62/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_481986Ц
"conv3d_411/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_62/PartitionedCall:output:0conv3d_411_483327conv3d_411_483329*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_411_layer_call_and_return_conditional_losses_482330Ш
"conv3d_412/StatefulPartitionedCallStatefulPartitionedCall+conv3d_411/StatefulPartitionedCall:output:0conv3d_412_483332conv3d_412_483334*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_412_layer_call_and_return_conditional_losses_482347
 max_pooling3d_63/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_481998Ц
"conv3d_413/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_63/PartitionedCall:output:0conv3d_413_483338conv3d_413_483340*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_413_layer_call_and_return_conditional_losses_482365Ш
"conv3d_414/StatefulPartitionedCallStatefulPartitionedCall+conv3d_413/StatefulPartitionedCall:output:0conv3d_414_483343conv3d_414_483345*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_414_layer_call_and_return_conditional_losses_482382ь
+conv3d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall+conv3d_414/StatefulPartitionedCall:output:0conv3d_transpose_60_483348conv3d_transpose_60_483350*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_482046б
"conv3d_415/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_60/StatefulPartitionedCall:output:0conv3d_415_483353conv3d_415_483355*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_415_layer_call_and_return_conditional_losses_482404Т
concatenate_60/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0+conv3d_415/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_60_layer_call_and_return_conditional_losses_482417Ф
"conv3d_416/StatefulPartitionedCallStatefulPartitionedCall'concatenate_60/PartitionedCall:output:0conv3d_416_483359conv3d_416_483361*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_416_layer_call_and_return_conditional_losses_482430Ш
"conv3d_417/StatefulPartitionedCallStatefulPartitionedCall+conv3d_416/StatefulPartitionedCall:output:0conv3d_417_483364conv3d_417_483366*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_417_layer_call_and_return_conditional_losses_482447Ш
"conv3d_418/StatefulPartitionedCallStatefulPartitionedCall+conv3d_417/StatefulPartitionedCall:output:0conv3d_418_483369conv3d_418_483371*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_418_layer_call_and_return_conditional_losses_482464ы
+conv3d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall+conv3d_418/StatefulPartitionedCall:output:0conv3d_transpose_61_483374conv3d_transpose_61_483376*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_482092а
"conv3d_419/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_61/StatefulPartitionedCall:output:0conv3d_419_483379conv3d_419_483381*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_419_layer_call_and_return_conditional_losses_482486Т
concatenate_61/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0+conv3d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_61_layer_call_and_return_conditional_losses_482499У
"conv3d_420/StatefulPartitionedCallStatefulPartitionedCall'concatenate_61/PartitionedCall:output:0conv3d_420_483385conv3d_420_483387*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_420_layer_call_and_return_conditional_losses_482512Ч
"conv3d_421/StatefulPartitionedCallStatefulPartitionedCall+conv3d_420/StatefulPartitionedCall:output:0conv3d_421_483390conv3d_421_483392*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_421_layer_call_and_return_conditional_losses_482529Ч
"conv3d_422/StatefulPartitionedCallStatefulPartitionedCall+conv3d_421/StatefulPartitionedCall:output:0conv3d_422_483395conv3d_422_483397*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_422_layer_call_and_return_conditional_losses_482546ы
+conv3d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall+conv3d_422/StatefulPartitionedCall:output:0conv3d_transpose_62_483400conv3d_transpose_62_483402*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_482138а
"conv3d_423/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_62/StatefulPartitionedCall:output:0conv3d_423_483405conv3d_423_483407*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_423_layer_call_and_return_conditional_losses_482568С
concatenate_62/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0+conv3d_423/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_62_layer_call_and_return_conditional_losses_482581У
"conv3d_424/StatefulPartitionedCallStatefulPartitionedCall'concatenate_62/PartitionedCall:output:0conv3d_424_483411conv3d_424_483413*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_424_layer_call_and_return_conditional_losses_482594Ч
"conv3d_425/StatefulPartitionedCallStatefulPartitionedCall+conv3d_424/StatefulPartitionedCall:output:0conv3d_425_483416conv3d_425_483418*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_425_layer_call_and_return_conditional_losses_482611Ч
"conv3d_426/StatefulPartitionedCallStatefulPartitionedCall+conv3d_425/StatefulPartitionedCall:output:0conv3d_426_483421conv3d_426_483423*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_426_layer_call_and_return_conditional_losses_482628ы
+conv3d_transpose_63/StatefulPartitionedCallStatefulPartitionedCall+conv3d_426/StatefulPartitionedCall:output:0conv3d_transpose_63_483426conv3d_transpose_63_483428*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_482184а
"conv3d_427/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_63/StatefulPartitionedCall:output:0conv3d_427_483431conv3d_427_483433*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_427_layer_call_and_return_conditional_losses_482650С
concatenate_63/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0+conv3d_427/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_63_layer_call_and_return_conditional_losses_482663У
"conv3d_428/StatefulPartitionedCallStatefulPartitionedCall'concatenate_63/PartitionedCall:output:0conv3d_428_483437conv3d_428_483439*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_428_layer_call_and_return_conditional_losses_482676Ч
"conv3d_429/StatefulPartitionedCallStatefulPartitionedCall+conv3d_428/StatefulPartitionedCall:output:0conv3d_429_483442conv3d_429_483444*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_429_layer_call_and_return_conditional_losses_482693Ч
"conv3d_430/StatefulPartitionedCallStatefulPartitionedCall+conv3d_429/StatefulPartitionedCall:output:0conv3d_430_483447conv3d_430_483449*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_430_layer_call_and_return_conditional_losses_482710
cropping3d_15/PartitionedCallPartitionedCall+conv3d_430/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_482203Т
"conv3d_431/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_15/PartitionedCall:output:0conv3d_431_483453conv3d_431_483455*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_431_layer_call_and_return_conditional_losses_482727Ё
IdentityIdentity+conv3d_431/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_405/StatefulPartitionedCall#^conv3d_406/StatefulPartitionedCall#^conv3d_407/StatefulPartitionedCall#^conv3d_408/StatefulPartitionedCall#^conv3d_409/StatefulPartitionedCall#^conv3d_410/StatefulPartitionedCall#^conv3d_411/StatefulPartitionedCall#^conv3d_412/StatefulPartitionedCall#^conv3d_413/StatefulPartitionedCall#^conv3d_414/StatefulPartitionedCall#^conv3d_415/StatefulPartitionedCall#^conv3d_416/StatefulPartitionedCall#^conv3d_417/StatefulPartitionedCall#^conv3d_418/StatefulPartitionedCall#^conv3d_419/StatefulPartitionedCall#^conv3d_420/StatefulPartitionedCall#^conv3d_421/StatefulPartitionedCall#^conv3d_422/StatefulPartitionedCall#^conv3d_423/StatefulPartitionedCall#^conv3d_424/StatefulPartitionedCall#^conv3d_425/StatefulPartitionedCall#^conv3d_426/StatefulPartitionedCall#^conv3d_427/StatefulPartitionedCall#^conv3d_428/StatefulPartitionedCall#^conv3d_429/StatefulPartitionedCall#^conv3d_430/StatefulPartitionedCall#^conv3d_431/StatefulPartitionedCall,^conv3d_transpose_60/StatefulPartitionedCall,^conv3d_transpose_61/StatefulPartitionedCall,^conv3d_transpose_62/StatefulPartitionedCall,^conv3d_transpose_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_405/StatefulPartitionedCall"conv3d_405/StatefulPartitionedCall2H
"conv3d_406/StatefulPartitionedCall"conv3d_406/StatefulPartitionedCall2H
"conv3d_407/StatefulPartitionedCall"conv3d_407/StatefulPartitionedCall2H
"conv3d_408/StatefulPartitionedCall"conv3d_408/StatefulPartitionedCall2H
"conv3d_409/StatefulPartitionedCall"conv3d_409/StatefulPartitionedCall2H
"conv3d_410/StatefulPartitionedCall"conv3d_410/StatefulPartitionedCall2H
"conv3d_411/StatefulPartitionedCall"conv3d_411/StatefulPartitionedCall2H
"conv3d_412/StatefulPartitionedCall"conv3d_412/StatefulPartitionedCall2H
"conv3d_413/StatefulPartitionedCall"conv3d_413/StatefulPartitionedCall2H
"conv3d_414/StatefulPartitionedCall"conv3d_414/StatefulPartitionedCall2H
"conv3d_415/StatefulPartitionedCall"conv3d_415/StatefulPartitionedCall2H
"conv3d_416/StatefulPartitionedCall"conv3d_416/StatefulPartitionedCall2H
"conv3d_417/StatefulPartitionedCall"conv3d_417/StatefulPartitionedCall2H
"conv3d_418/StatefulPartitionedCall"conv3d_418/StatefulPartitionedCall2H
"conv3d_419/StatefulPartitionedCall"conv3d_419/StatefulPartitionedCall2H
"conv3d_420/StatefulPartitionedCall"conv3d_420/StatefulPartitionedCall2H
"conv3d_421/StatefulPartitionedCall"conv3d_421/StatefulPartitionedCall2H
"conv3d_422/StatefulPartitionedCall"conv3d_422/StatefulPartitionedCall2H
"conv3d_423/StatefulPartitionedCall"conv3d_423/StatefulPartitionedCall2H
"conv3d_424/StatefulPartitionedCall"conv3d_424/StatefulPartitionedCall2H
"conv3d_425/StatefulPartitionedCall"conv3d_425/StatefulPartitionedCall2H
"conv3d_426/StatefulPartitionedCall"conv3d_426/StatefulPartitionedCall2H
"conv3d_427/StatefulPartitionedCall"conv3d_427/StatefulPartitionedCall2H
"conv3d_428/StatefulPartitionedCall"conv3d_428/StatefulPartitionedCall2H
"conv3d_429/StatefulPartitionedCall"conv3d_429/StatefulPartitionedCall2H
"conv3d_430/StatefulPartitionedCall"conv3d_430/StatefulPartitionedCall2H
"conv3d_431/StatefulPartitionedCall"conv3d_431/StatefulPartitionedCall2Z
+conv3d_transpose_60/StatefulPartitionedCall+conv3d_transpose_60/StatefulPartitionedCall2Z
+conv3d_transpose_61/StatefulPartitionedCall+conv3d_transpose_61/StatefulPartitionedCall2Z
+conv3d_transpose_62/StatefulPartitionedCall+conv3d_transpose_62/StatefulPartitionedCall2Z
+conv3d_transpose_63/StatefulPartitionedCall+conv3d_transpose_63/StatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_425_layer_call_and_return_conditional_losses_482611

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
з

F__inference_conv3d_418_layer_call_and_return_conditional_losses_482464

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_407_layer_call_fn_485198

inputs%
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_407_layer_call_and_return_conditional_losses_482260
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ё
M
1__inference_max_pooling3d_61_layer_call_fn_485234

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_481974
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_426_layer_call_fn_485785

inputs%
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_426_layer_call_and_return_conditional_losses_482628
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ї
t
J__inference_concatenate_62_layer_call_and_return_conditional_losses_482581

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ :8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ :v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:vr
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
і
І
+__inference_conv3d_411_layer_call_fn_485298

inputs&
unknown:@
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_411_layer_call_and_return_conditional_losses_482330
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

F__inference_conv3d_424_layer_call_and_return_conditional_losses_485756

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

F__inference_conv3d_426_layer_call_and_return_conditional_losses_482628

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Я

F__inference_conv3d_420_layer_call_and_return_conditional_losses_485619

inputs=
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_415_layer_call_and_return_conditional_losses_485449

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
І&
Ѓ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_485429

inputsH
(conv3d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
add_2/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_2AddV2	mul_2:z:0add_2/y:output:0*
T0*
_output_shapes
: J
stack/4Const*
_output_shapes
: *
dtype0*
value
B :
stackPackstrided_slice:output:0add:z:0	add_1:z:0	add_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityBiasAdd:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
­
4__inference_conv3d_transpose_63_layer_call_fn_485805

inputs%
unknown: 
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_482184
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ё
M
1__inference_max_pooling3d_62_layer_call_fn_485284

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_481986
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Г 
­
)__inference_model_15_layer_call_fn_484188

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3: 
	unknown_4: '
	unknown_5:  
	unknown_6: '
	unknown_7: @
	unknown_8:@'
	unknown_9:@@

unknown_10:@)

unknown_11:@

unknown_12:	*

unknown_13:

unknown_14:	*

unknown_15:

unknown_16:	*

unknown_17:

unknown_18:	*

unknown_19:

unknown_20:	*

unknown_21:

unknown_22:	*

unknown_23:

unknown_24:	*

unknown_25:

unknown_26:	*

unknown_27:

unknown_28:	)

unknown_29:@

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:@

unknown_34:@(

unknown_35:@@

unknown_36:@(

unknown_37:@@

unknown_38:@(

unknown_39: @

unknown_40: (

unknown_41:  

unknown_42: (

unknown_43:@ 

unknown_44: (

unknown_45:  

unknown_46: (

unknown_47:  

unknown_48: (

unknown_49: 

unknown_50:(

unknown_51:

unknown_52:(

unknown_53: 

unknown_54:(

unknown_55:

unknown_56:(

unknown_57:

unknown_58:(

unknown_59:

unknown_60:
identityЂStatefulPartitionedCallТ	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_482734
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_430_layer_call_and_return_conditional_losses_485933

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_412_layer_call_fn_485318

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_412_layer_call_and_return_conditional_losses_482347
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_427_layer_call_and_return_conditional_losses_482650

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к
h
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_485339

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к
h
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_485289

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_419_layer_call_and_return_conditional_losses_482486

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ы

F__inference_conv3d_422_layer_call_and_return_conditional_losses_482546

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
г

F__inference_conv3d_411_layer_call_and_return_conditional_losses_485309

inputs=
conv3d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ж"
 
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_485840

inputsF
(conv3d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ы

F__inference_conv3d_423_layer_call_and_return_conditional_losses_485723

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Е
v
J__inference_concatenate_60_layer_call_and_return_conditional_losses_485462
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesx
v:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:y u
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:yu
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1
з

F__inference_conv3d_415_layer_call_and_return_conditional_losses_482404

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_425_layer_call_fn_485765

inputs%
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_425_layer_call_and_return_conditional_losses_482611
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ё
M
1__inference_max_pooling3d_60_layer_call_fn_485184

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_481962
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_423_layer_call_fn_485712

inputs%
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_423_layer_call_and_return_conditional_losses_482568
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ы

F__inference_conv3d_407_layer_call_and_return_conditional_losses_485209

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Њ
i
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_481950

inputs
identity
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_416_layer_call_and_return_conditional_losses_482430

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_413_layer_call_and_return_conditional_losses_485359

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ба
ж
D__inference_model_15_layer_call_and_return_conditional_losses_483884
input_16/
conv3d_405_483719:
conv3d_405_483721:/
conv3d_406_483724:
conv3d_406_483726:/
conv3d_407_483730: 
conv3d_407_483732: /
conv3d_408_483735:  
conv3d_408_483737: /
conv3d_409_483741: @
conv3d_409_483743:@/
conv3d_410_483746:@@
conv3d_410_483748:@0
conv3d_411_483752:@ 
conv3d_411_483754:	1
conv3d_412_483757: 
conv3d_412_483759:	1
conv3d_413_483763: 
conv3d_413_483765:	1
conv3d_414_483768: 
conv3d_414_483770:	:
conv3d_transpose_60_483773:)
conv3d_transpose_60_483775:	1
conv3d_415_483778: 
conv3d_415_483780:	1
conv3d_416_483784: 
conv3d_416_483786:	1
conv3d_417_483789: 
conv3d_417_483791:	1
conv3d_418_483794: 
conv3d_418_483796:	9
conv3d_transpose_61_483799:@(
conv3d_transpose_61_483801:@/
conv3d_419_483804:@@
conv3d_419_483806:@0
conv3d_420_483810:@
conv3d_420_483812:@/
conv3d_421_483815:@@
conv3d_421_483817:@/
conv3d_422_483820:@@
conv3d_422_483822:@8
conv3d_transpose_62_483825: @(
conv3d_transpose_62_483827: /
conv3d_423_483830:  
conv3d_423_483832: /
conv3d_424_483836:@ 
conv3d_424_483838: /
conv3d_425_483841:  
conv3d_425_483843: /
conv3d_426_483846:  
conv3d_426_483848: 8
conv3d_transpose_63_483851: (
conv3d_transpose_63_483853:/
conv3d_427_483856:
conv3d_427_483858:/
conv3d_428_483862: 
conv3d_428_483864:/
conv3d_429_483867:
conv3d_429_483869:/
conv3d_430_483872:
conv3d_430_483874:/
conv3d_431_483878:
conv3d_431_483880:
identityЂ"conv3d_405/StatefulPartitionedCallЂ"conv3d_406/StatefulPartitionedCallЂ"conv3d_407/StatefulPartitionedCallЂ"conv3d_408/StatefulPartitionedCallЂ"conv3d_409/StatefulPartitionedCallЂ"conv3d_410/StatefulPartitionedCallЂ"conv3d_411/StatefulPartitionedCallЂ"conv3d_412/StatefulPartitionedCallЂ"conv3d_413/StatefulPartitionedCallЂ"conv3d_414/StatefulPartitionedCallЂ"conv3d_415/StatefulPartitionedCallЂ"conv3d_416/StatefulPartitionedCallЂ"conv3d_417/StatefulPartitionedCallЂ"conv3d_418/StatefulPartitionedCallЂ"conv3d_419/StatefulPartitionedCallЂ"conv3d_420/StatefulPartitionedCallЂ"conv3d_421/StatefulPartitionedCallЂ"conv3d_422/StatefulPartitionedCallЂ"conv3d_423/StatefulPartitionedCallЂ"conv3d_424/StatefulPartitionedCallЂ"conv3d_425/StatefulPartitionedCallЂ"conv3d_426/StatefulPartitionedCallЂ"conv3d_427/StatefulPartitionedCallЂ"conv3d_428/StatefulPartitionedCallЂ"conv3d_429/StatefulPartitionedCallЂ"conv3d_430/StatefulPartitionedCallЂ"conv3d_431/StatefulPartitionedCallЂ+conv3d_transpose_60/StatefulPartitionedCallЂ+conv3d_transpose_61/StatefulPartitionedCallЂ+conv3d_transpose_62/StatefulPartitionedCallЂ+conv3d_transpose_63/StatefulPartitionedCallі
!zero_padding3d_15/PartitionedCallPartitionedCallinput_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_481950Ц
"conv3d_405/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_15/PartitionedCall:output:0conv3d_405_483719conv3d_405_483721*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_405_layer_call_and_return_conditional_losses_482225Ч
"conv3d_406/StatefulPartitionedCallStatefulPartitionedCall+conv3d_405/StatefulPartitionedCall:output:0conv3d_406_483724conv3d_406_483726*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_406_layer_call_and_return_conditional_losses_482242
 max_pooling3d_60/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_481962Х
"conv3d_407/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_60/PartitionedCall:output:0conv3d_407_483730conv3d_407_483732*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_407_layer_call_and_return_conditional_losses_482260Ч
"conv3d_408/StatefulPartitionedCallStatefulPartitionedCall+conv3d_407/StatefulPartitionedCall:output:0conv3d_408_483735conv3d_408_483737*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_408_layer_call_and_return_conditional_losses_482277
 max_pooling3d_61/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_481974Х
"conv3d_409/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_61/PartitionedCall:output:0conv3d_409_483741conv3d_409_483743*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_409_layer_call_and_return_conditional_losses_482295Ч
"conv3d_410/StatefulPartitionedCallStatefulPartitionedCall+conv3d_409/StatefulPartitionedCall:output:0conv3d_410_483746conv3d_410_483748*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_410_layer_call_and_return_conditional_losses_482312
 max_pooling3d_62/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_481986Ц
"conv3d_411/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_62/PartitionedCall:output:0conv3d_411_483752conv3d_411_483754*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_411_layer_call_and_return_conditional_losses_482330Ш
"conv3d_412/StatefulPartitionedCallStatefulPartitionedCall+conv3d_411/StatefulPartitionedCall:output:0conv3d_412_483757conv3d_412_483759*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_412_layer_call_and_return_conditional_losses_482347
 max_pooling3d_63/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_481998Ц
"conv3d_413/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_63/PartitionedCall:output:0conv3d_413_483763conv3d_413_483765*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_413_layer_call_and_return_conditional_losses_482365Ш
"conv3d_414/StatefulPartitionedCallStatefulPartitionedCall+conv3d_413/StatefulPartitionedCall:output:0conv3d_414_483768conv3d_414_483770*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_414_layer_call_and_return_conditional_losses_482382ь
+conv3d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall+conv3d_414/StatefulPartitionedCall:output:0conv3d_transpose_60_483773conv3d_transpose_60_483775*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_482046б
"conv3d_415/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_60/StatefulPartitionedCall:output:0conv3d_415_483778conv3d_415_483780*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_415_layer_call_and_return_conditional_losses_482404Т
concatenate_60/PartitionedCallPartitionedCall+conv3d_412/StatefulPartitionedCall:output:0+conv3d_415/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_60_layer_call_and_return_conditional_losses_482417Ф
"conv3d_416/StatefulPartitionedCallStatefulPartitionedCall'concatenate_60/PartitionedCall:output:0conv3d_416_483784conv3d_416_483786*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_416_layer_call_and_return_conditional_losses_482430Ш
"conv3d_417/StatefulPartitionedCallStatefulPartitionedCall+conv3d_416/StatefulPartitionedCall:output:0conv3d_417_483789conv3d_417_483791*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_417_layer_call_and_return_conditional_losses_482447Ш
"conv3d_418/StatefulPartitionedCallStatefulPartitionedCall+conv3d_417/StatefulPartitionedCall:output:0conv3d_418_483794conv3d_418_483796*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_418_layer_call_and_return_conditional_losses_482464ы
+conv3d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall+conv3d_418/StatefulPartitionedCall:output:0conv3d_transpose_61_483799conv3d_transpose_61_483801*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_482092а
"conv3d_419/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_61/StatefulPartitionedCall:output:0conv3d_419_483804conv3d_419_483806*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_419_layer_call_and_return_conditional_losses_482486Т
concatenate_61/PartitionedCallPartitionedCall+conv3d_410/StatefulPartitionedCall:output:0+conv3d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_61_layer_call_and_return_conditional_losses_482499У
"conv3d_420/StatefulPartitionedCallStatefulPartitionedCall'concatenate_61/PartitionedCall:output:0conv3d_420_483810conv3d_420_483812*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_420_layer_call_and_return_conditional_losses_482512Ч
"conv3d_421/StatefulPartitionedCallStatefulPartitionedCall+conv3d_420/StatefulPartitionedCall:output:0conv3d_421_483815conv3d_421_483817*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_421_layer_call_and_return_conditional_losses_482529Ч
"conv3d_422/StatefulPartitionedCallStatefulPartitionedCall+conv3d_421/StatefulPartitionedCall:output:0conv3d_422_483820conv3d_422_483822*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_422_layer_call_and_return_conditional_losses_482546ы
+conv3d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall+conv3d_422/StatefulPartitionedCall:output:0conv3d_transpose_62_483825conv3d_transpose_62_483827*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_482138а
"conv3d_423/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_62/StatefulPartitionedCall:output:0conv3d_423_483830conv3d_423_483832*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_423_layer_call_and_return_conditional_losses_482568С
concatenate_62/PartitionedCallPartitionedCall+conv3d_408/StatefulPartitionedCall:output:0+conv3d_423/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_62_layer_call_and_return_conditional_losses_482581У
"conv3d_424/StatefulPartitionedCallStatefulPartitionedCall'concatenate_62/PartitionedCall:output:0conv3d_424_483836conv3d_424_483838*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_424_layer_call_and_return_conditional_losses_482594Ч
"conv3d_425/StatefulPartitionedCallStatefulPartitionedCall+conv3d_424/StatefulPartitionedCall:output:0conv3d_425_483841conv3d_425_483843*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_425_layer_call_and_return_conditional_losses_482611Ч
"conv3d_426/StatefulPartitionedCallStatefulPartitionedCall+conv3d_425/StatefulPartitionedCall:output:0conv3d_426_483846conv3d_426_483848*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_426_layer_call_and_return_conditional_losses_482628ы
+conv3d_transpose_63/StatefulPartitionedCallStatefulPartitionedCall+conv3d_426/StatefulPartitionedCall:output:0conv3d_transpose_63_483851conv3d_transpose_63_483853*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_482184а
"conv3d_427/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_63/StatefulPartitionedCall:output:0conv3d_427_483856conv3d_427_483858*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_427_layer_call_and_return_conditional_losses_482650С
concatenate_63/PartitionedCallPartitionedCall+conv3d_406/StatefulPartitionedCall:output:0+conv3d_427/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_63_layer_call_and_return_conditional_losses_482663У
"conv3d_428/StatefulPartitionedCallStatefulPartitionedCall'concatenate_63/PartitionedCall:output:0conv3d_428_483862conv3d_428_483864*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_428_layer_call_and_return_conditional_losses_482676Ч
"conv3d_429/StatefulPartitionedCallStatefulPartitionedCall+conv3d_428/StatefulPartitionedCall:output:0conv3d_429_483867conv3d_429_483869*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_429_layer_call_and_return_conditional_losses_482693Ч
"conv3d_430/StatefulPartitionedCallStatefulPartitionedCall+conv3d_429/StatefulPartitionedCall:output:0conv3d_430_483872conv3d_430_483874*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_430_layer_call_and_return_conditional_losses_482710
cropping3d_15/PartitionedCallPartitionedCall+conv3d_430/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_482203Т
"conv3d_431/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_15/PartitionedCall:output:0conv3d_431_483878conv3d_431_483880*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_431_layer_call_and_return_conditional_losses_482727Ё
IdentityIdentity+conv3d_431/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_405/StatefulPartitionedCall#^conv3d_406/StatefulPartitionedCall#^conv3d_407/StatefulPartitionedCall#^conv3d_408/StatefulPartitionedCall#^conv3d_409/StatefulPartitionedCall#^conv3d_410/StatefulPartitionedCall#^conv3d_411/StatefulPartitionedCall#^conv3d_412/StatefulPartitionedCall#^conv3d_413/StatefulPartitionedCall#^conv3d_414/StatefulPartitionedCall#^conv3d_415/StatefulPartitionedCall#^conv3d_416/StatefulPartitionedCall#^conv3d_417/StatefulPartitionedCall#^conv3d_418/StatefulPartitionedCall#^conv3d_419/StatefulPartitionedCall#^conv3d_420/StatefulPartitionedCall#^conv3d_421/StatefulPartitionedCall#^conv3d_422/StatefulPartitionedCall#^conv3d_423/StatefulPartitionedCall#^conv3d_424/StatefulPartitionedCall#^conv3d_425/StatefulPartitionedCall#^conv3d_426/StatefulPartitionedCall#^conv3d_427/StatefulPartitionedCall#^conv3d_428/StatefulPartitionedCall#^conv3d_429/StatefulPartitionedCall#^conv3d_430/StatefulPartitionedCall#^conv3d_431/StatefulPartitionedCall,^conv3d_transpose_60/StatefulPartitionedCall,^conv3d_transpose_61/StatefulPartitionedCall,^conv3d_transpose_62/StatefulPartitionedCall,^conv3d_transpose_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_405/StatefulPartitionedCall"conv3d_405/StatefulPartitionedCall2H
"conv3d_406/StatefulPartitionedCall"conv3d_406/StatefulPartitionedCall2H
"conv3d_407/StatefulPartitionedCall"conv3d_407/StatefulPartitionedCall2H
"conv3d_408/StatefulPartitionedCall"conv3d_408/StatefulPartitionedCall2H
"conv3d_409/StatefulPartitionedCall"conv3d_409/StatefulPartitionedCall2H
"conv3d_410/StatefulPartitionedCall"conv3d_410/StatefulPartitionedCall2H
"conv3d_411/StatefulPartitionedCall"conv3d_411/StatefulPartitionedCall2H
"conv3d_412/StatefulPartitionedCall"conv3d_412/StatefulPartitionedCall2H
"conv3d_413/StatefulPartitionedCall"conv3d_413/StatefulPartitionedCall2H
"conv3d_414/StatefulPartitionedCall"conv3d_414/StatefulPartitionedCall2H
"conv3d_415/StatefulPartitionedCall"conv3d_415/StatefulPartitionedCall2H
"conv3d_416/StatefulPartitionedCall"conv3d_416/StatefulPartitionedCall2H
"conv3d_417/StatefulPartitionedCall"conv3d_417/StatefulPartitionedCall2H
"conv3d_418/StatefulPartitionedCall"conv3d_418/StatefulPartitionedCall2H
"conv3d_419/StatefulPartitionedCall"conv3d_419/StatefulPartitionedCall2H
"conv3d_420/StatefulPartitionedCall"conv3d_420/StatefulPartitionedCall2H
"conv3d_421/StatefulPartitionedCall"conv3d_421/StatefulPartitionedCall2H
"conv3d_422/StatefulPartitionedCall"conv3d_422/StatefulPartitionedCall2H
"conv3d_423/StatefulPartitionedCall"conv3d_423/StatefulPartitionedCall2H
"conv3d_424/StatefulPartitionedCall"conv3d_424/StatefulPartitionedCall2H
"conv3d_425/StatefulPartitionedCall"conv3d_425/StatefulPartitionedCall2H
"conv3d_426/StatefulPartitionedCall"conv3d_426/StatefulPartitionedCall2H
"conv3d_427/StatefulPartitionedCall"conv3d_427/StatefulPartitionedCall2H
"conv3d_428/StatefulPartitionedCall"conv3d_428/StatefulPartitionedCall2H
"conv3d_429/StatefulPartitionedCall"conv3d_429/StatefulPartitionedCall2H
"conv3d_430/StatefulPartitionedCall"conv3d_430/StatefulPartitionedCall2H
"conv3d_431/StatefulPartitionedCall"conv3d_431/StatefulPartitionedCall2Z
+conv3d_transpose_60/StatefulPartitionedCall+conv3d_transpose_60/StatefulPartitionedCall2Z
+conv3d_transpose_61/StatefulPartitionedCall+conv3d_transpose_61/StatefulPartitionedCall2Z
+conv3d_transpose_62/StatefulPartitionedCall+conv3d_transpose_62/StatefulPartitionedCall2Z
+conv3d_transpose_63/StatefulPartitionedCall+conv3d_transpose_63/StatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_16
Ѓ
[
/__inference_concatenate_60_layer_call_fn_485455
inputs_0
inputs_1
identityэ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_60_layer_call_and_return_conditional_losses_482417
IdentityIdentityPartitionedCall:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesx
v:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:y u
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:yu
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1
к
h
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_481974

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Г 
­
)__inference_model_15_layer_call_fn_484317

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3: 
	unknown_4: '
	unknown_5:  
	unknown_6: '
	unknown_7: @
	unknown_8:@'
	unknown_9:@@

unknown_10:@)

unknown_11:@

unknown_12:	*

unknown_13:

unknown_14:	*

unknown_15:

unknown_16:	*

unknown_17:

unknown_18:	*

unknown_19:

unknown_20:	*

unknown_21:

unknown_22:	*

unknown_23:

unknown_24:	*

unknown_25:

unknown_26:	*

unknown_27:

unknown_28:	)

unknown_29:@

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:@

unknown_34:@(

unknown_35:@@

unknown_36:@(

unknown_37:@@

unknown_38:@(

unknown_39: @

unknown_40: (

unknown_41:  

unknown_42: (

unknown_43:@ 

unknown_44: (

unknown_45:  

unknown_46: (

unknown_47:  

unknown_48: (

unknown_49: 

unknown_50:(

unknown_51:

unknown_52:(

unknown_53: 

unknown_54:(

unknown_55:

unknown_56:(

unknown_57:

unknown_58:(

unknown_59:

unknown_60:
identityЂStatefulPartitionedCallТ	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_483459
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Џ
v
J__inference_concatenate_63_layer_call_and_return_conditional_losses_485873
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1
љ
Ї
+__inference_conv3d_415_layer_call_fn_485438

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_415_layer_call_and_return_conditional_losses_482404
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
e
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_485946

inputs
identityp
strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 r
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    r
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Б
v
J__inference_concatenate_61_layer_call_and_return_conditional_losses_485599
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/1
Ы

F__inference_conv3d_428_layer_call_and_return_conditional_losses_485893

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_405_layer_call_fn_485148

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_405_layer_call_and_return_conditional_losses_482225
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Љи
е3
D__inference_model_15_layer_call_and_return_conditional_losses_484657

inputsG
)conv3d_405_conv3d_readvariableop_resource:8
*conv3d_405_biasadd_readvariableop_resource:G
)conv3d_406_conv3d_readvariableop_resource:8
*conv3d_406_biasadd_readvariableop_resource:G
)conv3d_407_conv3d_readvariableop_resource: 8
*conv3d_407_biasadd_readvariableop_resource: G
)conv3d_408_conv3d_readvariableop_resource:  8
*conv3d_408_biasadd_readvariableop_resource: G
)conv3d_409_conv3d_readvariableop_resource: @8
*conv3d_409_biasadd_readvariableop_resource:@G
)conv3d_410_conv3d_readvariableop_resource:@@8
*conv3d_410_biasadd_readvariableop_resource:@H
)conv3d_411_conv3d_readvariableop_resource:@9
*conv3d_411_biasadd_readvariableop_resource:	I
)conv3d_412_conv3d_readvariableop_resource:9
*conv3d_412_biasadd_readvariableop_resource:	I
)conv3d_413_conv3d_readvariableop_resource:9
*conv3d_413_biasadd_readvariableop_resource:	I
)conv3d_414_conv3d_readvariableop_resource:9
*conv3d_414_biasadd_readvariableop_resource:	\
<conv3d_transpose_60_conv3d_transpose_readvariableop_resource:B
3conv3d_transpose_60_biasadd_readvariableop_resource:	I
)conv3d_415_conv3d_readvariableop_resource:9
*conv3d_415_biasadd_readvariableop_resource:	I
)conv3d_416_conv3d_readvariableop_resource:9
*conv3d_416_biasadd_readvariableop_resource:	I
)conv3d_417_conv3d_readvariableop_resource:9
*conv3d_417_biasadd_readvariableop_resource:	I
)conv3d_418_conv3d_readvariableop_resource:9
*conv3d_418_biasadd_readvariableop_resource:	[
<conv3d_transpose_61_conv3d_transpose_readvariableop_resource:@A
3conv3d_transpose_61_biasadd_readvariableop_resource:@G
)conv3d_419_conv3d_readvariableop_resource:@@8
*conv3d_419_biasadd_readvariableop_resource:@H
)conv3d_420_conv3d_readvariableop_resource:@8
*conv3d_420_biasadd_readvariableop_resource:@G
)conv3d_421_conv3d_readvariableop_resource:@@8
*conv3d_421_biasadd_readvariableop_resource:@G
)conv3d_422_conv3d_readvariableop_resource:@@8
*conv3d_422_biasadd_readvariableop_resource:@Z
<conv3d_transpose_62_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_62_biasadd_readvariableop_resource: G
)conv3d_423_conv3d_readvariableop_resource:  8
*conv3d_423_biasadd_readvariableop_resource: G
)conv3d_424_conv3d_readvariableop_resource:@ 8
*conv3d_424_biasadd_readvariableop_resource: G
)conv3d_425_conv3d_readvariableop_resource:  8
*conv3d_425_biasadd_readvariableop_resource: G
)conv3d_426_conv3d_readvariableop_resource:  8
*conv3d_426_biasadd_readvariableop_resource: Z
<conv3d_transpose_63_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_63_biasadd_readvariableop_resource:G
)conv3d_427_conv3d_readvariableop_resource:8
*conv3d_427_biasadd_readvariableop_resource:G
)conv3d_428_conv3d_readvariableop_resource: 8
*conv3d_428_biasadd_readvariableop_resource:G
)conv3d_429_conv3d_readvariableop_resource:8
*conv3d_429_biasadd_readvariableop_resource:G
)conv3d_430_conv3d_readvariableop_resource:8
*conv3d_430_biasadd_readvariableop_resource:G
)conv3d_431_conv3d_readvariableop_resource:8
*conv3d_431_biasadd_readvariableop_resource:
identityЂ!conv3d_405/BiasAdd/ReadVariableOpЂ conv3d_405/Conv3D/ReadVariableOpЂ!conv3d_406/BiasAdd/ReadVariableOpЂ conv3d_406/Conv3D/ReadVariableOpЂ!conv3d_407/BiasAdd/ReadVariableOpЂ conv3d_407/Conv3D/ReadVariableOpЂ!conv3d_408/BiasAdd/ReadVariableOpЂ conv3d_408/Conv3D/ReadVariableOpЂ!conv3d_409/BiasAdd/ReadVariableOpЂ conv3d_409/Conv3D/ReadVariableOpЂ!conv3d_410/BiasAdd/ReadVariableOpЂ conv3d_410/Conv3D/ReadVariableOpЂ!conv3d_411/BiasAdd/ReadVariableOpЂ conv3d_411/Conv3D/ReadVariableOpЂ!conv3d_412/BiasAdd/ReadVariableOpЂ conv3d_412/Conv3D/ReadVariableOpЂ!conv3d_413/BiasAdd/ReadVariableOpЂ conv3d_413/Conv3D/ReadVariableOpЂ!conv3d_414/BiasAdd/ReadVariableOpЂ conv3d_414/Conv3D/ReadVariableOpЂ!conv3d_415/BiasAdd/ReadVariableOpЂ conv3d_415/Conv3D/ReadVariableOpЂ!conv3d_416/BiasAdd/ReadVariableOpЂ conv3d_416/Conv3D/ReadVariableOpЂ!conv3d_417/BiasAdd/ReadVariableOpЂ conv3d_417/Conv3D/ReadVariableOpЂ!conv3d_418/BiasAdd/ReadVariableOpЂ conv3d_418/Conv3D/ReadVariableOpЂ!conv3d_419/BiasAdd/ReadVariableOpЂ conv3d_419/Conv3D/ReadVariableOpЂ!conv3d_420/BiasAdd/ReadVariableOpЂ conv3d_420/Conv3D/ReadVariableOpЂ!conv3d_421/BiasAdd/ReadVariableOpЂ conv3d_421/Conv3D/ReadVariableOpЂ!conv3d_422/BiasAdd/ReadVariableOpЂ conv3d_422/Conv3D/ReadVariableOpЂ!conv3d_423/BiasAdd/ReadVariableOpЂ conv3d_423/Conv3D/ReadVariableOpЂ!conv3d_424/BiasAdd/ReadVariableOpЂ conv3d_424/Conv3D/ReadVariableOpЂ!conv3d_425/BiasAdd/ReadVariableOpЂ conv3d_425/Conv3D/ReadVariableOpЂ!conv3d_426/BiasAdd/ReadVariableOpЂ conv3d_426/Conv3D/ReadVariableOpЂ!conv3d_427/BiasAdd/ReadVariableOpЂ conv3d_427/Conv3D/ReadVariableOpЂ!conv3d_428/BiasAdd/ReadVariableOpЂ conv3d_428/Conv3D/ReadVariableOpЂ!conv3d_429/BiasAdd/ReadVariableOpЂ conv3d_429/Conv3D/ReadVariableOpЂ!conv3d_430/BiasAdd/ReadVariableOpЂ conv3d_430/Conv3D/ReadVariableOpЂ!conv3d_431/BiasAdd/ReadVariableOpЂ conv3d_431/Conv3D/ReadVariableOpЂ*conv3d_transpose_60/BiasAdd/ReadVariableOpЂ3conv3d_transpose_60/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_61/BiasAdd/ReadVariableOpЂ3conv3d_transpose_61/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_62/BiasAdd/ReadVariableOpЂ3conv3d_transpose_62/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_63/BiasAdd/ReadVariableOpЂ3conv3d_transpose_63/conv3d_transpose/ReadVariableOp
zero_padding3d_15/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_15/PadPadinputs'zero_padding3d_15/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_405/Conv3D/ReadVariableOpReadVariableOp)conv3d_405_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ч
conv3d_405/Conv3DConv3Dzero_padding3d_15/Pad:output:0(conv3d_405/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_405/BiasAdd/ReadVariableOpReadVariableOp*conv3d_405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_405/BiasAddBiasAddconv3d_405/Conv3D:output:0)conv3d_405/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_405/ReluReluconv3d_405/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_406/Conv3D/ReadVariableOpReadVariableOp)conv3d_406_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_406/Conv3DConv3Dconv3d_405/Relu:activations:0(conv3d_406/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_406/BiasAdd/ReadVariableOpReadVariableOp*conv3d_406_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_406/BiasAddBiasAddconv3d_406/Conv3D:output:0)conv3d_406/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_406/ReluReluconv3d_406/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџн
max_pooling3d_60/MaxPool3D	MaxPool3Dconv3d_406/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_407/Conv3D/ReadVariableOpReadVariableOp)conv3d_407_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_407/Conv3DConv3D#max_pooling3d_60/MaxPool3D:output:0(conv3d_407/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_407/BiasAdd/ReadVariableOpReadVariableOp*conv3d_407_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_407/BiasAddBiasAddconv3d_407/Conv3D:output:0)conv3d_407/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_407/ReluReluconv3d_407/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_408/Conv3D/ReadVariableOpReadVariableOp)conv3d_408_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_408/Conv3DConv3Dconv3d_407/Relu:activations:0(conv3d_408/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_408/BiasAdd/ReadVariableOpReadVariableOp*conv3d_408_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_408/BiasAddBiasAddconv3d_408/Conv3D:output:0)conv3d_408/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_408/ReluReluconv3d_408/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ н
max_pooling3d_61/MaxPool3D	MaxPool3Dconv3d_408/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	

 conv3d_409/Conv3D/ReadVariableOpReadVariableOp)conv3d_409_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_409/Conv3DConv3D#max_pooling3d_61/MaxPool3D:output:0(conv3d_409/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_409/BiasAdd/ReadVariableOpReadVariableOp*conv3d_409_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_409/BiasAddBiasAddconv3d_409/Conv3D:output:0)conv3d_409/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_409/ReluReluconv3d_409/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_410/Conv3D/ReadVariableOpReadVariableOp)conv3d_410_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_410/Conv3DConv3Dconv3d_409/Relu:activations:0(conv3d_410/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_410/BiasAdd/ReadVariableOpReadVariableOp*conv3d_410_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_410/BiasAddBiasAddconv3d_410/Conv3D:output:0)conv3d_410/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_410/ReluReluconv3d_410/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@н
max_pooling3d_62/MaxPool3D	MaxPool3Dconv3d_410/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	

 conv3d_411/Conv3D/ReadVariableOpReadVariableOp)conv3d_411_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0э
conv3d_411/Conv3DConv3D#max_pooling3d_62/MaxPool3D:output:0(conv3d_411/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_411/BiasAdd/ReadVariableOpReadVariableOp*conv3d_411_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_411/BiasAddBiasAddconv3d_411/Conv3D:output:0)conv3d_411/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_411/ReluReluconv3d_411/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_412/Conv3D/ReadVariableOpReadVariableOp)conv3d_412_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_412/Conv3DConv3Dconv3d_411/Relu:activations:0(conv3d_412/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_412/BiasAdd/ReadVariableOpReadVariableOp*conv3d_412_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_412/BiasAddBiasAddconv3d_412/Conv3D:output:0)conv3d_412/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_412/ReluReluconv3d_412/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџо
max_pooling3d_63/MaxPool3D	MaxPool3Dconv3d_412/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_413/Conv3D/ReadVariableOpReadVariableOp)conv3d_413_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0э
conv3d_413/Conv3DConv3D#max_pooling3d_63/MaxPool3D:output:0(conv3d_413/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_413/BiasAdd/ReadVariableOpReadVariableOp*conv3d_413_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_413/BiasAddBiasAddconv3d_413/Conv3D:output:0)conv3d_413/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_413/ReluReluconv3d_413/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_414/Conv3D/ReadVariableOpReadVariableOp)conv3d_414_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_414/Conv3DConv3Dconv3d_413/Relu:activations:0(conv3d_414/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_414/BiasAdd/ReadVariableOpReadVariableOp*conv3d_414_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_414/BiasAddBiasAddconv3d_414/Conv3D:output:0)conv3d_414/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_414/ReluReluconv3d_414/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_60/ShapeShapeconv3d_414/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_60/strided_sliceStridedSlice"conv3d_transpose_60/Shape:output:00conv3d_transpose_60/strided_slice/stack:output:02conv3d_transpose_60/strided_slice/stack_1:output:02conv3d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_60/strided_slice_1StridedSlice"conv3d_transpose_60/Shape:output:02conv3d_transpose_60/strided_slice_1/stack:output:04conv3d_transpose_60/strided_slice_1/stack_1:output:04conv3d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_60/strided_slice_2StridedSlice"conv3d_transpose_60/Shape:output:02conv3d_transpose_60/strided_slice_2/stack:output:04conv3d_transpose_60/strided_slice_2/stack_1:output:04conv3d_transpose_60/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_60/strided_slice_3StridedSlice"conv3d_transpose_60/Shape:output:02conv3d_transpose_60/strided_slice_3/stack:output:04conv3d_transpose_60/strided_slice_3/stack_1:output:04conv3d_transpose_60/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_60/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_60/mulMul,conv3d_transpose_60/strided_slice_1:output:0"conv3d_transpose_60/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_60/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_60/addAddV2conv3d_transpose_60/mul:z:0"conv3d_transpose_60/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_60/mul_1Mul,conv3d_transpose_60/strided_slice_2:output:0$conv3d_transpose_60/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_60/add_1AddV2conv3d_transpose_60/mul_1:z:0$conv3d_transpose_60/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_60/mul_2Mul,conv3d_transpose_60/strided_slice_3:output:0$conv3d_transpose_60/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_60/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_60/add_2AddV2conv3d_transpose_60/mul_2:z:0$conv3d_transpose_60/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_60/stack/4Const*
_output_shapes
: *
dtype0*
value
B :ќ
conv3d_transpose_60/stackPack*conv3d_transpose_60/strided_slice:output:0conv3d_transpose_60/add:z:0conv3d_transpose_60/add_1:z:0conv3d_transpose_60/add_2:z:0$conv3d_transpose_60/stack/4:output:0*
N*
T0*
_output_shapes
:О
3conv3d_transpose_60/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_60_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0С
$conv3d_transpose_60/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_60/stack:output:0;conv3d_transpose_60/conv3d_transpose/ReadVariableOp:value:0conv3d_414/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	

*conv3d_transpose_60/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0у
conv3d_transpose_60/BiasAddBiasAdd-conv3d_transpose_60/conv3d_transpose:output:02conv3d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_415/Conv3D/ReadVariableOpReadVariableOp)conv3d_415_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_415/Conv3DConv3D$conv3d_transpose_60/BiasAdd:output:0(conv3d_415/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_415/BiasAdd/ReadVariableOpReadVariableOp*conv3d_415_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_415/BiasAddBiasAddconv3d_415/Conv3D:output:0)conv3d_415/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_415/ReluReluconv3d_415/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_60/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_60/concatConcatV2conv3d_412/Relu:activations:0conv3d_415/Relu:activations:0#concatenate_60/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_416/Conv3D/ReadVariableOpReadVariableOp)conv3d_416_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ш
conv3d_416/Conv3DConv3Dconcatenate_60/concat:output:0(conv3d_416/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_416/BiasAdd/ReadVariableOpReadVariableOp*conv3d_416_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_416/BiasAddBiasAddconv3d_416/Conv3D:output:0)conv3d_416/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_416/ReluReluconv3d_416/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_417/Conv3D/ReadVariableOpReadVariableOp)conv3d_417_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_417/Conv3DConv3Dconv3d_416/Relu:activations:0(conv3d_417/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_417/BiasAdd/ReadVariableOpReadVariableOp*conv3d_417_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_417/BiasAddBiasAddconv3d_417/Conv3D:output:0)conv3d_417/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_417/ReluReluconv3d_417/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_418/Conv3D/ReadVariableOpReadVariableOp)conv3d_418_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_418/Conv3DConv3Dconv3d_417/Relu:activations:0(conv3d_418/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_418/BiasAdd/ReadVariableOpReadVariableOp*conv3d_418_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_418/BiasAddBiasAddconv3d_418/Conv3D:output:0)conv3d_418/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_418/ReluReluconv3d_418/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_61/ShapeShapeconv3d_418/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_61/strided_sliceStridedSlice"conv3d_transpose_61/Shape:output:00conv3d_transpose_61/strided_slice/stack:output:02conv3d_transpose_61/strided_slice/stack_1:output:02conv3d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_61/strided_slice_1StridedSlice"conv3d_transpose_61/Shape:output:02conv3d_transpose_61/strided_slice_1/stack:output:04conv3d_transpose_61/strided_slice_1/stack_1:output:04conv3d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_61/strided_slice_2StridedSlice"conv3d_transpose_61/Shape:output:02conv3d_transpose_61/strided_slice_2/stack:output:04conv3d_transpose_61/strided_slice_2/stack_1:output:04conv3d_transpose_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_61/strided_slice_3StridedSlice"conv3d_transpose_61/Shape:output:02conv3d_transpose_61/strided_slice_3/stack:output:04conv3d_transpose_61/strided_slice_3/stack_1:output:04conv3d_transpose_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_61/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_61/mulMul,conv3d_transpose_61/strided_slice_1:output:0"conv3d_transpose_61/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_61/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_61/mul_1Mul,conv3d_transpose_61/strided_slice_2:output:0$conv3d_transpose_61/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_61/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_61/mul_2Mul,conv3d_transpose_61/strided_slice_3:output:0$conv3d_transpose_61/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_61/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@ќ
conv3d_transpose_61/stackPack*conv3d_transpose_61/strided_slice:output:0conv3d_transpose_61/mul:z:0conv3d_transpose_61/mul_1:z:0conv3d_transpose_61/mul_2:z:0$conv3d_transpose_61/stack/4:output:0*
N*
T0*
_output_shapes
:Н
3conv3d_transpose_61/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_61_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0П
$conv3d_transpose_61/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_61/stack:output:0;conv3d_transpose_61/conv3d_transpose/ReadVariableOp:value:0conv3d_418/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*conv3d_transpose_61/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0т
conv3d_transpose_61/BiasAddBiasAdd-conv3d_transpose_61/conv3d_transpose:output:02conv3d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_419/Conv3D/ReadVariableOpReadVariableOp)conv3d_419_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0э
conv3d_419/Conv3DConv3D$conv3d_transpose_61/BiasAdd:output:0(conv3d_419/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_419/BiasAdd/ReadVariableOpReadVariableOp*conv3d_419_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_419/BiasAddBiasAddconv3d_419/Conv3D:output:0)conv3d_419/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_419/ReluReluconv3d_419/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@\
concatenate_61/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_61/concatConcatV2conv3d_410/Relu:activations:0conv3d_419/Relu:activations:0#concatenate_61/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_420/Conv3D/ReadVariableOpReadVariableOp)conv3d_420_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ч
conv3d_420/Conv3DConv3Dconcatenate_61/concat:output:0(conv3d_420/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_420/BiasAdd/ReadVariableOpReadVariableOp*conv3d_420_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_420/BiasAddBiasAddconv3d_420/Conv3D:output:0)conv3d_420/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_420/ReluReluconv3d_420/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_421/Conv3D/ReadVariableOpReadVariableOp)conv3d_421_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_421/Conv3DConv3Dconv3d_420/Relu:activations:0(conv3d_421/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_421/BiasAdd/ReadVariableOpReadVariableOp*conv3d_421_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_421/BiasAddBiasAddconv3d_421/Conv3D:output:0)conv3d_421/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_421/ReluReluconv3d_421/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_422/Conv3D/ReadVariableOpReadVariableOp)conv3d_422_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_422/Conv3DConv3Dconv3d_421/Relu:activations:0(conv3d_422/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_422/BiasAdd/ReadVariableOpReadVariableOp*conv3d_422_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_422/BiasAddBiasAddconv3d_422/Conv3D:output:0)conv3d_422/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_422/ReluReluconv3d_422/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@f
conv3d_transpose_62/ShapeShapeconv3d_422/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_62/strided_sliceStridedSlice"conv3d_transpose_62/Shape:output:00conv3d_transpose_62/strided_slice/stack:output:02conv3d_transpose_62/strided_slice/stack_1:output:02conv3d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_62/strided_slice_1StridedSlice"conv3d_transpose_62/Shape:output:02conv3d_transpose_62/strided_slice_1/stack:output:04conv3d_transpose_62/strided_slice_1/stack_1:output:04conv3d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_62/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_62/strided_slice_2StridedSlice"conv3d_transpose_62/Shape:output:02conv3d_transpose_62/strided_slice_2/stack:output:04conv3d_transpose_62/strided_slice_2/stack_1:output:04conv3d_transpose_62/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_62/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_62/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_62/strided_slice_3StridedSlice"conv3d_transpose_62/Shape:output:02conv3d_transpose_62/strided_slice_3/stack:output:04conv3d_transpose_62/strided_slice_3/stack_1:output:04conv3d_transpose_62/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_62/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_62/mulMul,conv3d_transpose_62/strided_slice_1:output:0"conv3d_transpose_62/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_62/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_62/mul_1Mul,conv3d_transpose_62/strided_slice_2:output:0$conv3d_transpose_62/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_62/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_62/mul_2Mul,conv3d_transpose_62/strided_slice_3:output:0$conv3d_transpose_62/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_62/stack/4Const*
_output_shapes
: *
dtype0*
value	B : ќ
conv3d_transpose_62/stackPack*conv3d_transpose_62/strided_slice:output:0conv3d_transpose_62/mul:z:0conv3d_transpose_62/mul_1:z:0conv3d_transpose_62/mul_2:z:0$conv3d_transpose_62/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_62/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_62_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0П
$conv3d_transpose_62/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_62/stack:output:0;conv3d_transpose_62/conv3d_transpose/ReadVariableOp:value:0conv3d_422/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*conv3d_transpose_62/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0т
conv3d_transpose_62/BiasAddBiasAdd-conv3d_transpose_62/conv3d_transpose:output:02conv3d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_423/Conv3D/ReadVariableOpReadVariableOp)conv3d_423_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0э
conv3d_423/Conv3DConv3D$conv3d_transpose_62/BiasAdd:output:0(conv3d_423/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_423/BiasAdd/ReadVariableOpReadVariableOp*conv3d_423_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_423/BiasAddBiasAddconv3d_423/Conv3D:output:0)conv3d_423/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_423/ReluReluconv3d_423/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ \
concatenate_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_62/concatConcatV2conv3d_408/Relu:activations:0conv3d_423/Relu:activations:0#concatenate_62/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_424/Conv3D/ReadVariableOpReadVariableOp)conv3d_424_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0ч
conv3d_424/Conv3DConv3Dconcatenate_62/concat:output:0(conv3d_424/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_424/BiasAdd/ReadVariableOpReadVariableOp*conv3d_424_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_424/BiasAddBiasAddconv3d_424/Conv3D:output:0)conv3d_424/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_424/ReluReluconv3d_424/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_425/Conv3D/ReadVariableOpReadVariableOp)conv3d_425_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_425/Conv3DConv3Dconv3d_424/Relu:activations:0(conv3d_425/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_425/BiasAdd/ReadVariableOpReadVariableOp*conv3d_425_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_425/BiasAddBiasAddconv3d_425/Conv3D:output:0)conv3d_425/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_425/ReluReluconv3d_425/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_426/Conv3D/ReadVariableOpReadVariableOp)conv3d_426_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_426/Conv3DConv3Dconv3d_425/Relu:activations:0(conv3d_426/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_426/BiasAdd/ReadVariableOpReadVariableOp*conv3d_426_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_426/BiasAddBiasAddconv3d_426/Conv3D:output:0)conv3d_426/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_426/ReluReluconv3d_426/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ f
conv3d_transpose_63/ShapeShapeconv3d_426/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_63/strided_sliceStridedSlice"conv3d_transpose_63/Shape:output:00conv3d_transpose_63/strided_slice/stack:output:02conv3d_transpose_63/strided_slice/stack_1:output:02conv3d_transpose_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_63/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_63/strided_slice_1StridedSlice"conv3d_transpose_63/Shape:output:02conv3d_transpose_63/strided_slice_1/stack:output:04conv3d_transpose_63/strided_slice_1/stack_1:output:04conv3d_transpose_63/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_63/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_63/strided_slice_2StridedSlice"conv3d_transpose_63/Shape:output:02conv3d_transpose_63/strided_slice_2/stack:output:04conv3d_transpose_63/strided_slice_2/stack_1:output:04conv3d_transpose_63/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_63/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_63/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_63/strided_slice_3StridedSlice"conv3d_transpose_63/Shape:output:02conv3d_transpose_63/strided_slice_3/stack:output:04conv3d_transpose_63/strided_slice_3/stack_1:output:04conv3d_transpose_63/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_63/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_63/mulMul,conv3d_transpose_63/strided_slice_1:output:0"conv3d_transpose_63/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_63/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_63/mul_1Mul,conv3d_transpose_63/strided_slice_2:output:0$conv3d_transpose_63/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_63/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_63/mul_2Mul,conv3d_transpose_63/strided_slice_3:output:0$conv3d_transpose_63/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_63/stack/4Const*
_output_shapes
: *
dtype0*
value	B :ќ
conv3d_transpose_63/stackPack*conv3d_transpose_63/strided_slice:output:0conv3d_transpose_63/mul:z:0conv3d_transpose_63/mul_1:z:0conv3d_transpose_63/mul_2:z:0$conv3d_transpose_63/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_63/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_63_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0П
$conv3d_transpose_63/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_63/stack:output:0;conv3d_transpose_63/conv3d_transpose/ReadVariableOp:value:0conv3d_426/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*conv3d_transpose_63/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0т
conv3d_transpose_63/BiasAddBiasAdd-conv3d_transpose_63/conv3d_transpose:output:02conv3d_transpose_63/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_427/Conv3D/ReadVariableOpReadVariableOp)conv3d_427_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_427/Conv3DConv3D$conv3d_transpose_63/BiasAdd:output:0(conv3d_427/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_427/BiasAdd/ReadVariableOpReadVariableOp*conv3d_427_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_427/BiasAddBiasAddconv3d_427/Conv3D:output:0)conv3d_427/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_427/ReluReluconv3d_427/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_63/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_63/concatConcatV2conv3d_406/Relu:activations:0conv3d_427/Relu:activations:0#concatenate_63/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_428/Conv3D/ReadVariableOpReadVariableOp)conv3d_428_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ч
conv3d_428/Conv3DConv3Dconcatenate_63/concat:output:0(conv3d_428/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_428/BiasAdd/ReadVariableOpReadVariableOp*conv3d_428_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_428/BiasAddBiasAddconv3d_428/Conv3D:output:0)conv3d_428/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_428/ReluReluconv3d_428/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_429/Conv3D/ReadVariableOpReadVariableOp)conv3d_429_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_429/Conv3DConv3Dconv3d_428/Relu:activations:0(conv3d_429/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_429/BiasAdd/ReadVariableOpReadVariableOp*conv3d_429_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_429/BiasAddBiasAddconv3d_429/Conv3D:output:0)conv3d_429/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_429/ReluReluconv3d_429/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_430/Conv3D/ReadVariableOpReadVariableOp)conv3d_430_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_430/Conv3DConv3Dconv3d_429/Relu:activations:0(conv3d_430/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_430/BiasAdd/ReadVariableOpReadVariableOp*conv3d_430_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_430/BiasAddBiasAddconv3d_430/Conv3D:output:0)conv3d_430/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_430/ReluReluconv3d_430/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ~
!cropping3d_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
#cropping3d_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
#cropping3d_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               к
cropping3d_15/strided_sliceStridedSliceconv3d_430/Relu:activations:0*cropping3d_15/strided_slice/stack:output:0,cropping3d_15/strided_slice/stack_1:output:0,cropping3d_15/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
 conv3d_431/Conv3D/ReadVariableOpReadVariableOp)conv3d_431_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_431/Conv3DConv3D$cropping3d_15/strided_slice:output:0(conv3d_431/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_431/BiasAdd/ReadVariableOpReadVariableOp*conv3d_431_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_431/BiasAddBiasAddconv3d_431/Conv3D:output:0)conv3d_431/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconv3d_431/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЯ
NoOpNoOp"^conv3d_405/BiasAdd/ReadVariableOp!^conv3d_405/Conv3D/ReadVariableOp"^conv3d_406/BiasAdd/ReadVariableOp!^conv3d_406/Conv3D/ReadVariableOp"^conv3d_407/BiasAdd/ReadVariableOp!^conv3d_407/Conv3D/ReadVariableOp"^conv3d_408/BiasAdd/ReadVariableOp!^conv3d_408/Conv3D/ReadVariableOp"^conv3d_409/BiasAdd/ReadVariableOp!^conv3d_409/Conv3D/ReadVariableOp"^conv3d_410/BiasAdd/ReadVariableOp!^conv3d_410/Conv3D/ReadVariableOp"^conv3d_411/BiasAdd/ReadVariableOp!^conv3d_411/Conv3D/ReadVariableOp"^conv3d_412/BiasAdd/ReadVariableOp!^conv3d_412/Conv3D/ReadVariableOp"^conv3d_413/BiasAdd/ReadVariableOp!^conv3d_413/Conv3D/ReadVariableOp"^conv3d_414/BiasAdd/ReadVariableOp!^conv3d_414/Conv3D/ReadVariableOp"^conv3d_415/BiasAdd/ReadVariableOp!^conv3d_415/Conv3D/ReadVariableOp"^conv3d_416/BiasAdd/ReadVariableOp!^conv3d_416/Conv3D/ReadVariableOp"^conv3d_417/BiasAdd/ReadVariableOp!^conv3d_417/Conv3D/ReadVariableOp"^conv3d_418/BiasAdd/ReadVariableOp!^conv3d_418/Conv3D/ReadVariableOp"^conv3d_419/BiasAdd/ReadVariableOp!^conv3d_419/Conv3D/ReadVariableOp"^conv3d_420/BiasAdd/ReadVariableOp!^conv3d_420/Conv3D/ReadVariableOp"^conv3d_421/BiasAdd/ReadVariableOp!^conv3d_421/Conv3D/ReadVariableOp"^conv3d_422/BiasAdd/ReadVariableOp!^conv3d_422/Conv3D/ReadVariableOp"^conv3d_423/BiasAdd/ReadVariableOp!^conv3d_423/Conv3D/ReadVariableOp"^conv3d_424/BiasAdd/ReadVariableOp!^conv3d_424/Conv3D/ReadVariableOp"^conv3d_425/BiasAdd/ReadVariableOp!^conv3d_425/Conv3D/ReadVariableOp"^conv3d_426/BiasAdd/ReadVariableOp!^conv3d_426/Conv3D/ReadVariableOp"^conv3d_427/BiasAdd/ReadVariableOp!^conv3d_427/Conv3D/ReadVariableOp"^conv3d_428/BiasAdd/ReadVariableOp!^conv3d_428/Conv3D/ReadVariableOp"^conv3d_429/BiasAdd/ReadVariableOp!^conv3d_429/Conv3D/ReadVariableOp"^conv3d_430/BiasAdd/ReadVariableOp!^conv3d_430/Conv3D/ReadVariableOp"^conv3d_431/BiasAdd/ReadVariableOp!^conv3d_431/Conv3D/ReadVariableOp+^conv3d_transpose_60/BiasAdd/ReadVariableOp4^conv3d_transpose_60/conv3d_transpose/ReadVariableOp+^conv3d_transpose_61/BiasAdd/ReadVariableOp4^conv3d_transpose_61/conv3d_transpose/ReadVariableOp+^conv3d_transpose_62/BiasAdd/ReadVariableOp4^conv3d_transpose_62/conv3d_transpose/ReadVariableOp+^conv3d_transpose_63/BiasAdd/ReadVariableOp4^conv3d_transpose_63/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_405/BiasAdd/ReadVariableOp!conv3d_405/BiasAdd/ReadVariableOp2D
 conv3d_405/Conv3D/ReadVariableOp conv3d_405/Conv3D/ReadVariableOp2F
!conv3d_406/BiasAdd/ReadVariableOp!conv3d_406/BiasAdd/ReadVariableOp2D
 conv3d_406/Conv3D/ReadVariableOp conv3d_406/Conv3D/ReadVariableOp2F
!conv3d_407/BiasAdd/ReadVariableOp!conv3d_407/BiasAdd/ReadVariableOp2D
 conv3d_407/Conv3D/ReadVariableOp conv3d_407/Conv3D/ReadVariableOp2F
!conv3d_408/BiasAdd/ReadVariableOp!conv3d_408/BiasAdd/ReadVariableOp2D
 conv3d_408/Conv3D/ReadVariableOp conv3d_408/Conv3D/ReadVariableOp2F
!conv3d_409/BiasAdd/ReadVariableOp!conv3d_409/BiasAdd/ReadVariableOp2D
 conv3d_409/Conv3D/ReadVariableOp conv3d_409/Conv3D/ReadVariableOp2F
!conv3d_410/BiasAdd/ReadVariableOp!conv3d_410/BiasAdd/ReadVariableOp2D
 conv3d_410/Conv3D/ReadVariableOp conv3d_410/Conv3D/ReadVariableOp2F
!conv3d_411/BiasAdd/ReadVariableOp!conv3d_411/BiasAdd/ReadVariableOp2D
 conv3d_411/Conv3D/ReadVariableOp conv3d_411/Conv3D/ReadVariableOp2F
!conv3d_412/BiasAdd/ReadVariableOp!conv3d_412/BiasAdd/ReadVariableOp2D
 conv3d_412/Conv3D/ReadVariableOp conv3d_412/Conv3D/ReadVariableOp2F
!conv3d_413/BiasAdd/ReadVariableOp!conv3d_413/BiasAdd/ReadVariableOp2D
 conv3d_413/Conv3D/ReadVariableOp conv3d_413/Conv3D/ReadVariableOp2F
!conv3d_414/BiasAdd/ReadVariableOp!conv3d_414/BiasAdd/ReadVariableOp2D
 conv3d_414/Conv3D/ReadVariableOp conv3d_414/Conv3D/ReadVariableOp2F
!conv3d_415/BiasAdd/ReadVariableOp!conv3d_415/BiasAdd/ReadVariableOp2D
 conv3d_415/Conv3D/ReadVariableOp conv3d_415/Conv3D/ReadVariableOp2F
!conv3d_416/BiasAdd/ReadVariableOp!conv3d_416/BiasAdd/ReadVariableOp2D
 conv3d_416/Conv3D/ReadVariableOp conv3d_416/Conv3D/ReadVariableOp2F
!conv3d_417/BiasAdd/ReadVariableOp!conv3d_417/BiasAdd/ReadVariableOp2D
 conv3d_417/Conv3D/ReadVariableOp conv3d_417/Conv3D/ReadVariableOp2F
!conv3d_418/BiasAdd/ReadVariableOp!conv3d_418/BiasAdd/ReadVariableOp2D
 conv3d_418/Conv3D/ReadVariableOp conv3d_418/Conv3D/ReadVariableOp2F
!conv3d_419/BiasAdd/ReadVariableOp!conv3d_419/BiasAdd/ReadVariableOp2D
 conv3d_419/Conv3D/ReadVariableOp conv3d_419/Conv3D/ReadVariableOp2F
!conv3d_420/BiasAdd/ReadVariableOp!conv3d_420/BiasAdd/ReadVariableOp2D
 conv3d_420/Conv3D/ReadVariableOp conv3d_420/Conv3D/ReadVariableOp2F
!conv3d_421/BiasAdd/ReadVariableOp!conv3d_421/BiasAdd/ReadVariableOp2D
 conv3d_421/Conv3D/ReadVariableOp conv3d_421/Conv3D/ReadVariableOp2F
!conv3d_422/BiasAdd/ReadVariableOp!conv3d_422/BiasAdd/ReadVariableOp2D
 conv3d_422/Conv3D/ReadVariableOp conv3d_422/Conv3D/ReadVariableOp2F
!conv3d_423/BiasAdd/ReadVariableOp!conv3d_423/BiasAdd/ReadVariableOp2D
 conv3d_423/Conv3D/ReadVariableOp conv3d_423/Conv3D/ReadVariableOp2F
!conv3d_424/BiasAdd/ReadVariableOp!conv3d_424/BiasAdd/ReadVariableOp2D
 conv3d_424/Conv3D/ReadVariableOp conv3d_424/Conv3D/ReadVariableOp2F
!conv3d_425/BiasAdd/ReadVariableOp!conv3d_425/BiasAdd/ReadVariableOp2D
 conv3d_425/Conv3D/ReadVariableOp conv3d_425/Conv3D/ReadVariableOp2F
!conv3d_426/BiasAdd/ReadVariableOp!conv3d_426/BiasAdd/ReadVariableOp2D
 conv3d_426/Conv3D/ReadVariableOp conv3d_426/Conv3D/ReadVariableOp2F
!conv3d_427/BiasAdd/ReadVariableOp!conv3d_427/BiasAdd/ReadVariableOp2D
 conv3d_427/Conv3D/ReadVariableOp conv3d_427/Conv3D/ReadVariableOp2F
!conv3d_428/BiasAdd/ReadVariableOp!conv3d_428/BiasAdd/ReadVariableOp2D
 conv3d_428/Conv3D/ReadVariableOp conv3d_428/Conv3D/ReadVariableOp2F
!conv3d_429/BiasAdd/ReadVariableOp!conv3d_429/BiasAdd/ReadVariableOp2D
 conv3d_429/Conv3D/ReadVariableOp conv3d_429/Conv3D/ReadVariableOp2F
!conv3d_430/BiasAdd/ReadVariableOp!conv3d_430/BiasAdd/ReadVariableOp2D
 conv3d_430/Conv3D/ReadVariableOp conv3d_430/Conv3D/ReadVariableOp2F
!conv3d_431/BiasAdd/ReadVariableOp!conv3d_431/BiasAdd/ReadVariableOp2D
 conv3d_431/Conv3D/ReadVariableOp conv3d_431/Conv3D/ReadVariableOp2X
*conv3d_transpose_60/BiasAdd/ReadVariableOp*conv3d_transpose_60/BiasAdd/ReadVariableOp2j
3conv3d_transpose_60/conv3d_transpose/ReadVariableOp3conv3d_transpose_60/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_61/BiasAdd/ReadVariableOp*conv3d_transpose_61/BiasAdd/ReadVariableOp2j
3conv3d_transpose_61/conv3d_transpose/ReadVariableOp3conv3d_transpose_61/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_62/BiasAdd/ReadVariableOp*conv3d_transpose_62/BiasAdd/ReadVariableOp2j
3conv3d_transpose_62/conv3d_transpose/ReadVariableOp3conv3d_transpose_62/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_63/BiasAdd/ReadVariableOp*conv3d_transpose_63/BiasAdd/ReadVariableOp2j
3conv3d_transpose_63/conv3d_transpose/ReadVariableOp3conv3d_transpose_63/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
а

F__inference_conv3d_431_layer_call_and_return_conditional_losses_485965

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
а

F__inference_conv3d_431_layer_call_and_return_conditional_losses_482727

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
І&
Ѓ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_482046

inputsH
(conv3d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
add_2/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_2AddV2	mul_2:z:0add_2/y:output:0*
T0*
_output_shapes
: J
stack/4Const*
_output_shapes
: *
dtype0*
value
B :
stackPackstrided_slice:output:0add:z:0	add_1:z:0	add_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityBiasAdd:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ж"
 
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_485703

inputsF
(conv3d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
stack/4Const*
_output_shapes
: *
dtype0*
value	B : 
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ж"
 
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_482138

inputsF
(conv3d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂconv3d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_2Mulstrided_slice_3:output:0mul_2/y:output:0*
T0*
_output_shapes
: I
stack/4Const*
_output_shapes
: *
dtype0*
value	B : 
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ѓ
N
2__inference_zero_padding3d_15_layer_call_fn_485133

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_481950
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Џ
v
J__inference_concatenate_62_layer_call_and_return_conditional_losses_485736
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesv
t:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ :8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ :x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/1
к
h
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_481998

inputs
identityО
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_422_layer_call_and_return_conditional_losses_485659

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

Э
"__inference__traced_restore_487168
file_prefix@
"assignvariableop_conv3d_405_kernel:0
"assignvariableop_1_conv3d_405_bias:B
$assignvariableop_2_conv3d_406_kernel:0
"assignvariableop_3_conv3d_406_bias:B
$assignvariableop_4_conv3d_407_kernel: 0
"assignvariableop_5_conv3d_407_bias: B
$assignvariableop_6_conv3d_408_kernel:  0
"assignvariableop_7_conv3d_408_bias: B
$assignvariableop_8_conv3d_409_kernel: @0
"assignvariableop_9_conv3d_409_bias:@C
%assignvariableop_10_conv3d_410_kernel:@@1
#assignvariableop_11_conv3d_410_bias:@D
%assignvariableop_12_conv3d_411_kernel:@2
#assignvariableop_13_conv3d_411_bias:	E
%assignvariableop_14_conv3d_412_kernel:2
#assignvariableop_15_conv3d_412_bias:	E
%assignvariableop_16_conv3d_413_kernel:2
#assignvariableop_17_conv3d_413_bias:	E
%assignvariableop_18_conv3d_414_kernel:2
#assignvariableop_19_conv3d_414_bias:	N
.assignvariableop_20_conv3d_transpose_60_kernel:;
,assignvariableop_21_conv3d_transpose_60_bias:	E
%assignvariableop_22_conv3d_415_kernel:2
#assignvariableop_23_conv3d_415_bias:	E
%assignvariableop_24_conv3d_416_kernel:2
#assignvariableop_25_conv3d_416_bias:	E
%assignvariableop_26_conv3d_417_kernel:2
#assignvariableop_27_conv3d_417_bias:	E
%assignvariableop_28_conv3d_418_kernel:2
#assignvariableop_29_conv3d_418_bias:	M
.assignvariableop_30_conv3d_transpose_61_kernel:@:
,assignvariableop_31_conv3d_transpose_61_bias:@C
%assignvariableop_32_conv3d_419_kernel:@@1
#assignvariableop_33_conv3d_419_bias:@D
%assignvariableop_34_conv3d_420_kernel:@1
#assignvariableop_35_conv3d_420_bias:@C
%assignvariableop_36_conv3d_421_kernel:@@1
#assignvariableop_37_conv3d_421_bias:@C
%assignvariableop_38_conv3d_422_kernel:@@1
#assignvariableop_39_conv3d_422_bias:@L
.assignvariableop_40_conv3d_transpose_62_kernel: @:
,assignvariableop_41_conv3d_transpose_62_bias: C
%assignvariableop_42_conv3d_423_kernel:  1
#assignvariableop_43_conv3d_423_bias: C
%assignvariableop_44_conv3d_424_kernel:@ 1
#assignvariableop_45_conv3d_424_bias: C
%assignvariableop_46_conv3d_425_kernel:  1
#assignvariableop_47_conv3d_425_bias: C
%assignvariableop_48_conv3d_426_kernel:  1
#assignvariableop_49_conv3d_426_bias: L
.assignvariableop_50_conv3d_transpose_63_kernel: :
,assignvariableop_51_conv3d_transpose_63_bias:C
%assignvariableop_52_conv3d_427_kernel:1
#assignvariableop_53_conv3d_427_bias:C
%assignvariableop_54_conv3d_428_kernel: 1
#assignvariableop_55_conv3d_428_bias:C
%assignvariableop_56_conv3d_429_kernel:1
#assignvariableop_57_conv3d_429_bias:C
%assignvariableop_58_conv3d_430_kernel:1
#assignvariableop_59_conv3d_430_bias:C
%assignvariableop_60_conv3d_431_kernel:1
#assignvariableop_61_conv3d_431_bias:'
assignvariableop_62_adam_iter:	 )
assignvariableop_63_adam_beta_1: )
assignvariableop_64_adam_beta_2: (
assignvariableop_65_adam_decay: 0
&assignvariableop_66_adam_learning_rate: #
assignvariableop_67_total: #
assignvariableop_68_count: %
assignvariableop_69_total_1: %
assignvariableop_70_count_1: J
,assignvariableop_71_adam_conv3d_405_kernel_m:8
*assignvariableop_72_adam_conv3d_405_bias_m:J
,assignvariableop_73_adam_conv3d_406_kernel_m:8
*assignvariableop_74_adam_conv3d_406_bias_m:J
,assignvariableop_75_adam_conv3d_407_kernel_m: 8
*assignvariableop_76_adam_conv3d_407_bias_m: J
,assignvariableop_77_adam_conv3d_408_kernel_m:  8
*assignvariableop_78_adam_conv3d_408_bias_m: J
,assignvariableop_79_adam_conv3d_409_kernel_m: @8
*assignvariableop_80_adam_conv3d_409_bias_m:@J
,assignvariableop_81_adam_conv3d_410_kernel_m:@@8
*assignvariableop_82_adam_conv3d_410_bias_m:@K
,assignvariableop_83_adam_conv3d_411_kernel_m:@9
*assignvariableop_84_adam_conv3d_411_bias_m:	L
,assignvariableop_85_adam_conv3d_412_kernel_m:9
*assignvariableop_86_adam_conv3d_412_bias_m:	L
,assignvariableop_87_adam_conv3d_413_kernel_m:9
*assignvariableop_88_adam_conv3d_413_bias_m:	L
,assignvariableop_89_adam_conv3d_414_kernel_m:9
*assignvariableop_90_adam_conv3d_414_bias_m:	U
5assignvariableop_91_adam_conv3d_transpose_60_kernel_m:B
3assignvariableop_92_adam_conv3d_transpose_60_bias_m:	L
,assignvariableop_93_adam_conv3d_415_kernel_m:9
*assignvariableop_94_adam_conv3d_415_bias_m:	L
,assignvariableop_95_adam_conv3d_416_kernel_m:9
*assignvariableop_96_adam_conv3d_416_bias_m:	L
,assignvariableop_97_adam_conv3d_417_kernel_m:9
*assignvariableop_98_adam_conv3d_417_bias_m:	L
,assignvariableop_99_adam_conv3d_418_kernel_m::
+assignvariableop_100_adam_conv3d_418_bias_m:	U
6assignvariableop_101_adam_conv3d_transpose_61_kernel_m:@B
4assignvariableop_102_adam_conv3d_transpose_61_bias_m:@K
-assignvariableop_103_adam_conv3d_419_kernel_m:@@9
+assignvariableop_104_adam_conv3d_419_bias_m:@L
-assignvariableop_105_adam_conv3d_420_kernel_m:@9
+assignvariableop_106_adam_conv3d_420_bias_m:@K
-assignvariableop_107_adam_conv3d_421_kernel_m:@@9
+assignvariableop_108_adam_conv3d_421_bias_m:@K
-assignvariableop_109_adam_conv3d_422_kernel_m:@@9
+assignvariableop_110_adam_conv3d_422_bias_m:@T
6assignvariableop_111_adam_conv3d_transpose_62_kernel_m: @B
4assignvariableop_112_adam_conv3d_transpose_62_bias_m: K
-assignvariableop_113_adam_conv3d_423_kernel_m:  9
+assignvariableop_114_adam_conv3d_423_bias_m: K
-assignvariableop_115_adam_conv3d_424_kernel_m:@ 9
+assignvariableop_116_adam_conv3d_424_bias_m: K
-assignvariableop_117_adam_conv3d_425_kernel_m:  9
+assignvariableop_118_adam_conv3d_425_bias_m: K
-assignvariableop_119_adam_conv3d_426_kernel_m:  9
+assignvariableop_120_adam_conv3d_426_bias_m: T
6assignvariableop_121_adam_conv3d_transpose_63_kernel_m: B
4assignvariableop_122_adam_conv3d_transpose_63_bias_m:K
-assignvariableop_123_adam_conv3d_427_kernel_m:9
+assignvariableop_124_adam_conv3d_427_bias_m:K
-assignvariableop_125_adam_conv3d_428_kernel_m: 9
+assignvariableop_126_adam_conv3d_428_bias_m:K
-assignvariableop_127_adam_conv3d_429_kernel_m:9
+assignvariableop_128_adam_conv3d_429_bias_m:K
-assignvariableop_129_adam_conv3d_430_kernel_m:9
+assignvariableop_130_adam_conv3d_430_bias_m:K
-assignvariableop_131_adam_conv3d_431_kernel_m:9
+assignvariableop_132_adam_conv3d_431_bias_m:K
-assignvariableop_133_adam_conv3d_405_kernel_v:9
+assignvariableop_134_adam_conv3d_405_bias_v:K
-assignvariableop_135_adam_conv3d_406_kernel_v:9
+assignvariableop_136_adam_conv3d_406_bias_v:K
-assignvariableop_137_adam_conv3d_407_kernel_v: 9
+assignvariableop_138_adam_conv3d_407_bias_v: K
-assignvariableop_139_adam_conv3d_408_kernel_v:  9
+assignvariableop_140_adam_conv3d_408_bias_v: K
-assignvariableop_141_adam_conv3d_409_kernel_v: @9
+assignvariableop_142_adam_conv3d_409_bias_v:@K
-assignvariableop_143_adam_conv3d_410_kernel_v:@@9
+assignvariableop_144_adam_conv3d_410_bias_v:@L
-assignvariableop_145_adam_conv3d_411_kernel_v:@:
+assignvariableop_146_adam_conv3d_411_bias_v:	M
-assignvariableop_147_adam_conv3d_412_kernel_v::
+assignvariableop_148_adam_conv3d_412_bias_v:	M
-assignvariableop_149_adam_conv3d_413_kernel_v::
+assignvariableop_150_adam_conv3d_413_bias_v:	M
-assignvariableop_151_adam_conv3d_414_kernel_v::
+assignvariableop_152_adam_conv3d_414_bias_v:	V
6assignvariableop_153_adam_conv3d_transpose_60_kernel_v:C
4assignvariableop_154_adam_conv3d_transpose_60_bias_v:	M
-assignvariableop_155_adam_conv3d_415_kernel_v::
+assignvariableop_156_adam_conv3d_415_bias_v:	M
-assignvariableop_157_adam_conv3d_416_kernel_v::
+assignvariableop_158_adam_conv3d_416_bias_v:	M
-assignvariableop_159_adam_conv3d_417_kernel_v::
+assignvariableop_160_adam_conv3d_417_bias_v:	M
-assignvariableop_161_adam_conv3d_418_kernel_v::
+assignvariableop_162_adam_conv3d_418_bias_v:	U
6assignvariableop_163_adam_conv3d_transpose_61_kernel_v:@B
4assignvariableop_164_adam_conv3d_transpose_61_bias_v:@K
-assignvariableop_165_adam_conv3d_419_kernel_v:@@9
+assignvariableop_166_adam_conv3d_419_bias_v:@L
-assignvariableop_167_adam_conv3d_420_kernel_v:@9
+assignvariableop_168_adam_conv3d_420_bias_v:@K
-assignvariableop_169_adam_conv3d_421_kernel_v:@@9
+assignvariableop_170_adam_conv3d_421_bias_v:@K
-assignvariableop_171_adam_conv3d_422_kernel_v:@@9
+assignvariableop_172_adam_conv3d_422_bias_v:@T
6assignvariableop_173_adam_conv3d_transpose_62_kernel_v: @B
4assignvariableop_174_adam_conv3d_transpose_62_bias_v: K
-assignvariableop_175_adam_conv3d_423_kernel_v:  9
+assignvariableop_176_adam_conv3d_423_bias_v: K
-assignvariableop_177_adam_conv3d_424_kernel_v:@ 9
+assignvariableop_178_adam_conv3d_424_bias_v: K
-assignvariableop_179_adam_conv3d_425_kernel_v:  9
+assignvariableop_180_adam_conv3d_425_bias_v: K
-assignvariableop_181_adam_conv3d_426_kernel_v:  9
+assignvariableop_182_adam_conv3d_426_bias_v: T
6assignvariableop_183_adam_conv3d_transpose_63_kernel_v: B
4assignvariableop_184_adam_conv3d_transpose_63_bias_v:K
-assignvariableop_185_adam_conv3d_427_kernel_v:9
+assignvariableop_186_adam_conv3d_427_bias_v:K
-assignvariableop_187_adam_conv3d_428_kernel_v: 9
+assignvariableop_188_adam_conv3d_428_bias_v:K
-assignvariableop_189_adam_conv3d_429_kernel_v:9
+assignvariableop_190_adam_conv3d_429_bias_v:K
-assignvariableop_191_adam_conv3d_430_kernel_v:9
+assignvariableop_192_adam_conv3d_430_bias_v:K
-assignvariableop_193_adam_conv3d_431_kernel_v:9
+assignvariableop_194_adam_conv3d_431_bias_v:
identity_196ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_100ЂAssignVariableOp_101ЂAssignVariableOp_102ЂAssignVariableOp_103ЂAssignVariableOp_104ЂAssignVariableOp_105ЂAssignVariableOp_106ЂAssignVariableOp_107ЂAssignVariableOp_108ЂAssignVariableOp_109ЂAssignVariableOp_11ЂAssignVariableOp_110ЂAssignVariableOp_111ЂAssignVariableOp_112ЂAssignVariableOp_113ЂAssignVariableOp_114ЂAssignVariableOp_115ЂAssignVariableOp_116ЂAssignVariableOp_117ЂAssignVariableOp_118ЂAssignVariableOp_119ЂAssignVariableOp_12ЂAssignVariableOp_120ЂAssignVariableOp_121ЂAssignVariableOp_122ЂAssignVariableOp_123ЂAssignVariableOp_124ЂAssignVariableOp_125ЂAssignVariableOp_126ЂAssignVariableOp_127ЂAssignVariableOp_128ЂAssignVariableOp_129ЂAssignVariableOp_13ЂAssignVariableOp_130ЂAssignVariableOp_131ЂAssignVariableOp_132ЂAssignVariableOp_133ЂAssignVariableOp_134ЂAssignVariableOp_135ЂAssignVariableOp_136ЂAssignVariableOp_137ЂAssignVariableOp_138ЂAssignVariableOp_139ЂAssignVariableOp_14ЂAssignVariableOp_140ЂAssignVariableOp_141ЂAssignVariableOp_142ЂAssignVariableOp_143ЂAssignVariableOp_144ЂAssignVariableOp_145ЂAssignVariableOp_146ЂAssignVariableOp_147ЂAssignVariableOp_148ЂAssignVariableOp_149ЂAssignVariableOp_15ЂAssignVariableOp_150ЂAssignVariableOp_151ЂAssignVariableOp_152ЂAssignVariableOp_153ЂAssignVariableOp_154ЂAssignVariableOp_155ЂAssignVariableOp_156ЂAssignVariableOp_157ЂAssignVariableOp_158ЂAssignVariableOp_159ЂAssignVariableOp_16ЂAssignVariableOp_160ЂAssignVariableOp_161ЂAssignVariableOp_162ЂAssignVariableOp_163ЂAssignVariableOp_164ЂAssignVariableOp_165ЂAssignVariableOp_166ЂAssignVariableOp_167ЂAssignVariableOp_168ЂAssignVariableOp_169ЂAssignVariableOp_17ЂAssignVariableOp_170ЂAssignVariableOp_171ЂAssignVariableOp_172ЂAssignVariableOp_173ЂAssignVariableOp_174ЂAssignVariableOp_175ЂAssignVariableOp_176ЂAssignVariableOp_177ЂAssignVariableOp_178ЂAssignVariableOp_179ЂAssignVariableOp_18ЂAssignVariableOp_180ЂAssignVariableOp_181ЂAssignVariableOp_182ЂAssignVariableOp_183ЂAssignVariableOp_184ЂAssignVariableOp_185ЂAssignVariableOp_186ЂAssignVariableOp_187ЂAssignVariableOp_188ЂAssignVariableOp_189ЂAssignVariableOp_19ЂAssignVariableOp_190ЂAssignVariableOp_191ЂAssignVariableOp_192ЂAssignVariableOp_193ЂAssignVariableOp_194ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_79ЂAssignVariableOp_8ЂAssignVariableOp_80ЂAssignVariableOp_81ЂAssignVariableOp_82ЂAssignVariableOp_83ЂAssignVariableOp_84ЂAssignVariableOp_85ЂAssignVariableOp_86ЂAssignVariableOp_87ЂAssignVariableOp_88ЂAssignVariableOp_89ЂAssignVariableOp_9ЂAssignVariableOp_90ЂAssignVariableOp_91ЂAssignVariableOp_92ЂAssignVariableOp_93ЂAssignVariableOp_94ЂAssignVariableOp_95ЂAssignVariableOp_96ЂAssignVariableOp_97ЂAssignVariableOp_98ЂAssignVariableOp_99аp
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:Ф*
dtype0*ѕo
valueыoBшoФB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH§
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:Ф*
dtype0*
valueBФB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B љ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*І
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*е
dtypesЪ
Ч2Ф	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_405_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_405_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_406_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_406_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_407_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_407_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_408_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_408_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_409_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_409_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_410_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_410_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_411_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_411_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_412_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_412_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_413_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_413_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_414_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_414_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp.assignvariableop_20_conv3d_transpose_60_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_conv3d_transpose_60_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp%assignvariableop_22_conv3d_415_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv3d_415_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv3d_416_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv3d_416_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_conv3d_417_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv3d_417_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv3d_418_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv3d_418_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp.assignvariableop_30_conv3d_transpose_61_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp,assignvariableop_31_conv3d_transpose_61_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv3d_419_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp#assignvariableop_33_conv3d_419_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp%assignvariableop_34_conv3d_420_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp#assignvariableop_35_conv3d_420_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv3d_421_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv3d_421_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp%assignvariableop_38_conv3d_422_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv3d_422_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp.assignvariableop_40_conv3d_transpose_62_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp,assignvariableop_41_conv3d_transpose_62_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp%assignvariableop_42_conv3d_423_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv3d_423_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp%assignvariableop_44_conv3d_424_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp#assignvariableop_45_conv3d_424_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp%assignvariableop_46_conv3d_425_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp#assignvariableop_47_conv3d_425_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp%assignvariableop_48_conv3d_426_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp#assignvariableop_49_conv3d_426_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp.assignvariableop_50_conv3d_transpose_63_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp,assignvariableop_51_conv3d_transpose_63_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp%assignvariableop_52_conv3d_427_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp#assignvariableop_53_conv3d_427_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp%assignvariableop_54_conv3d_428_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp#assignvariableop_55_conv3d_428_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp%assignvariableop_56_conv3d_429_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp#assignvariableop_57_conv3d_429_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp%assignvariableop_58_conv3d_430_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp#assignvariableop_59_conv3d_430_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp%assignvariableop_60_conv3d_431_kernelIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp#assignvariableop_61_conv3d_431_biasIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_62AssignVariableOpassignvariableop_62_adam_iterIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOpassignvariableop_63_adam_beta_1Identity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOpassignvariableop_64_adam_beta_2Identity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOpassignvariableop_65_adam_decayIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp&assignvariableop_66_adam_learning_rateIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOpassignvariableop_67_totalIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOpassignvariableop_68_countIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOpassignvariableop_69_total_1Identity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOpassignvariableop_70_count_1Identity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv3d_405_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv3d_405_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_conv3d_406_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_conv3d_406_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_conv3d_407_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_conv3d_407_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv3d_408_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv3d_408_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_conv3d_409_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_conv3d_409_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_conv3d_410_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv3d_410_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv3d_411_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv3d_411_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp,assignvariableop_85_adam_conv3d_412_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp*assignvariableop_86_adam_conv3d_412_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_conv3d_413_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_conv3d_413_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv3d_414_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_conv3d_414_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_conv3d_transpose_60_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_conv3d_transpose_60_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_conv3d_415_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv3d_415_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_95AssignVariableOp,assignvariableop_95_adam_conv3d_416_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_96AssignVariableOp*assignvariableop_96_adam_conv3d_416_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adam_conv3d_417_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_conv3d_417_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_99AssignVariableOp,assignvariableop_99_adam_conv3d_418_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_conv3d_418_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_101AssignVariableOp6assignvariableop_101_adam_conv3d_transpose_61_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_102AssignVariableOp4assignvariableop_102_adam_conv3d_transpose_61_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_103AssignVariableOp-assignvariableop_103_adam_conv3d_419_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_104AssignVariableOp+assignvariableop_104_adam_conv3d_419_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_105AssignVariableOp-assignvariableop_105_adam_conv3d_420_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_conv3d_420_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_107AssignVariableOp-assignvariableop_107_adam_conv3d_421_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_108AssignVariableOp+assignvariableop_108_adam_conv3d_421_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_109AssignVariableOp-assignvariableop_109_adam_conv3d_422_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_conv3d_422_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_111AssignVariableOp6assignvariableop_111_adam_conv3d_transpose_62_kernel_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_112AssignVariableOp4assignvariableop_112_adam_conv3d_transpose_62_bias_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_113AssignVariableOp-assignvariableop_113_adam_conv3d_423_kernel_mIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_114AssignVariableOp+assignvariableop_114_adam_conv3d_423_bias_mIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_115AssignVariableOp-assignvariableop_115_adam_conv3d_424_kernel_mIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_conv3d_424_bias_mIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_117AssignVariableOp-assignvariableop_117_adam_conv3d_425_kernel_mIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_conv3d_425_bias_mIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_119AssignVariableOp-assignvariableop_119_adam_conv3d_426_kernel_mIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_120AssignVariableOp+assignvariableop_120_adam_conv3d_426_bias_mIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_121AssignVariableOp6assignvariableop_121_adam_conv3d_transpose_63_kernel_mIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_122AssignVariableOp4assignvariableop_122_adam_conv3d_transpose_63_bias_mIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_123AssignVariableOp-assignvariableop_123_adam_conv3d_427_kernel_mIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_conv3d_427_bias_mIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_125AssignVariableOp-assignvariableop_125_adam_conv3d_428_kernel_mIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_126AssignVariableOp+assignvariableop_126_adam_conv3d_428_bias_mIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_127AssignVariableOp-assignvariableop_127_adam_conv3d_429_kernel_mIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_128AssignVariableOp+assignvariableop_128_adam_conv3d_429_bias_mIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_129AssignVariableOp-assignvariableop_129_adam_conv3d_430_kernel_mIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_130AssignVariableOp+assignvariableop_130_adam_conv3d_430_bias_mIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_131AssignVariableOp-assignvariableop_131_adam_conv3d_431_kernel_mIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adam_conv3d_431_bias_mIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_133AssignVariableOp-assignvariableop_133_adam_conv3d_405_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_134AssignVariableOp+assignvariableop_134_adam_conv3d_405_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_135AssignVariableOp-assignvariableop_135_adam_conv3d_406_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_136AssignVariableOp+assignvariableop_136_adam_conv3d_406_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_137AssignVariableOp-assignvariableop_137_adam_conv3d_407_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_138AssignVariableOp+assignvariableop_138_adam_conv3d_407_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_139AssignVariableOp-assignvariableop_139_adam_conv3d_408_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_140AssignVariableOp+assignvariableop_140_adam_conv3d_408_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_141AssignVariableOp-assignvariableop_141_adam_conv3d_409_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_142AssignVariableOp+assignvariableop_142_adam_conv3d_409_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_143AssignVariableOp-assignvariableop_143_adam_conv3d_410_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_144AssignVariableOp+assignvariableop_144_adam_conv3d_410_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_145AssignVariableOp-assignvariableop_145_adam_conv3d_411_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_146AssignVariableOp+assignvariableop_146_adam_conv3d_411_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_147AssignVariableOp-assignvariableop_147_adam_conv3d_412_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_148AssignVariableOp+assignvariableop_148_adam_conv3d_412_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_149AssignVariableOp-assignvariableop_149_adam_conv3d_413_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_150AssignVariableOp+assignvariableop_150_adam_conv3d_413_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_151AssignVariableOp-assignvariableop_151_adam_conv3d_414_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_152AssignVariableOp+assignvariableop_152_adam_conv3d_414_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_153AssignVariableOp6assignvariableop_153_adam_conv3d_transpose_60_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_154AssignVariableOp4assignvariableop_154_adam_conv3d_transpose_60_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_155AssignVariableOp-assignvariableop_155_adam_conv3d_415_kernel_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_156AssignVariableOp+assignvariableop_156_adam_conv3d_415_bias_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_157AssignVariableOp-assignvariableop_157_adam_conv3d_416_kernel_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_158AssignVariableOp+assignvariableop_158_adam_conv3d_416_bias_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_159AssignVariableOp-assignvariableop_159_adam_conv3d_417_kernel_vIdentity_159:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_160AssignVariableOp+assignvariableop_160_adam_conv3d_417_bias_vIdentity_160:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_161AssignVariableOp-assignvariableop_161_adam_conv3d_418_kernel_vIdentity_161:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_162AssignVariableOp+assignvariableop_162_adam_conv3d_418_bias_vIdentity_162:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_163AssignVariableOp6assignvariableop_163_adam_conv3d_transpose_61_kernel_vIdentity_163:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_164AssignVariableOp4assignvariableop_164_adam_conv3d_transpose_61_bias_vIdentity_164:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_165AssignVariableOp-assignvariableop_165_adam_conv3d_419_kernel_vIdentity_165:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_166AssignVariableOp+assignvariableop_166_adam_conv3d_419_bias_vIdentity_166:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_167AssignVariableOp-assignvariableop_167_adam_conv3d_420_kernel_vIdentity_167:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_168AssignVariableOp+assignvariableop_168_adam_conv3d_420_bias_vIdentity_168:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_169AssignVariableOp-assignvariableop_169_adam_conv3d_421_kernel_vIdentity_169:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_170AssignVariableOp+assignvariableop_170_adam_conv3d_421_bias_vIdentity_170:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_171AssignVariableOp-assignvariableop_171_adam_conv3d_422_kernel_vIdentity_171:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_172AssignVariableOp+assignvariableop_172_adam_conv3d_422_bias_vIdentity_172:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_173AssignVariableOp6assignvariableop_173_adam_conv3d_transpose_62_kernel_vIdentity_173:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_174AssignVariableOp4assignvariableop_174_adam_conv3d_transpose_62_bias_vIdentity_174:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_175AssignVariableOp-assignvariableop_175_adam_conv3d_423_kernel_vIdentity_175:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_176AssignVariableOp+assignvariableop_176_adam_conv3d_423_bias_vIdentity_176:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_177AssignVariableOp-assignvariableop_177_adam_conv3d_424_kernel_vIdentity_177:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_178AssignVariableOp+assignvariableop_178_adam_conv3d_424_bias_vIdentity_178:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_179AssignVariableOp-assignvariableop_179_adam_conv3d_425_kernel_vIdentity_179:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_180AssignVariableOp+assignvariableop_180_adam_conv3d_425_bias_vIdentity_180:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_181AssignVariableOp-assignvariableop_181_adam_conv3d_426_kernel_vIdentity_181:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_182AssignVariableOp+assignvariableop_182_adam_conv3d_426_bias_vIdentity_182:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_183IdentityRestoreV2:tensors:183"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_183AssignVariableOp6assignvariableop_183_adam_conv3d_transpose_63_kernel_vIdentity_183:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_184IdentityRestoreV2:tensors:184"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_184AssignVariableOp4assignvariableop_184_adam_conv3d_transpose_63_bias_vIdentity_184:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_185IdentityRestoreV2:tensors:185"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_185AssignVariableOp-assignvariableop_185_adam_conv3d_427_kernel_vIdentity_185:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_186IdentityRestoreV2:tensors:186"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_186AssignVariableOp+assignvariableop_186_adam_conv3d_427_bias_vIdentity_186:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_187IdentityRestoreV2:tensors:187"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_187AssignVariableOp-assignvariableop_187_adam_conv3d_428_kernel_vIdentity_187:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_188IdentityRestoreV2:tensors:188"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_188AssignVariableOp+assignvariableop_188_adam_conv3d_428_bias_vIdentity_188:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_189IdentityRestoreV2:tensors:189"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_189AssignVariableOp-assignvariableop_189_adam_conv3d_429_kernel_vIdentity_189:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_190IdentityRestoreV2:tensors:190"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_190AssignVariableOp+assignvariableop_190_adam_conv3d_429_bias_vIdentity_190:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_191IdentityRestoreV2:tensors:191"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_191AssignVariableOp-assignvariableop_191_adam_conv3d_430_kernel_vIdentity_191:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_192IdentityRestoreV2:tensors:192"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_192AssignVariableOp+assignvariableop_192_adam_conv3d_430_bias_vIdentity_192:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_193IdentityRestoreV2:tensors:193"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_193AssignVariableOp-assignvariableop_193_adam_conv3d_431_kernel_vIdentity_193:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_194IdentityRestoreV2:tensors:194"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_194AssignVariableOp+assignvariableop_194_adam_conv3d_431_bias_vIdentity_194:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ё"
Identity_195Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_193^AssignVariableOp_194^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_196IdentityIdentity_195:output:0^NoOp_1*
T0*
_output_shapes
: н"
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_193^AssignVariableOp_194^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_196Identity_196:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552,
AssignVariableOp_156AssignVariableOp_1562,
AssignVariableOp_157AssignVariableOp_1572,
AssignVariableOp_158AssignVariableOp_1582,
AssignVariableOp_159AssignVariableOp_1592*
AssignVariableOp_16AssignVariableOp_162,
AssignVariableOp_160AssignVariableOp_1602,
AssignVariableOp_161AssignVariableOp_1612,
AssignVariableOp_162AssignVariableOp_1622,
AssignVariableOp_163AssignVariableOp_1632,
AssignVariableOp_164AssignVariableOp_1642,
AssignVariableOp_165AssignVariableOp_1652,
AssignVariableOp_166AssignVariableOp_1662,
AssignVariableOp_167AssignVariableOp_1672,
AssignVariableOp_168AssignVariableOp_1682,
AssignVariableOp_169AssignVariableOp_1692*
AssignVariableOp_17AssignVariableOp_172,
AssignVariableOp_170AssignVariableOp_1702,
AssignVariableOp_171AssignVariableOp_1712,
AssignVariableOp_172AssignVariableOp_1722,
AssignVariableOp_173AssignVariableOp_1732,
AssignVariableOp_174AssignVariableOp_1742,
AssignVariableOp_175AssignVariableOp_1752,
AssignVariableOp_176AssignVariableOp_1762,
AssignVariableOp_177AssignVariableOp_1772,
AssignVariableOp_178AssignVariableOp_1782,
AssignVariableOp_179AssignVariableOp_1792*
AssignVariableOp_18AssignVariableOp_182,
AssignVariableOp_180AssignVariableOp_1802,
AssignVariableOp_181AssignVariableOp_1812,
AssignVariableOp_182AssignVariableOp_1822,
AssignVariableOp_183AssignVariableOp_1832,
AssignVariableOp_184AssignVariableOp_1842,
AssignVariableOp_185AssignVariableOp_1852,
AssignVariableOp_186AssignVariableOp_1862,
AssignVariableOp_187AssignVariableOp_1872,
AssignVariableOp_188AssignVariableOp_1882,
AssignVariableOp_189AssignVariableOp_1892*
AssignVariableOp_19AssignVariableOp_192,
AssignVariableOp_190AssignVariableOp_1902,
AssignVariableOp_191AssignVariableOp_1912,
AssignVariableOp_192AssignVariableOp_1922,
AssignVariableOp_193AssignVariableOp_1932,
AssignVariableOp_194AssignVariableOp_1942(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ђ
Є
+__inference_conv3d_409_layer_call_fn_485248

inputs%
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_409_layer_call_and_return_conditional_losses_482295
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ы

F__inference_conv3d_405_layer_call_and_return_conditional_losses_485159

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_414_layer_call_and_return_conditional_losses_485379

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0К
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_408_layer_call_fn_485218

inputs%
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_408_layer_call_and_return_conditional_losses_482277
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ы

F__inference_conv3d_409_layer_call_and_return_conditional_losses_485259

inputs<
conv3d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: @*
dtype0Й
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_414_layer_call_fn_485368

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_414_layer_call_and_return_conditional_losses_482382
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*§
serving_defaultщ
d
input_16X
serving_default_input_16:08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe

conv3d_431W
StatefulPartitionedCall:08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџtensorflow/serving/predict:аТ
ъ
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer_with_weights-14
layer-21
layer_with_weights-15
layer-22
layer_with_weights-16
layer-23
layer-24
layer_with_weights-17
layer-25
layer_with_weights-18
layer-26
layer_with_weights-19
layer-27
layer_with_weights-20
layer-28
layer_with_weights-21
layer-29
layer-30
 layer_with_weights-22
 layer-31
!layer_with_weights-23
!layer-32
"layer_with_weights-24
"layer-33
#layer_with_weights-25
#layer-34
$layer_with_weights-26
$layer-35
%layer-36
&layer_with_weights-27
&layer-37
'layer_with_weights-28
'layer-38
(layer_with_weights-29
(layer-39
)layer-40
*layer_with_weights-30
*layer-41
+	optimizer
,loss
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_default_save_signature
4
signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ѕ
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
Р

}kernel
~bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
	variables
trainable_variables
regularization_losses
 	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Ѓkernel
	Єbias
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Ћkernel
	Ќbias
­	variables
Ўtrainable_variables
Џregularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Йkernel
	Кbias
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Сkernel
	Тbias
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Щkernel
	Ъbias
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_layer
У
бkernel
	вbias
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
У
йkernel
	кbias
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"
_tf_keras_layer
У
чkernel
	шbias
щ	variables
ъtrainable_variables
ыregularization_losses
ь	keras_api
э__call__
+ю&call_and_return_all_conditional_losses"
_tf_keras_layer
У
яkernel
	№bias
ё	variables
ђtrainable_variables
ѓregularization_losses
є	keras_api
ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
У
їkernel
	јbias
љ	variables
њtrainable_variables
ћregularization_losses
ќ	keras_api
§__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
У
џkernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
	variables
 trainable_variables
Ёregularization_losses
Ђ	keras_api
Ѓ__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Ѕkernel
	Іbias
Ї	variables
Јtrainable_variables
Љregularization_losses
Њ	keras_api
Ћ__call__
+Ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
У
­kernel
	Ўbias
Џ	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Еkernel
	Жbias
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Уkernel
	Фbias
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Ыkernel
	Ьbias
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
У
гkernel
	дbias
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses"
_tf_keras_layer
У
сkernel
	тbias
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer

	щiter
ъbeta_1
ыbeta_2

ьdecay
эlearning_rate;mЫ<mЬCmЭDmЮQmЯRmаYmбZmвgmгhmдomеpmж}mз~mи	mй	mк	mл	mм	mн	mо	Ѓmп	Єmр	Ћmс	Ќmт	Йmу	Кmф	Сmх	Тmц	Щmч	Ъmш	бmщ	вmъ	йmы	кmь	чmэ	шmю	яmя	№m№	їmё	јmђ	џmѓ	mє	mѕ	mі	mї	mј	mљ	mњ	Ѕmћ	Іmќ	­m§	Ўmў	Еmџ	Жm	Уm	Фm	Ыm	Ьm	гm	дm	сm	тm;v<vCvDvQvRvYvZvgvhvovpv}v~v	v	v	v	v	v	v	Ѓv	Єv	Ћv	Ќv 	ЙvЁ	КvЂ	СvЃ	ТvЄ	ЩvЅ	ЪvІ	бvЇ	вvЈ	йvЉ	кvЊ	чvЋ	шvЌ	яv­	№vЎ	їvЏ	јvА	џvБ	vВ	vГ	vД	vЕ	vЖ	vЗ	vИ	ЅvЙ	ІvК	­vЛ	ЎvМ	ЕvН	ЖvО	УvП	ФvР	ЫvС	ЬvТ	гvУ	дvФ	сvХ	тvЦ"
	optimizer
 "
trackable_list_wrapper
Ж
;0
<1
C2
D3
Q4
R5
Y6
Z7
g8
h9
o10
p11
}12
~13
14
15
16
17
18
19
Ѓ20
Є21
Ћ22
Ќ23
Й24
К25
С26
Т27
Щ28
Ъ29
б30
в31
й32
к33
ч34
ш35
я36
№37
ї38
ј39
џ40
41
42
43
44
45
46
47
Ѕ48
І49
­50
Ў51
Е52
Ж53
У54
Ф55
Ы56
Ь57
г58
д59
с60
т61"
trackable_list_wrapper
Ж
;0
<1
C2
D3
Q4
R5
Y6
Z7
g8
h9
o10
p11
}12
~13
14
15
16
17
18
19
Ѓ20
Є21
Ћ22
Ќ23
Й24
К25
С26
Т27
Щ28
Ъ29
б30
в31
й32
к33
ч34
ш35
я36
№37
ї38
ј39
џ40
41
42
43
44
45
46
47
Ѕ48
І49
­50
Ў51
Е52
Ж53
У54
Ф55
Ы56
Ь57
г58
д59
с60
т61"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
3_default_save_signature
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
ђ2я
)__inference_model_15_layer_call_fn_482861
)__inference_model_15_layer_call_fn_484188
)__inference_model_15_layer_call_fn_484317
)__inference_model_15_layer_call_fn_483715Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
о2л
D__inference_model_15_layer_call_and_return_conditional_losses_484657
D__inference_model_15_layer_call_and_return_conditional_losses_484997
D__inference_model_15_layer_call_and_return_conditional_losses_483884
D__inference_model_15_layer_call_and_return_conditional_losses_484053Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЭBЪ
!__inference__wrapped_model_481940input_16"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
-
ѓserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
м2й
2__inference_zero_padding3d_15_layer_call_fn_485133Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ї2є
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_485139Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-2conv3d_405/kernel
:2conv3d_405/bias
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
љnon_trainable_variables
њlayers
ћmetrics
 ќlayer_regularization_losses
§layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_405_layer_call_fn_485148Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_405_layer_call_and_return_conditional_losses_485159Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-2conv3d_406/kernel
:2conv3d_406/bias
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ўnon_trainable_variables
џlayers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_406_layer_call_fn_485168Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_406_layer_call_and_return_conditional_losses_485179Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
л2и
1__inference_max_pooling3d_60_layer_call_fn_485184Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
і2ѓ
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_485189Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:- 2conv3d_407/kernel
: 2conv3d_407/bias
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_407_layer_call_fn_485198Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_407_layer_call_and_return_conditional_losses_485209Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-  2conv3d_408/kernel
: 2conv3d_408/bias
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_408_layer_call_fn_485218Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_408_layer_call_and_return_conditional_losses_485229Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
л2и
1__inference_max_pooling3d_61_layer_call_fn_485234Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
і2ѓ
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_485239Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:- @2conv3d_409/kernel
:@2conv3d_409/bias
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_409_layer_call_fn_485248Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_409_layer_call_and_return_conditional_losses_485259Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-@@2conv3d_410/kernel
:@2conv3d_410/bias
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_410_layer_call_fn_485268Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_410_layer_call_and_return_conditional_losses_485279Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ёnon_trainable_variables
Ђlayers
Ѓmetrics
 Єlayer_regularization_losses
Ѕlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
л2и
1__inference_max_pooling3d_62_layer_call_fn_485284Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
і2ѓ
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_485289Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0:.@2conv3d_411/kernel
:2conv3d_411/bias
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
З
Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_411_layer_call_fn_485298Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_411_layer_call_and_return_conditional_losses_485309Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
1:/2conv3d_412/kernel
:2conv3d_412/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_412_layer_call_fn_485318Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_412_layer_call_and_return_conditional_losses_485329Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
л2и
1__inference_max_pooling3d_63_layer_call_fn_485334Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
і2ѓ
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_485339Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
1:/2conv3d_413/kernel
:2conv3d_413/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_413_layer_call_fn_485348Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_413_layer_call_and_return_conditional_losses_485359Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
1:/2conv3d_414/kernel
:2conv3d_414/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
regularization_losses
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_414_layer_call_fn_485368Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_414_layer_call_and_return_conditional_losses_485379Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
::82conv3d_transpose_60/kernel
':%2conv3d_transpose_60/bias
0
Ѓ0
Є1"
trackable_list_wrapper
0
Ѓ0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
о2л
4__inference_conv3d_transpose_60_layer_call_fn_485388Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љ2і
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_485429Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
1:/2conv3d_415/kernel
:2conv3d_415/bias
0
Ћ0
Ќ1"
trackable_list_wrapper
0
Ћ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
­	variables
Ўtrainable_variables
Џregularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_415_layer_call_fn_485438Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_415_layer_call_and_return_conditional_losses_485449Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
й2ж
/__inference_concatenate_60_layer_call_fn_485455Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
є2ё
J__inference_concatenate_60_layer_call_and_return_conditional_losses_485462Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
1:/2conv3d_416/kernel
:2conv3d_416/bias
0
Й0
К1"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_416_layer_call_fn_485471Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_416_layer_call_and_return_conditional_losses_485482Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
1:/2conv3d_417/kernel
:2conv3d_417/bias
0
С0
Т1"
trackable_list_wrapper
0
С0
Т1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_417_layer_call_fn_485491Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_417_layer_call_and_return_conditional_losses_485502Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
1:/2conv3d_418/kernel
:2conv3d_418/bias
0
Щ0
Ъ1"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_418_layer_call_fn_485511Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_418_layer_call_and_return_conditional_losses_485522Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
9:7@2conv3d_transpose_61/kernel
&:$@2conv3d_transpose_61/bias
0
б0
в1"
trackable_list_wrapper
0
б0
в1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
о2л
4__inference_conv3d_transpose_61_layer_call_fn_485531Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љ2і
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_485566Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-@@2conv3d_419/kernel
:@2conv3d_419/bias
0
й0
к1"
trackable_list_wrapper
0
й0
к1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_419_layer_call_fn_485575Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_419_layer_call_and_return_conditional_losses_485586Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
й2ж
/__inference_concatenate_61_layer_call_fn_485592Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
є2ё
J__inference_concatenate_61_layer_call_and_return_conditional_losses_485599Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0:.@2conv3d_420/kernel
:@2conv3d_420/bias
0
ч0
ш1"
trackable_list_wrapper
0
ч0
ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
щ	variables
ъtrainable_variables
ыregularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_420_layer_call_fn_485608Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_420_layer_call_and_return_conditional_losses_485619Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-@@2conv3d_421/kernel
:@2conv3d_421/bias
0
я0
№1"
trackable_list_wrapper
0
я0
№1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
ё	variables
ђtrainable_variables
ѓregularization_losses
ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_421_layer_call_fn_485628Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_421_layer_call_and_return_conditional_losses_485639Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-@@2conv3d_422/kernel
:@2conv3d_422/bias
0
ї0
ј1"
trackable_list_wrapper
0
ї0
ј1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
љ	variables
њtrainable_variables
ћregularization_losses
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_422_layer_call_fn_485648Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_422_layer_call_and_return_conditional_losses_485659Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
8:6 @2conv3d_transpose_62/kernel
&:$ 2conv3d_transpose_62/bias
0
џ0
1"
trackable_list_wrapper
0
џ0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
о2л
4__inference_conv3d_transpose_62_layer_call_fn_485668Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љ2і
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_485703Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-  2conv3d_423/kernel
: 2conv3d_423/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_423_layer_call_fn_485712Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_423_layer_call_and_return_conditional_losses_485723Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
й2ж
/__inference_concatenate_62_layer_call_fn_485729Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
є2ё
J__inference_concatenate_62_layer_call_and_return_conditional_losses_485736Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-@ 2conv3d_424/kernel
: 2conv3d_424/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_424_layer_call_fn_485745Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_424_layer_call_and_return_conditional_losses_485756Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-  2conv3d_425/kernel
: 2conv3d_425/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
Ёregularization_losses
Ѓ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_425_layer_call_fn_485765Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_425_layer_call_and_return_conditional_losses_485776Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-  2conv3d_426/kernel
: 2conv3d_426/bias
0
Ѕ0
І1"
trackable_list_wrapper
0
Ѕ0
І1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ї	variables
Јtrainable_variables
Љregularization_losses
Ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_426_layer_call_fn_485785Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_426_layer_call_and_return_conditional_losses_485796Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
8:6 2conv3d_transpose_63/kernel
&:$2conv3d_transpose_63/bias
0
­0
Ў1"
trackable_list_wrapper
0
­0
Ў1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Џ	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
о2л
4__inference_conv3d_transpose_63_layer_call_fn_485805Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љ2і
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_485840Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-2conv3d_427/kernel
:2conv3d_427/bias
0
Е0
Ж1"
trackable_list_wrapper
0
Е0
Ж1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_427_layer_call_fn_485849Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_427_layer_call_and_return_conditional_losses_485860Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ѓnon_trainable_variables
Єlayers
Ѕmetrics
 Іlayer_regularization_losses
Їlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
й2ж
/__inference_concatenate_63_layer_call_fn_485866Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
є2ё
J__inference_concatenate_63_layer_call_and_return_conditional_losses_485873Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:- 2conv3d_428/kernel
:2conv3d_428/bias
0
У0
Ф1"
trackable_list_wrapper
0
У0
Ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_428_layer_call_fn_485882Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_428_layer_call_and_return_conditional_losses_485893Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-2conv3d_429/kernel
:2conv3d_429/bias
0
Ы0
Ь1"
trackable_list_wrapper
0
Ы0
Ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_429_layer_call_fn_485902Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_429_layer_call_and_return_conditional_losses_485913Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-2conv3d_430/kernel
:2conv3d_430/bias
0
г0
д1"
trackable_list_wrapper
0
г0
д1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_430_layer_call_fn_485922Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_430_layer_call_and_return_conditional_losses_485933Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
и2е
.__inference_cropping3d_15_layer_call_fn_485938Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_485946Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/:-2conv3d_431/kernel
:2conv3d_431/bias
0
с0
т1"
trackable_list_wrapper
0
с0
т1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_431_layer_call_fn_485955Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv3d_431_layer_call_and_return_conditional_losses_485965Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
ц
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41"
trackable_list_wrapper
0
С0
Т1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЬBЩ
$__inference_signature_wrapper_485128input_16"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Уtotal

Фcount
Х	variables
Ц	keras_api"
_tf_keras_metric
R

Чtotal

Шcount
Щ	variables
Ъ	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
У0
Ф1"
trackable_list_wrapper
.
Х	variables"
_generic_user_object
:  (2total
:  (2count
0
Ч0
Ш1"
trackable_list_wrapper
.
Щ	variables"
_generic_user_object
4:22Adam/conv3d_405/kernel/m
": 2Adam/conv3d_405/bias/m
4:22Adam/conv3d_406/kernel/m
": 2Adam/conv3d_406/bias/m
4:2 2Adam/conv3d_407/kernel/m
":  2Adam/conv3d_407/bias/m
4:2  2Adam/conv3d_408/kernel/m
":  2Adam/conv3d_408/bias/m
4:2 @2Adam/conv3d_409/kernel/m
": @2Adam/conv3d_409/bias/m
4:2@@2Adam/conv3d_410/kernel/m
": @2Adam/conv3d_410/bias/m
5:3@2Adam/conv3d_411/kernel/m
#:!2Adam/conv3d_411/bias/m
6:42Adam/conv3d_412/kernel/m
#:!2Adam/conv3d_412/bias/m
6:42Adam/conv3d_413/kernel/m
#:!2Adam/conv3d_413/bias/m
6:42Adam/conv3d_414/kernel/m
#:!2Adam/conv3d_414/bias/m
?:=2!Adam/conv3d_transpose_60/kernel/m
,:*2Adam/conv3d_transpose_60/bias/m
6:42Adam/conv3d_415/kernel/m
#:!2Adam/conv3d_415/bias/m
6:42Adam/conv3d_416/kernel/m
#:!2Adam/conv3d_416/bias/m
6:42Adam/conv3d_417/kernel/m
#:!2Adam/conv3d_417/bias/m
6:42Adam/conv3d_418/kernel/m
#:!2Adam/conv3d_418/bias/m
>:<@2!Adam/conv3d_transpose_61/kernel/m
+:)@2Adam/conv3d_transpose_61/bias/m
4:2@@2Adam/conv3d_419/kernel/m
": @2Adam/conv3d_419/bias/m
5:3@2Adam/conv3d_420/kernel/m
": @2Adam/conv3d_420/bias/m
4:2@@2Adam/conv3d_421/kernel/m
": @2Adam/conv3d_421/bias/m
4:2@@2Adam/conv3d_422/kernel/m
": @2Adam/conv3d_422/bias/m
=:; @2!Adam/conv3d_transpose_62/kernel/m
+:) 2Adam/conv3d_transpose_62/bias/m
4:2  2Adam/conv3d_423/kernel/m
":  2Adam/conv3d_423/bias/m
4:2@ 2Adam/conv3d_424/kernel/m
":  2Adam/conv3d_424/bias/m
4:2  2Adam/conv3d_425/kernel/m
":  2Adam/conv3d_425/bias/m
4:2  2Adam/conv3d_426/kernel/m
":  2Adam/conv3d_426/bias/m
=:; 2!Adam/conv3d_transpose_63/kernel/m
+:)2Adam/conv3d_transpose_63/bias/m
4:22Adam/conv3d_427/kernel/m
": 2Adam/conv3d_427/bias/m
4:2 2Adam/conv3d_428/kernel/m
": 2Adam/conv3d_428/bias/m
4:22Adam/conv3d_429/kernel/m
": 2Adam/conv3d_429/bias/m
4:22Adam/conv3d_430/kernel/m
": 2Adam/conv3d_430/bias/m
4:22Adam/conv3d_431/kernel/m
": 2Adam/conv3d_431/bias/m
4:22Adam/conv3d_405/kernel/v
": 2Adam/conv3d_405/bias/v
4:22Adam/conv3d_406/kernel/v
": 2Adam/conv3d_406/bias/v
4:2 2Adam/conv3d_407/kernel/v
":  2Adam/conv3d_407/bias/v
4:2  2Adam/conv3d_408/kernel/v
":  2Adam/conv3d_408/bias/v
4:2 @2Adam/conv3d_409/kernel/v
": @2Adam/conv3d_409/bias/v
4:2@@2Adam/conv3d_410/kernel/v
": @2Adam/conv3d_410/bias/v
5:3@2Adam/conv3d_411/kernel/v
#:!2Adam/conv3d_411/bias/v
6:42Adam/conv3d_412/kernel/v
#:!2Adam/conv3d_412/bias/v
6:42Adam/conv3d_413/kernel/v
#:!2Adam/conv3d_413/bias/v
6:42Adam/conv3d_414/kernel/v
#:!2Adam/conv3d_414/bias/v
?:=2!Adam/conv3d_transpose_60/kernel/v
,:*2Adam/conv3d_transpose_60/bias/v
6:42Adam/conv3d_415/kernel/v
#:!2Adam/conv3d_415/bias/v
6:42Adam/conv3d_416/kernel/v
#:!2Adam/conv3d_416/bias/v
6:42Adam/conv3d_417/kernel/v
#:!2Adam/conv3d_417/bias/v
6:42Adam/conv3d_418/kernel/v
#:!2Adam/conv3d_418/bias/v
>:<@2!Adam/conv3d_transpose_61/kernel/v
+:)@2Adam/conv3d_transpose_61/bias/v
4:2@@2Adam/conv3d_419/kernel/v
": @2Adam/conv3d_419/bias/v
5:3@2Adam/conv3d_420/kernel/v
": @2Adam/conv3d_420/bias/v
4:2@@2Adam/conv3d_421/kernel/v
": @2Adam/conv3d_421/bias/v
4:2@@2Adam/conv3d_422/kernel/v
": @2Adam/conv3d_422/bias/v
=:; @2!Adam/conv3d_transpose_62/kernel/v
+:) 2Adam/conv3d_transpose_62/bias/v
4:2  2Adam/conv3d_423/kernel/v
":  2Adam/conv3d_423/bias/v
4:2@ 2Adam/conv3d_424/kernel/v
":  2Adam/conv3d_424/bias/v
4:2  2Adam/conv3d_425/kernel/v
":  2Adam/conv3d_425/bias/v
4:2  2Adam/conv3d_426/kernel/v
":  2Adam/conv3d_426/bias/v
=:; 2!Adam/conv3d_transpose_63/kernel/v
+:)2Adam/conv3d_transpose_63/bias/v
4:22Adam/conv3d_427/kernel/v
": 2Adam/conv3d_427/bias/v
4:2 2Adam/conv3d_428/kernel/v
": 2Adam/conv3d_428/bias/v
4:22Adam/conv3d_429/kernel/v
": 2Adam/conv3d_429/bias/v
4:22Adam/conv3d_430/kernel/v
": 2Adam/conv3d_430/bias/v
4:22Adam/conv3d_431/kernel/v
": 2Adam/conv3d_431/bias/vа
!__inference__wrapped_model_481940Њn;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдстXЂU
NЂK
IF
input_168џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "^Њ[
Y

conv3d_431KH

conv3d_4318џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџа
J__inference_concatenate_60_layer_call_and_return_conditional_losses_485462ЏЂЋ
ЃЂ

JG
inputs/09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
JG
inputs/19џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ј
/__inference_concatenate_60_layer_call_fn_485455єЏЂЋ
ЃЂ

JG
inputs/09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
JG
inputs/19џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЮ
J__inference_concatenate_61_layer_call_and_return_conditional_losses_485599џ­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 І
/__inference_concatenate_61_layer_call_fn_485592ђ­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЭ
J__inference_concatenate_62_layer_call_and_return_conditional_losses_485736ў­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Ѕ
/__inference_concatenate_62_layer_call_fn_485729ё­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Э
J__inference_concatenate_63_layer_call_and_return_conditional_losses_485873ў­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Ѕ
/__inference_concatenate_63_layer_call_fn_485866ё­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_405_layer_call_and_return_conditional_losses_485159Њ;<VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
+__inference_conv3d_405_layer_call_fn_485148;<VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
F__inference_conv3d_406_layer_call_and_return_conditional_losses_485179ЊCDVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
+__inference_conv3d_406_layer_call_fn_485168CDVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
F__inference_conv3d_407_layer_call_and_return_conditional_losses_485209ЊQRVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Э
+__inference_conv3d_407_layer_call_fn_485198QRVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_408_layer_call_and_return_conditional_losses_485229ЊYZVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Э
+__inference_conv3d_408_layer_call_fn_485218YZVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_409_layer_call_and_return_conditional_losses_485259ЊghVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Э
+__inference_conv3d_409_layer_call_fn_485248ghVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ѕ
F__inference_conv3d_410_layer_call_and_return_conditional_losses_485279ЊopVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Э
+__inference_conv3d_410_layer_call_fn_485268opVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@і
F__inference_conv3d_411_layer_call_and_return_conditional_losses_485309Ћ}~VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
+__inference_conv3d_411_layer_call_fn_485298}~VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_412_layer_call_and_return_conditional_losses_485329ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_412_layer_call_fn_485318ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_413_layer_call_and_return_conditional_losses_485359ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_413_layer_call_fn_485348ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_414_layer_call_and_return_conditional_losses_485379ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_414_layer_call_fn_485368ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_415_layer_call_and_return_conditional_losses_485449ЎЋЌWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_415_layer_call_fn_485438ЁЋЌWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_416_layer_call_and_return_conditional_losses_485482ЎЙКWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_416_layer_call_fn_485471ЁЙКWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_417_layer_call_and_return_conditional_losses_485502ЎСТWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_417_layer_call_fn_485491ЁСТWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_418_layer_call_and_return_conditional_losses_485522ЎЩЪWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_418_layer_call_fn_485511ЁЩЪWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_419_layer_call_and_return_conditional_losses_485586ЌйкVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_419_layer_call_fn_485575йкVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ј
F__inference_conv3d_420_layer_call_and_return_conditional_losses_485619­чшWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 а
+__inference_conv3d_420_layer_call_fn_485608 чшWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_421_layer_call_and_return_conditional_losses_485639Ќя№VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_421_layer_call_fn_485628я№VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_422_layer_call_and_return_conditional_losses_485659ЌїјVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_422_layer_call_fn_485648їјVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_423_layer_call_and_return_conditional_losses_485723ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_423_layer_call_fn_485712VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_424_layer_call_and_return_conditional_losses_485756ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_424_layer_call_fn_485745VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_425_layer_call_and_return_conditional_losses_485776ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_425_layer_call_fn_485765VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_426_layer_call_and_return_conditional_losses_485796ЌЅІVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_426_layer_call_fn_485785ЅІVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_427_layer_call_and_return_conditional_losses_485860ЌЕЖVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_427_layer_call_fn_485849ЕЖVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_428_layer_call_and_return_conditional_losses_485893ЌУФVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_428_layer_call_fn_485882УФVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_429_layer_call_and_return_conditional_losses_485913ЌЫЬVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_429_layer_call_fn_485902ЫЬVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_430_layer_call_and_return_conditional_losses_485933ЌгдVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_430_layer_call_fn_485922гдVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_431_layer_call_and_return_conditional_losses_485965ЌстVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_431_layer_call_fn_485955стVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
O__inference_conv3d_transpose_60_layer_call_and_return_conditional_losses_485429ЎЃЄWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 к
4__inference_conv3d_transpose_60_layer_call_fn_485388ЁЃЄWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
O__inference_conv3d_transpose_61_layer_call_and_return_conditional_losses_485566­бвWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 й
4__inference_conv3d_transpose_61_layer_call_fn_485531 бвWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
O__inference_conv3d_transpose_62_layer_call_and_return_conditional_losses_485703ЌџVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 и
4__inference_conv3d_transpose_62_layer_call_fn_485668џVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
O__inference_conv3d_transpose_63_layer_call_and_return_conditional_losses_485840Ќ­ЎVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 и
4__inference_conv3d_transpose_63_layer_call_fn_485805­ЎVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
I__inference_cropping3d_15_layer_call_and_return_conditional_losses_485946И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 о
.__inference_cropping3d_15_layer_call_fn_485938Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_60_layer_call_and_return_conditional_losses_485189И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_60_layer_call_fn_485184Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_61_layer_call_and_return_conditional_losses_485239И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_61_layer_call_fn_485234Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_62_layer_call_and_return_conditional_losses_485289И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_62_layer_call_fn_485284Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_63_layer_call_and_return_conditional_losses_485339И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_63_layer_call_fn_485334Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџщ
D__inference_model_15_layer_call_and_return_conditional_losses_483884 n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_168џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 щ
D__inference_model_15_layer_call_and_return_conditional_losses_484053 n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_168џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ч
D__inference_model_15_layer_call_and_return_conditional_losses_484657n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ч
D__inference_model_15_layer_call_and_return_conditional_losses_484997n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 С
)__inference_model_15_layer_call_fn_482861n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_168џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџС
)__inference_model_15_layer_call_fn_483715n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_168џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџП
)__inference_model_15_layer_call_fn_484188n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџП
)__inference_model_15_layer_call_fn_484317n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџп
$__inference_signature_wrapper_485128Жn;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдстdЂa
Ђ 
ZЊW
U
input_16IF
input_168џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"^Њ[
Y

conv3d_431KH

conv3d_4318џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
M__inference_zero_padding3d_15_layer_call_and_return_conditional_losses_485139И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 т
2__inference_zero_padding3d_15_layer_call_fn_485133Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ