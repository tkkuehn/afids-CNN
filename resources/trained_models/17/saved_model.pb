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
conv3d_432/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_432/kernel

%conv3d_432/kernel/Read/ReadVariableOpReadVariableOpconv3d_432/kernel**
_output_shapes
:*
dtype0
v
conv3d_432/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_432/bias
o
#conv3d_432/bias/Read/ReadVariableOpReadVariableOpconv3d_432/bias*
_output_shapes
:*
dtype0

conv3d_433/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_433/kernel

%conv3d_433/kernel/Read/ReadVariableOpReadVariableOpconv3d_433/kernel**
_output_shapes
:*
dtype0
v
conv3d_433/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_433/bias
o
#conv3d_433/bias/Read/ReadVariableOpReadVariableOpconv3d_433/bias*
_output_shapes
:*
dtype0

conv3d_434/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_434/kernel

%conv3d_434/kernel/Read/ReadVariableOpReadVariableOpconv3d_434/kernel**
_output_shapes
: *
dtype0
v
conv3d_434/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_434/bias
o
#conv3d_434/bias/Read/ReadVariableOpReadVariableOpconv3d_434/bias*
_output_shapes
: *
dtype0

conv3d_435/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_435/kernel

%conv3d_435/kernel/Read/ReadVariableOpReadVariableOpconv3d_435/kernel**
_output_shapes
:  *
dtype0
v
conv3d_435/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_435/bias
o
#conv3d_435/bias/Read/ReadVariableOpReadVariableOpconv3d_435/bias*
_output_shapes
: *
dtype0

conv3d_436/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv3d_436/kernel

%conv3d_436/kernel/Read/ReadVariableOpReadVariableOpconv3d_436/kernel**
_output_shapes
: @*
dtype0
v
conv3d_436/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_436/bias
o
#conv3d_436/bias/Read/ReadVariableOpReadVariableOpconv3d_436/bias*
_output_shapes
:@*
dtype0

conv3d_437/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_437/kernel

%conv3d_437/kernel/Read/ReadVariableOpReadVariableOpconv3d_437/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_437/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_437/bias
o
#conv3d_437/bias/Read/ReadVariableOpReadVariableOpconv3d_437/bias*
_output_shapes
:@*
dtype0

conv3d_438/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*"
shared_nameconv3d_438/kernel

%conv3d_438/kernel/Read/ReadVariableOpReadVariableOpconv3d_438/kernel*+
_output_shapes
:@*
dtype0
w
conv3d_438/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_438/bias
p
#conv3d_438/bias/Read/ReadVariableOpReadVariableOpconv3d_438/bias*
_output_shapes	
:*
dtype0

conv3d_439/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_439/kernel

%conv3d_439/kernel/Read/ReadVariableOpReadVariableOpconv3d_439/kernel*,
_output_shapes
:*
dtype0
w
conv3d_439/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_439/bias
p
#conv3d_439/bias/Read/ReadVariableOpReadVariableOpconv3d_439/bias*
_output_shapes	
:*
dtype0

conv3d_440/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_440/kernel

%conv3d_440/kernel/Read/ReadVariableOpReadVariableOpconv3d_440/kernel*,
_output_shapes
:*
dtype0
w
conv3d_440/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_440/bias
p
#conv3d_440/bias/Read/ReadVariableOpReadVariableOpconv3d_440/bias*
_output_shapes	
:*
dtype0

conv3d_441/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_441/kernel

%conv3d_441/kernel/Read/ReadVariableOpReadVariableOpconv3d_441/kernel*,
_output_shapes
:*
dtype0
w
conv3d_441/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_441/bias
p
#conv3d_441/bias/Read/ReadVariableOpReadVariableOpconv3d_441/bias*
_output_shapes	
:*
dtype0

conv3d_transpose_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*+
shared_nameconv3d_transpose_64/kernel

.conv3d_transpose_64/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_64/kernel*,
_output_shapes
:*
dtype0

conv3d_transpose_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv3d_transpose_64/bias

,conv3d_transpose_64/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_64/bias*
_output_shapes	
:*
dtype0

conv3d_442/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_442/kernel

%conv3d_442/kernel/Read/ReadVariableOpReadVariableOpconv3d_442/kernel*,
_output_shapes
:*
dtype0
w
conv3d_442/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_442/bias
p
#conv3d_442/bias/Read/ReadVariableOpReadVariableOpconv3d_442/bias*
_output_shapes	
:*
dtype0

conv3d_443/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_443/kernel

%conv3d_443/kernel/Read/ReadVariableOpReadVariableOpconv3d_443/kernel*,
_output_shapes
:*
dtype0
w
conv3d_443/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_443/bias
p
#conv3d_443/bias/Read/ReadVariableOpReadVariableOpconv3d_443/bias*
_output_shapes	
:*
dtype0

conv3d_444/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_444/kernel

%conv3d_444/kernel/Read/ReadVariableOpReadVariableOpconv3d_444/kernel*,
_output_shapes
:*
dtype0
w
conv3d_444/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_444/bias
p
#conv3d_444/bias/Read/ReadVariableOpReadVariableOpconv3d_444/bias*
_output_shapes	
:*
dtype0

conv3d_445/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_445/kernel

%conv3d_445/kernel/Read/ReadVariableOpReadVariableOpconv3d_445/kernel*,
_output_shapes
:*
dtype0
w
conv3d_445/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_445/bias
p
#conv3d_445/bias/Read/ReadVariableOpReadVariableOpconv3d_445/bias*
_output_shapes	
:*
dtype0

conv3d_transpose_65/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*+
shared_nameconv3d_transpose_65/kernel

.conv3d_transpose_65/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_65/kernel*+
_output_shapes
:@*
dtype0

conv3d_transpose_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv3d_transpose_65/bias

,conv3d_transpose_65/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_65/bias*
_output_shapes
:@*
dtype0

conv3d_446/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_446/kernel

%conv3d_446/kernel/Read/ReadVariableOpReadVariableOpconv3d_446/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_446/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_446/bias
o
#conv3d_446/bias/Read/ReadVariableOpReadVariableOpconv3d_446/bias*
_output_shapes
:@*
dtype0

conv3d_447/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*"
shared_nameconv3d_447/kernel

%conv3d_447/kernel/Read/ReadVariableOpReadVariableOpconv3d_447/kernel*+
_output_shapes
:@*
dtype0
v
conv3d_447/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_447/bias
o
#conv3d_447/bias/Read/ReadVariableOpReadVariableOpconv3d_447/bias*
_output_shapes
:@*
dtype0

conv3d_448/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_448/kernel

%conv3d_448/kernel/Read/ReadVariableOpReadVariableOpconv3d_448/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_448/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_448/bias
o
#conv3d_448/bias/Read/ReadVariableOpReadVariableOpconv3d_448/bias*
_output_shapes
:@*
dtype0

conv3d_449/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_449/kernel

%conv3d_449/kernel/Read/ReadVariableOpReadVariableOpconv3d_449/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_449/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_449/bias
o
#conv3d_449/bias/Read/ReadVariableOpReadVariableOpconv3d_449/bias*
_output_shapes
:@*
dtype0

conv3d_transpose_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv3d_transpose_66/kernel

.conv3d_transpose_66/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_66/kernel**
_output_shapes
: @*
dtype0

conv3d_transpose_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv3d_transpose_66/bias

,conv3d_transpose_66/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_66/bias*
_output_shapes
: *
dtype0

conv3d_450/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_450/kernel

%conv3d_450/kernel/Read/ReadVariableOpReadVariableOpconv3d_450/kernel**
_output_shapes
:  *
dtype0
v
conv3d_450/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_450/bias
o
#conv3d_450/bias/Read/ReadVariableOpReadVariableOpconv3d_450/bias*
_output_shapes
: *
dtype0

conv3d_451/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv3d_451/kernel

%conv3d_451/kernel/Read/ReadVariableOpReadVariableOpconv3d_451/kernel**
_output_shapes
:@ *
dtype0
v
conv3d_451/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_451/bias
o
#conv3d_451/bias/Read/ReadVariableOpReadVariableOpconv3d_451/bias*
_output_shapes
: *
dtype0

conv3d_452/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_452/kernel

%conv3d_452/kernel/Read/ReadVariableOpReadVariableOpconv3d_452/kernel**
_output_shapes
:  *
dtype0
v
conv3d_452/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_452/bias
o
#conv3d_452/bias/Read/ReadVariableOpReadVariableOpconv3d_452/bias*
_output_shapes
: *
dtype0

conv3d_453/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_453/kernel

%conv3d_453/kernel/Read/ReadVariableOpReadVariableOpconv3d_453/kernel**
_output_shapes
:  *
dtype0
v
conv3d_453/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_453/bias
o
#conv3d_453/bias/Read/ReadVariableOpReadVariableOpconv3d_453/bias*
_output_shapes
: *
dtype0

conv3d_transpose_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv3d_transpose_67/kernel

.conv3d_transpose_67/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_67/kernel**
_output_shapes
: *
dtype0

conv3d_transpose_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv3d_transpose_67/bias

,conv3d_transpose_67/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_67/bias*
_output_shapes
:*
dtype0

conv3d_454/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_454/kernel

%conv3d_454/kernel/Read/ReadVariableOpReadVariableOpconv3d_454/kernel**
_output_shapes
:*
dtype0
v
conv3d_454/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_454/bias
o
#conv3d_454/bias/Read/ReadVariableOpReadVariableOpconv3d_454/bias*
_output_shapes
:*
dtype0

conv3d_455/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_455/kernel

%conv3d_455/kernel/Read/ReadVariableOpReadVariableOpconv3d_455/kernel**
_output_shapes
: *
dtype0
v
conv3d_455/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_455/bias
o
#conv3d_455/bias/Read/ReadVariableOpReadVariableOpconv3d_455/bias*
_output_shapes
:*
dtype0

conv3d_456/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_456/kernel

%conv3d_456/kernel/Read/ReadVariableOpReadVariableOpconv3d_456/kernel**
_output_shapes
:*
dtype0
v
conv3d_456/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_456/bias
o
#conv3d_456/bias/Read/ReadVariableOpReadVariableOpconv3d_456/bias*
_output_shapes
:*
dtype0

conv3d_457/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_457/kernel

%conv3d_457/kernel/Read/ReadVariableOpReadVariableOpconv3d_457/kernel**
_output_shapes
:*
dtype0
v
conv3d_457/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_457/bias
o
#conv3d_457/bias/Read/ReadVariableOpReadVariableOpconv3d_457/bias*
_output_shapes
:*
dtype0

conv3d_458/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_458/kernel

%conv3d_458/kernel/Read/ReadVariableOpReadVariableOpconv3d_458/kernel**
_output_shapes
:*
dtype0
v
conv3d_458/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_458/bias
o
#conv3d_458/bias/Read/ReadVariableOpReadVariableOpconv3d_458/bias*
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
Adam/conv3d_432/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_432/kernel/m

,Adam/conv3d_432/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_432/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_432/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_432/bias/m
}
*Adam/conv3d_432/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_432/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_433/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_433/kernel/m

,Adam/conv3d_433/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_433/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_433/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_433/bias/m
}
*Adam/conv3d_433/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_433/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_434/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_434/kernel/m

,Adam/conv3d_434/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_434/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_434/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_434/bias/m
}
*Adam/conv3d_434/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_434/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_435/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_435/kernel/m

,Adam/conv3d_435/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_435/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_435/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_435/bias/m
}
*Adam/conv3d_435/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_435/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_436/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_436/kernel/m

,Adam/conv3d_436/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_436/kernel/m**
_output_shapes
: @*
dtype0

Adam/conv3d_436/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_436/bias/m
}
*Adam/conv3d_436/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_436/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_437/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_437/kernel/m

,Adam/conv3d_437/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_437/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_437/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_437/bias/m
}
*Adam/conv3d_437/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_437/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_438/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_438/kernel/m

,Adam/conv3d_438/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_438/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_438/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_438/bias/m
~
*Adam/conv3d_438/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_438/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_439/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_439/kernel/m

,Adam/conv3d_439/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_439/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_439/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_439/bias/m
~
*Adam/conv3d_439/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_439/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_440/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_440/kernel/m

,Adam/conv3d_440/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_440/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_440/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_440/bias/m
~
*Adam/conv3d_440/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_440/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_441/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_441/kernel/m

,Adam/conv3d_441/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_441/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_441/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_441/bias/m
~
*Adam/conv3d_441/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_441/bias/m*
_output_shapes	
:*
dtype0
Ќ
!Adam/conv3d_transpose_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*2
shared_name#!Adam/conv3d_transpose_64/kernel/m
Ѕ
5Adam/conv3d_transpose_64/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_64/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_transpose_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_64/bias/m

3Adam/conv3d_transpose_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_64/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_442/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_442/kernel/m

,Adam/conv3d_442/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_442/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_442/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_442/bias/m
~
*Adam/conv3d_442/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_442/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_443/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_443/kernel/m

,Adam/conv3d_443/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_443/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_443/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_443/bias/m
~
*Adam/conv3d_443/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_443/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_444/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_444/kernel/m

,Adam/conv3d_444/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_444/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_444/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_444/bias/m
~
*Adam/conv3d_444/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_444/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_445/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_445/kernel/m

,Adam/conv3d_445/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_445/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_445/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_445/bias/m
~
*Adam/conv3d_445/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_445/bias/m*
_output_shapes	
:*
dtype0
Ћ
!Adam/conv3d_transpose_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*2
shared_name#!Adam/conv3d_transpose_65/kernel/m
Є
5Adam/conv3d_transpose_65/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_65/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_transpose_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_65/bias/m

3Adam/conv3d_transpose_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_65/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_446/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_446/kernel/m

,Adam/conv3d_446/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_446/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_446/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_446/bias/m
}
*Adam/conv3d_446/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_446/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_447/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_447/kernel/m

,Adam/conv3d_447/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_447/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_447/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_447/bias/m
}
*Adam/conv3d_447/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_447/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_448/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_448/kernel/m

,Adam/conv3d_448/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_448/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_448/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_448/bias/m
}
*Adam/conv3d_448/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_448/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_449/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_449/kernel/m

,Adam/conv3d_449/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_449/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_449/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_449/bias/m
}
*Adam/conv3d_449/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_449/bias/m*
_output_shapes
:@*
dtype0
Њ
!Adam/conv3d_transpose_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_66/kernel/m
Ѓ
5Adam/conv3d_transpose_66/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_66/kernel/m**
_output_shapes
: @*
dtype0

Adam/conv3d_transpose_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_66/bias/m

3Adam/conv3d_transpose_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_66/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_450/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_450/kernel/m

,Adam/conv3d_450/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_450/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_450/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_450/bias/m
}
*Adam/conv3d_450/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_450/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_451/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_451/kernel/m

,Adam/conv3d_451/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_451/kernel/m**
_output_shapes
:@ *
dtype0

Adam/conv3d_451/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_451/bias/m
}
*Adam/conv3d_451/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_451/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_452/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_452/kernel/m

,Adam/conv3d_452/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_452/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_452/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_452/bias/m
}
*Adam/conv3d_452/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_452/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_453/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_453/kernel/m

,Adam/conv3d_453/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_453/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_453/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_453/bias/m
}
*Adam/conv3d_453/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_453/bias/m*
_output_shapes
: *
dtype0
Њ
!Adam/conv3d_transpose_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_67/kernel/m
Ѓ
5Adam/conv3d_transpose_67/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_67/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_transpose_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_67/bias/m

3Adam/conv3d_transpose_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_67/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_454/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_454/kernel/m

,Adam/conv3d_454/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_454/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_454/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_454/bias/m
}
*Adam/conv3d_454/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_454/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_455/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_455/kernel/m

,Adam/conv3d_455/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_455/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_455/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_455/bias/m
}
*Adam/conv3d_455/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_455/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_456/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_456/kernel/m

,Adam/conv3d_456/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_456/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_456/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_456/bias/m
}
*Adam/conv3d_456/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_456/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_457/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_457/kernel/m

,Adam/conv3d_457/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_457/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_457/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_457/bias/m
}
*Adam/conv3d_457/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_457/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_458/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_458/kernel/m

,Adam/conv3d_458/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_458/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_458/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_458/bias/m
}
*Adam/conv3d_458/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_458/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_432/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_432/kernel/v

,Adam/conv3d_432/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_432/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_432/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_432/bias/v
}
*Adam/conv3d_432/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_432/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_433/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_433/kernel/v

,Adam/conv3d_433/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_433/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_433/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_433/bias/v
}
*Adam/conv3d_433/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_433/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_434/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_434/kernel/v

,Adam/conv3d_434/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_434/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_434/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_434/bias/v
}
*Adam/conv3d_434/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_434/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_435/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_435/kernel/v

,Adam/conv3d_435/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_435/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_435/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_435/bias/v
}
*Adam/conv3d_435/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_435/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_436/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_436/kernel/v

,Adam/conv3d_436/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_436/kernel/v**
_output_shapes
: @*
dtype0

Adam/conv3d_436/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_436/bias/v
}
*Adam/conv3d_436/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_436/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_437/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_437/kernel/v

,Adam/conv3d_437/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_437/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_437/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_437/bias/v
}
*Adam/conv3d_437/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_437/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_438/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_438/kernel/v

,Adam/conv3d_438/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_438/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_438/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_438/bias/v
~
*Adam/conv3d_438/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_438/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_439/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_439/kernel/v

,Adam/conv3d_439/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_439/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_439/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_439/bias/v
~
*Adam/conv3d_439/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_439/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_440/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_440/kernel/v

,Adam/conv3d_440/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_440/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_440/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_440/bias/v
~
*Adam/conv3d_440/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_440/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_441/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_441/kernel/v

,Adam/conv3d_441/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_441/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_441/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_441/bias/v
~
*Adam/conv3d_441/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_441/bias/v*
_output_shapes	
:*
dtype0
Ќ
!Adam/conv3d_transpose_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*2
shared_name#!Adam/conv3d_transpose_64/kernel/v
Ѕ
5Adam/conv3d_transpose_64/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_64/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_transpose_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_64/bias/v

3Adam/conv3d_transpose_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_64/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_442/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_442/kernel/v

,Adam/conv3d_442/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_442/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_442/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_442/bias/v
~
*Adam/conv3d_442/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_442/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_443/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_443/kernel/v

,Adam/conv3d_443/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_443/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_443/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_443/bias/v
~
*Adam/conv3d_443/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_443/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_444/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_444/kernel/v

,Adam/conv3d_444/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_444/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_444/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_444/bias/v
~
*Adam/conv3d_444/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_444/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_445/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_445/kernel/v

,Adam/conv3d_445/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_445/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_445/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_445/bias/v
~
*Adam/conv3d_445/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_445/bias/v*
_output_shapes	
:*
dtype0
Ћ
!Adam/conv3d_transpose_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*2
shared_name#!Adam/conv3d_transpose_65/kernel/v
Є
5Adam/conv3d_transpose_65/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_65/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_transpose_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_65/bias/v

3Adam/conv3d_transpose_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_65/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_446/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_446/kernel/v

,Adam/conv3d_446/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_446/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_446/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_446/bias/v
}
*Adam/conv3d_446/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_446/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_447/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_447/kernel/v

,Adam/conv3d_447/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_447/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_447/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_447/bias/v
}
*Adam/conv3d_447/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_447/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_448/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_448/kernel/v

,Adam/conv3d_448/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_448/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_448/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_448/bias/v
}
*Adam/conv3d_448/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_448/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_449/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_449/kernel/v

,Adam/conv3d_449/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_449/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_449/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_449/bias/v
}
*Adam/conv3d_449/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_449/bias/v*
_output_shapes
:@*
dtype0
Њ
!Adam/conv3d_transpose_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_66/kernel/v
Ѓ
5Adam/conv3d_transpose_66/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_66/kernel/v**
_output_shapes
: @*
dtype0

Adam/conv3d_transpose_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_66/bias/v

3Adam/conv3d_transpose_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_66/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_450/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_450/kernel/v

,Adam/conv3d_450/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_450/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_450/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_450/bias/v
}
*Adam/conv3d_450/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_450/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_451/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_451/kernel/v

,Adam/conv3d_451/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_451/kernel/v**
_output_shapes
:@ *
dtype0

Adam/conv3d_451/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_451/bias/v
}
*Adam/conv3d_451/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_451/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_452/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_452/kernel/v

,Adam/conv3d_452/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_452/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_452/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_452/bias/v
}
*Adam/conv3d_452/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_452/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_453/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_453/kernel/v

,Adam/conv3d_453/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_453/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_453/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_453/bias/v
}
*Adam/conv3d_453/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_453/bias/v*
_output_shapes
: *
dtype0
Њ
!Adam/conv3d_transpose_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_67/kernel/v
Ѓ
5Adam/conv3d_transpose_67/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_67/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_transpose_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_67/bias/v

3Adam/conv3d_transpose_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_67/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_454/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_454/kernel/v

,Adam/conv3d_454/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_454/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_454/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_454/bias/v
}
*Adam/conv3d_454/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_454/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_455/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_455/kernel/v

,Adam/conv3d_455/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_455/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_455/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_455/bias/v
}
*Adam/conv3d_455/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_455/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_456/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_456/kernel/v

,Adam/conv3d_456/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_456/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_456/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_456/bias/v
}
*Adam/conv3d_456/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_456/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_457/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_457/kernel/v

,Adam/conv3d_457/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_457/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_457/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_457/bias/v
}
*Adam/conv3d_457/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_457/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_458/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_458/kernel/v

,Adam/conv3d_458/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_458/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_458/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_458/bias/v
}
*Adam/conv3d_458/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_458/bias/v*
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
VARIABLE_VALUEconv3d_432/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_432/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_433/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_433/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_434/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_434/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_435/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_435/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_436/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_436/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_437/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_437/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_438/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_438/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_439/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_439/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_440/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_440/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_441/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_441/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_64/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_64/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_442/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_442/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_443/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_443/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_444/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_444/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_445/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_445/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_65/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_65/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_446/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_446/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_447/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_447/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_448/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_448/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_449/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_449/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_66/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_66/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_450/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_450/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_451/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_451/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_452/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_452/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_453/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_453/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_67/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_67/bias5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_454/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_454/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_455/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_455/bias5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_456/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_456/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_457/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_457/bias5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_458/kernel7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_458/bias5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/conv3d_432/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_432/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_433/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_433/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_434/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_434/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_435/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_435/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_436/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_436/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_437/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_437/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_438/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_438/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_439/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_439/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_440/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_440/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_441/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_441/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_64/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_64/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_442/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_442/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_443/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_443/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_444/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_444/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_445/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_445/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_65/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_65/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_446/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_446/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_447/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_447/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_448/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_448/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_449/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_449/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_66/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_66/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_450/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_450/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_451/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_451/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_452/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_452/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_453/kernel/mSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_453/bias/mQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_67/kernel/mSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_67/bias/mQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_454/kernel/mSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_454/bias/mQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_455/kernel/mSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_455/bias/mQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_456/kernel/mSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_456/bias/mQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_457/kernel/mSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_457/bias/mQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_458/kernel/mSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_458/bias/mQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_432/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_432/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_433/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_433/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_434/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_434/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_435/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_435/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_436/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_436/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_437/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_437/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_438/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_438/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_439/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_439/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_440/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_440/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_441/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_441/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_64/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_64/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_442/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_442/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_443/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_443/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_444/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_444/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_445/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_445/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_65/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_65/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_446/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_446/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_447/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_447/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_448/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_448/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_449/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_449/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_66/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_66/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_450/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_450/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_451/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_451/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_452/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_452/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_453/kernel/vSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_453/bias/vQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_67/kernel/vSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_67/bias/vQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_454/kernel/vSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_454/bias/vQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_455/kernel/vSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_455/bias/vQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_456/kernel/vSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_456/bias/vQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_457/kernel/vSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_457/bias/vQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_458/kernel/vSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_458/bias/vQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Щ
serving_default_input_17Placeholder*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*C
shape::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
§
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_17conv3d_432/kernelconv3d_432/biasconv3d_433/kernelconv3d_433/biasconv3d_434/kernelconv3d_434/biasconv3d_435/kernelconv3d_435/biasconv3d_436/kernelconv3d_436/biasconv3d_437/kernelconv3d_437/biasconv3d_438/kernelconv3d_438/biasconv3d_439/kernelconv3d_439/biasconv3d_440/kernelconv3d_440/biasconv3d_441/kernelconv3d_441/biasconv3d_transpose_64/kernelconv3d_transpose_64/biasconv3d_442/kernelconv3d_442/biasconv3d_443/kernelconv3d_443/biasconv3d_444/kernelconv3d_444/biasconv3d_445/kernelconv3d_445/biasconv3d_transpose_65/kernelconv3d_transpose_65/biasconv3d_446/kernelconv3d_446/biasconv3d_447/kernelconv3d_447/biasconv3d_448/kernelconv3d_448/biasconv3d_449/kernelconv3d_449/biasconv3d_transpose_66/kernelconv3d_transpose_66/biasconv3d_450/kernelconv3d_450/biasconv3d_451/kernelconv3d_451/biasconv3d_452/kernelconv3d_452/biasconv3d_453/kernelconv3d_453/biasconv3d_transpose_67/kernelconv3d_transpose_67/biasconv3d_454/kernelconv3d_454/biasconv3d_455/kernelconv3d_455/biasconv3d_456/kernelconv3d_456/biasconv3d_457/kernelconv3d_457/biasconv3d_458/kernelconv3d_458/bias*J
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
$__inference_signature_wrapper_515626
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
жE
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_432/kernel/Read/ReadVariableOp#conv3d_432/bias/Read/ReadVariableOp%conv3d_433/kernel/Read/ReadVariableOp#conv3d_433/bias/Read/ReadVariableOp%conv3d_434/kernel/Read/ReadVariableOp#conv3d_434/bias/Read/ReadVariableOp%conv3d_435/kernel/Read/ReadVariableOp#conv3d_435/bias/Read/ReadVariableOp%conv3d_436/kernel/Read/ReadVariableOp#conv3d_436/bias/Read/ReadVariableOp%conv3d_437/kernel/Read/ReadVariableOp#conv3d_437/bias/Read/ReadVariableOp%conv3d_438/kernel/Read/ReadVariableOp#conv3d_438/bias/Read/ReadVariableOp%conv3d_439/kernel/Read/ReadVariableOp#conv3d_439/bias/Read/ReadVariableOp%conv3d_440/kernel/Read/ReadVariableOp#conv3d_440/bias/Read/ReadVariableOp%conv3d_441/kernel/Read/ReadVariableOp#conv3d_441/bias/Read/ReadVariableOp.conv3d_transpose_64/kernel/Read/ReadVariableOp,conv3d_transpose_64/bias/Read/ReadVariableOp%conv3d_442/kernel/Read/ReadVariableOp#conv3d_442/bias/Read/ReadVariableOp%conv3d_443/kernel/Read/ReadVariableOp#conv3d_443/bias/Read/ReadVariableOp%conv3d_444/kernel/Read/ReadVariableOp#conv3d_444/bias/Read/ReadVariableOp%conv3d_445/kernel/Read/ReadVariableOp#conv3d_445/bias/Read/ReadVariableOp.conv3d_transpose_65/kernel/Read/ReadVariableOp,conv3d_transpose_65/bias/Read/ReadVariableOp%conv3d_446/kernel/Read/ReadVariableOp#conv3d_446/bias/Read/ReadVariableOp%conv3d_447/kernel/Read/ReadVariableOp#conv3d_447/bias/Read/ReadVariableOp%conv3d_448/kernel/Read/ReadVariableOp#conv3d_448/bias/Read/ReadVariableOp%conv3d_449/kernel/Read/ReadVariableOp#conv3d_449/bias/Read/ReadVariableOp.conv3d_transpose_66/kernel/Read/ReadVariableOp,conv3d_transpose_66/bias/Read/ReadVariableOp%conv3d_450/kernel/Read/ReadVariableOp#conv3d_450/bias/Read/ReadVariableOp%conv3d_451/kernel/Read/ReadVariableOp#conv3d_451/bias/Read/ReadVariableOp%conv3d_452/kernel/Read/ReadVariableOp#conv3d_452/bias/Read/ReadVariableOp%conv3d_453/kernel/Read/ReadVariableOp#conv3d_453/bias/Read/ReadVariableOp.conv3d_transpose_67/kernel/Read/ReadVariableOp,conv3d_transpose_67/bias/Read/ReadVariableOp%conv3d_454/kernel/Read/ReadVariableOp#conv3d_454/bias/Read/ReadVariableOp%conv3d_455/kernel/Read/ReadVariableOp#conv3d_455/bias/Read/ReadVariableOp%conv3d_456/kernel/Read/ReadVariableOp#conv3d_456/bias/Read/ReadVariableOp%conv3d_457/kernel/Read/ReadVariableOp#conv3d_457/bias/Read/ReadVariableOp%conv3d_458/kernel/Read/ReadVariableOp#conv3d_458/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv3d_432/kernel/m/Read/ReadVariableOp*Adam/conv3d_432/bias/m/Read/ReadVariableOp,Adam/conv3d_433/kernel/m/Read/ReadVariableOp*Adam/conv3d_433/bias/m/Read/ReadVariableOp,Adam/conv3d_434/kernel/m/Read/ReadVariableOp*Adam/conv3d_434/bias/m/Read/ReadVariableOp,Adam/conv3d_435/kernel/m/Read/ReadVariableOp*Adam/conv3d_435/bias/m/Read/ReadVariableOp,Adam/conv3d_436/kernel/m/Read/ReadVariableOp*Adam/conv3d_436/bias/m/Read/ReadVariableOp,Adam/conv3d_437/kernel/m/Read/ReadVariableOp*Adam/conv3d_437/bias/m/Read/ReadVariableOp,Adam/conv3d_438/kernel/m/Read/ReadVariableOp*Adam/conv3d_438/bias/m/Read/ReadVariableOp,Adam/conv3d_439/kernel/m/Read/ReadVariableOp*Adam/conv3d_439/bias/m/Read/ReadVariableOp,Adam/conv3d_440/kernel/m/Read/ReadVariableOp*Adam/conv3d_440/bias/m/Read/ReadVariableOp,Adam/conv3d_441/kernel/m/Read/ReadVariableOp*Adam/conv3d_441/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_64/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_64/bias/m/Read/ReadVariableOp,Adam/conv3d_442/kernel/m/Read/ReadVariableOp*Adam/conv3d_442/bias/m/Read/ReadVariableOp,Adam/conv3d_443/kernel/m/Read/ReadVariableOp*Adam/conv3d_443/bias/m/Read/ReadVariableOp,Adam/conv3d_444/kernel/m/Read/ReadVariableOp*Adam/conv3d_444/bias/m/Read/ReadVariableOp,Adam/conv3d_445/kernel/m/Read/ReadVariableOp*Adam/conv3d_445/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_65/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_65/bias/m/Read/ReadVariableOp,Adam/conv3d_446/kernel/m/Read/ReadVariableOp*Adam/conv3d_446/bias/m/Read/ReadVariableOp,Adam/conv3d_447/kernel/m/Read/ReadVariableOp*Adam/conv3d_447/bias/m/Read/ReadVariableOp,Adam/conv3d_448/kernel/m/Read/ReadVariableOp*Adam/conv3d_448/bias/m/Read/ReadVariableOp,Adam/conv3d_449/kernel/m/Read/ReadVariableOp*Adam/conv3d_449/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_66/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_66/bias/m/Read/ReadVariableOp,Adam/conv3d_450/kernel/m/Read/ReadVariableOp*Adam/conv3d_450/bias/m/Read/ReadVariableOp,Adam/conv3d_451/kernel/m/Read/ReadVariableOp*Adam/conv3d_451/bias/m/Read/ReadVariableOp,Adam/conv3d_452/kernel/m/Read/ReadVariableOp*Adam/conv3d_452/bias/m/Read/ReadVariableOp,Adam/conv3d_453/kernel/m/Read/ReadVariableOp*Adam/conv3d_453/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_67/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_67/bias/m/Read/ReadVariableOp,Adam/conv3d_454/kernel/m/Read/ReadVariableOp*Adam/conv3d_454/bias/m/Read/ReadVariableOp,Adam/conv3d_455/kernel/m/Read/ReadVariableOp*Adam/conv3d_455/bias/m/Read/ReadVariableOp,Adam/conv3d_456/kernel/m/Read/ReadVariableOp*Adam/conv3d_456/bias/m/Read/ReadVariableOp,Adam/conv3d_457/kernel/m/Read/ReadVariableOp*Adam/conv3d_457/bias/m/Read/ReadVariableOp,Adam/conv3d_458/kernel/m/Read/ReadVariableOp*Adam/conv3d_458/bias/m/Read/ReadVariableOp,Adam/conv3d_432/kernel/v/Read/ReadVariableOp*Adam/conv3d_432/bias/v/Read/ReadVariableOp,Adam/conv3d_433/kernel/v/Read/ReadVariableOp*Adam/conv3d_433/bias/v/Read/ReadVariableOp,Adam/conv3d_434/kernel/v/Read/ReadVariableOp*Adam/conv3d_434/bias/v/Read/ReadVariableOp,Adam/conv3d_435/kernel/v/Read/ReadVariableOp*Adam/conv3d_435/bias/v/Read/ReadVariableOp,Adam/conv3d_436/kernel/v/Read/ReadVariableOp*Adam/conv3d_436/bias/v/Read/ReadVariableOp,Adam/conv3d_437/kernel/v/Read/ReadVariableOp*Adam/conv3d_437/bias/v/Read/ReadVariableOp,Adam/conv3d_438/kernel/v/Read/ReadVariableOp*Adam/conv3d_438/bias/v/Read/ReadVariableOp,Adam/conv3d_439/kernel/v/Read/ReadVariableOp*Adam/conv3d_439/bias/v/Read/ReadVariableOp,Adam/conv3d_440/kernel/v/Read/ReadVariableOp*Adam/conv3d_440/bias/v/Read/ReadVariableOp,Adam/conv3d_441/kernel/v/Read/ReadVariableOp*Adam/conv3d_441/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_64/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_64/bias/v/Read/ReadVariableOp,Adam/conv3d_442/kernel/v/Read/ReadVariableOp*Adam/conv3d_442/bias/v/Read/ReadVariableOp,Adam/conv3d_443/kernel/v/Read/ReadVariableOp*Adam/conv3d_443/bias/v/Read/ReadVariableOp,Adam/conv3d_444/kernel/v/Read/ReadVariableOp*Adam/conv3d_444/bias/v/Read/ReadVariableOp,Adam/conv3d_445/kernel/v/Read/ReadVariableOp*Adam/conv3d_445/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_65/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_65/bias/v/Read/ReadVariableOp,Adam/conv3d_446/kernel/v/Read/ReadVariableOp*Adam/conv3d_446/bias/v/Read/ReadVariableOp,Adam/conv3d_447/kernel/v/Read/ReadVariableOp*Adam/conv3d_447/bias/v/Read/ReadVariableOp,Adam/conv3d_448/kernel/v/Read/ReadVariableOp*Adam/conv3d_448/bias/v/Read/ReadVariableOp,Adam/conv3d_449/kernel/v/Read/ReadVariableOp*Adam/conv3d_449/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_66/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_66/bias/v/Read/ReadVariableOp,Adam/conv3d_450/kernel/v/Read/ReadVariableOp*Adam/conv3d_450/bias/v/Read/ReadVariableOp,Adam/conv3d_451/kernel/v/Read/ReadVariableOp*Adam/conv3d_451/bias/v/Read/ReadVariableOp,Adam/conv3d_452/kernel/v/Read/ReadVariableOp*Adam/conv3d_452/bias/v/Read/ReadVariableOp,Adam/conv3d_453/kernel/v/Read/ReadVariableOp*Adam/conv3d_453/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_67/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_67/bias/v/Read/ReadVariableOp,Adam/conv3d_454/kernel/v/Read/ReadVariableOp*Adam/conv3d_454/bias/v/Read/ReadVariableOp,Adam/conv3d_455/kernel/v/Read/ReadVariableOp*Adam/conv3d_455/bias/v/Read/ReadVariableOp,Adam/conv3d_456/kernel/v/Read/ReadVariableOp*Adam/conv3d_456/bias/v/Read/ReadVariableOp,Adam/conv3d_457/kernel/v/Read/ReadVariableOp*Adam/conv3d_457/bias/v/Read/ReadVariableOp,Adam/conv3d_458/kernel/v/Read/ReadVariableOp*Adam/conv3d_458/bias/v/Read/ReadVariableOpConst*г
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
__inference__traced_save_517071
'
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_432/kernelconv3d_432/biasconv3d_433/kernelconv3d_433/biasconv3d_434/kernelconv3d_434/biasconv3d_435/kernelconv3d_435/biasconv3d_436/kernelconv3d_436/biasconv3d_437/kernelconv3d_437/biasconv3d_438/kernelconv3d_438/biasconv3d_439/kernelconv3d_439/biasconv3d_440/kernelconv3d_440/biasconv3d_441/kernelconv3d_441/biasconv3d_transpose_64/kernelconv3d_transpose_64/biasconv3d_442/kernelconv3d_442/biasconv3d_443/kernelconv3d_443/biasconv3d_444/kernelconv3d_444/biasconv3d_445/kernelconv3d_445/biasconv3d_transpose_65/kernelconv3d_transpose_65/biasconv3d_446/kernelconv3d_446/biasconv3d_447/kernelconv3d_447/biasconv3d_448/kernelconv3d_448/biasconv3d_449/kernelconv3d_449/biasconv3d_transpose_66/kernelconv3d_transpose_66/biasconv3d_450/kernelconv3d_450/biasconv3d_451/kernelconv3d_451/biasconv3d_452/kernelconv3d_452/biasconv3d_453/kernelconv3d_453/biasconv3d_transpose_67/kernelconv3d_transpose_67/biasconv3d_454/kernelconv3d_454/biasconv3d_455/kernelconv3d_455/biasconv3d_456/kernelconv3d_456/biasconv3d_457/kernelconv3d_457/biasconv3d_458/kernelconv3d_458/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_432/kernel/mAdam/conv3d_432/bias/mAdam/conv3d_433/kernel/mAdam/conv3d_433/bias/mAdam/conv3d_434/kernel/mAdam/conv3d_434/bias/mAdam/conv3d_435/kernel/mAdam/conv3d_435/bias/mAdam/conv3d_436/kernel/mAdam/conv3d_436/bias/mAdam/conv3d_437/kernel/mAdam/conv3d_437/bias/mAdam/conv3d_438/kernel/mAdam/conv3d_438/bias/mAdam/conv3d_439/kernel/mAdam/conv3d_439/bias/mAdam/conv3d_440/kernel/mAdam/conv3d_440/bias/mAdam/conv3d_441/kernel/mAdam/conv3d_441/bias/m!Adam/conv3d_transpose_64/kernel/mAdam/conv3d_transpose_64/bias/mAdam/conv3d_442/kernel/mAdam/conv3d_442/bias/mAdam/conv3d_443/kernel/mAdam/conv3d_443/bias/mAdam/conv3d_444/kernel/mAdam/conv3d_444/bias/mAdam/conv3d_445/kernel/mAdam/conv3d_445/bias/m!Adam/conv3d_transpose_65/kernel/mAdam/conv3d_transpose_65/bias/mAdam/conv3d_446/kernel/mAdam/conv3d_446/bias/mAdam/conv3d_447/kernel/mAdam/conv3d_447/bias/mAdam/conv3d_448/kernel/mAdam/conv3d_448/bias/mAdam/conv3d_449/kernel/mAdam/conv3d_449/bias/m!Adam/conv3d_transpose_66/kernel/mAdam/conv3d_transpose_66/bias/mAdam/conv3d_450/kernel/mAdam/conv3d_450/bias/mAdam/conv3d_451/kernel/mAdam/conv3d_451/bias/mAdam/conv3d_452/kernel/mAdam/conv3d_452/bias/mAdam/conv3d_453/kernel/mAdam/conv3d_453/bias/m!Adam/conv3d_transpose_67/kernel/mAdam/conv3d_transpose_67/bias/mAdam/conv3d_454/kernel/mAdam/conv3d_454/bias/mAdam/conv3d_455/kernel/mAdam/conv3d_455/bias/mAdam/conv3d_456/kernel/mAdam/conv3d_456/bias/mAdam/conv3d_457/kernel/mAdam/conv3d_457/bias/mAdam/conv3d_458/kernel/mAdam/conv3d_458/bias/mAdam/conv3d_432/kernel/vAdam/conv3d_432/bias/vAdam/conv3d_433/kernel/vAdam/conv3d_433/bias/vAdam/conv3d_434/kernel/vAdam/conv3d_434/bias/vAdam/conv3d_435/kernel/vAdam/conv3d_435/bias/vAdam/conv3d_436/kernel/vAdam/conv3d_436/bias/vAdam/conv3d_437/kernel/vAdam/conv3d_437/bias/vAdam/conv3d_438/kernel/vAdam/conv3d_438/bias/vAdam/conv3d_439/kernel/vAdam/conv3d_439/bias/vAdam/conv3d_440/kernel/vAdam/conv3d_440/bias/vAdam/conv3d_441/kernel/vAdam/conv3d_441/bias/v!Adam/conv3d_transpose_64/kernel/vAdam/conv3d_transpose_64/bias/vAdam/conv3d_442/kernel/vAdam/conv3d_442/bias/vAdam/conv3d_443/kernel/vAdam/conv3d_443/bias/vAdam/conv3d_444/kernel/vAdam/conv3d_444/bias/vAdam/conv3d_445/kernel/vAdam/conv3d_445/bias/v!Adam/conv3d_transpose_65/kernel/vAdam/conv3d_transpose_65/bias/vAdam/conv3d_446/kernel/vAdam/conv3d_446/bias/vAdam/conv3d_447/kernel/vAdam/conv3d_447/bias/vAdam/conv3d_448/kernel/vAdam/conv3d_448/bias/vAdam/conv3d_449/kernel/vAdam/conv3d_449/bias/v!Adam/conv3d_transpose_66/kernel/vAdam/conv3d_transpose_66/bias/vAdam/conv3d_450/kernel/vAdam/conv3d_450/bias/vAdam/conv3d_451/kernel/vAdam/conv3d_451/bias/vAdam/conv3d_452/kernel/vAdam/conv3d_452/bias/vAdam/conv3d_453/kernel/vAdam/conv3d_453/bias/v!Adam/conv3d_transpose_67/kernel/vAdam/conv3d_transpose_67/bias/vAdam/conv3d_454/kernel/vAdam/conv3d_454/bias/vAdam/conv3d_455/kernel/vAdam/conv3d_455/bias/vAdam/conv3d_456/kernel/vAdam/conv3d_456/bias/vAdam/conv3d_457/kernel/vAdam/conv3d_457/bias/vAdam/conv3d_458/kernel/vAdam/conv3d_458/bias/v*в
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
"__inference__traced_restore_517666П№'
ђ
Є
+__inference_conv3d_434_layer_call_fn_515696

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
F__inference_conv3d_434_layer_call_and_return_conditional_losses_512758
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
Ы

F__inference_conv3d_434_layer_call_and_return_conditional_losses_515707

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
ы
J
.__inference_cropping3d_16_layer_call_fn_516436

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
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_512701
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
к
h
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_512496

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
ѕ
Ѕ
+__inference_conv3d_447_layer_call_fn_516106

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
F__inference_conv3d_447_layer_call_and_return_conditional_losses_513010
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
І&
Ѓ
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_512544

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
Ы

F__inference_conv3d_456_layer_call_and_return_conditional_losses_513191

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
Љи
е3
D__inference_model_16_layer_call_and_return_conditional_losses_515155

inputsG
)conv3d_432_conv3d_readvariableop_resource:8
*conv3d_432_biasadd_readvariableop_resource:G
)conv3d_433_conv3d_readvariableop_resource:8
*conv3d_433_biasadd_readvariableop_resource:G
)conv3d_434_conv3d_readvariableop_resource: 8
*conv3d_434_biasadd_readvariableop_resource: G
)conv3d_435_conv3d_readvariableop_resource:  8
*conv3d_435_biasadd_readvariableop_resource: G
)conv3d_436_conv3d_readvariableop_resource: @8
*conv3d_436_biasadd_readvariableop_resource:@G
)conv3d_437_conv3d_readvariableop_resource:@@8
*conv3d_437_biasadd_readvariableop_resource:@H
)conv3d_438_conv3d_readvariableop_resource:@9
*conv3d_438_biasadd_readvariableop_resource:	I
)conv3d_439_conv3d_readvariableop_resource:9
*conv3d_439_biasadd_readvariableop_resource:	I
)conv3d_440_conv3d_readvariableop_resource:9
*conv3d_440_biasadd_readvariableop_resource:	I
)conv3d_441_conv3d_readvariableop_resource:9
*conv3d_441_biasadd_readvariableop_resource:	\
<conv3d_transpose_64_conv3d_transpose_readvariableop_resource:B
3conv3d_transpose_64_biasadd_readvariableop_resource:	I
)conv3d_442_conv3d_readvariableop_resource:9
*conv3d_442_biasadd_readvariableop_resource:	I
)conv3d_443_conv3d_readvariableop_resource:9
*conv3d_443_biasadd_readvariableop_resource:	I
)conv3d_444_conv3d_readvariableop_resource:9
*conv3d_444_biasadd_readvariableop_resource:	I
)conv3d_445_conv3d_readvariableop_resource:9
*conv3d_445_biasadd_readvariableop_resource:	[
<conv3d_transpose_65_conv3d_transpose_readvariableop_resource:@A
3conv3d_transpose_65_biasadd_readvariableop_resource:@G
)conv3d_446_conv3d_readvariableop_resource:@@8
*conv3d_446_biasadd_readvariableop_resource:@H
)conv3d_447_conv3d_readvariableop_resource:@8
*conv3d_447_biasadd_readvariableop_resource:@G
)conv3d_448_conv3d_readvariableop_resource:@@8
*conv3d_448_biasadd_readvariableop_resource:@G
)conv3d_449_conv3d_readvariableop_resource:@@8
*conv3d_449_biasadd_readvariableop_resource:@Z
<conv3d_transpose_66_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_66_biasadd_readvariableop_resource: G
)conv3d_450_conv3d_readvariableop_resource:  8
*conv3d_450_biasadd_readvariableop_resource: G
)conv3d_451_conv3d_readvariableop_resource:@ 8
*conv3d_451_biasadd_readvariableop_resource: G
)conv3d_452_conv3d_readvariableop_resource:  8
*conv3d_452_biasadd_readvariableop_resource: G
)conv3d_453_conv3d_readvariableop_resource:  8
*conv3d_453_biasadd_readvariableop_resource: Z
<conv3d_transpose_67_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_67_biasadd_readvariableop_resource:G
)conv3d_454_conv3d_readvariableop_resource:8
*conv3d_454_biasadd_readvariableop_resource:G
)conv3d_455_conv3d_readvariableop_resource: 8
*conv3d_455_biasadd_readvariableop_resource:G
)conv3d_456_conv3d_readvariableop_resource:8
*conv3d_456_biasadd_readvariableop_resource:G
)conv3d_457_conv3d_readvariableop_resource:8
*conv3d_457_biasadd_readvariableop_resource:G
)conv3d_458_conv3d_readvariableop_resource:8
*conv3d_458_biasadd_readvariableop_resource:
identityЂ!conv3d_432/BiasAdd/ReadVariableOpЂ conv3d_432/Conv3D/ReadVariableOpЂ!conv3d_433/BiasAdd/ReadVariableOpЂ conv3d_433/Conv3D/ReadVariableOpЂ!conv3d_434/BiasAdd/ReadVariableOpЂ conv3d_434/Conv3D/ReadVariableOpЂ!conv3d_435/BiasAdd/ReadVariableOpЂ conv3d_435/Conv3D/ReadVariableOpЂ!conv3d_436/BiasAdd/ReadVariableOpЂ conv3d_436/Conv3D/ReadVariableOpЂ!conv3d_437/BiasAdd/ReadVariableOpЂ conv3d_437/Conv3D/ReadVariableOpЂ!conv3d_438/BiasAdd/ReadVariableOpЂ conv3d_438/Conv3D/ReadVariableOpЂ!conv3d_439/BiasAdd/ReadVariableOpЂ conv3d_439/Conv3D/ReadVariableOpЂ!conv3d_440/BiasAdd/ReadVariableOpЂ conv3d_440/Conv3D/ReadVariableOpЂ!conv3d_441/BiasAdd/ReadVariableOpЂ conv3d_441/Conv3D/ReadVariableOpЂ!conv3d_442/BiasAdd/ReadVariableOpЂ conv3d_442/Conv3D/ReadVariableOpЂ!conv3d_443/BiasAdd/ReadVariableOpЂ conv3d_443/Conv3D/ReadVariableOpЂ!conv3d_444/BiasAdd/ReadVariableOpЂ conv3d_444/Conv3D/ReadVariableOpЂ!conv3d_445/BiasAdd/ReadVariableOpЂ conv3d_445/Conv3D/ReadVariableOpЂ!conv3d_446/BiasAdd/ReadVariableOpЂ conv3d_446/Conv3D/ReadVariableOpЂ!conv3d_447/BiasAdd/ReadVariableOpЂ conv3d_447/Conv3D/ReadVariableOpЂ!conv3d_448/BiasAdd/ReadVariableOpЂ conv3d_448/Conv3D/ReadVariableOpЂ!conv3d_449/BiasAdd/ReadVariableOpЂ conv3d_449/Conv3D/ReadVariableOpЂ!conv3d_450/BiasAdd/ReadVariableOpЂ conv3d_450/Conv3D/ReadVariableOpЂ!conv3d_451/BiasAdd/ReadVariableOpЂ conv3d_451/Conv3D/ReadVariableOpЂ!conv3d_452/BiasAdd/ReadVariableOpЂ conv3d_452/Conv3D/ReadVariableOpЂ!conv3d_453/BiasAdd/ReadVariableOpЂ conv3d_453/Conv3D/ReadVariableOpЂ!conv3d_454/BiasAdd/ReadVariableOpЂ conv3d_454/Conv3D/ReadVariableOpЂ!conv3d_455/BiasAdd/ReadVariableOpЂ conv3d_455/Conv3D/ReadVariableOpЂ!conv3d_456/BiasAdd/ReadVariableOpЂ conv3d_456/Conv3D/ReadVariableOpЂ!conv3d_457/BiasAdd/ReadVariableOpЂ conv3d_457/Conv3D/ReadVariableOpЂ!conv3d_458/BiasAdd/ReadVariableOpЂ conv3d_458/Conv3D/ReadVariableOpЂ*conv3d_transpose_64/BiasAdd/ReadVariableOpЂ3conv3d_transpose_64/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_65/BiasAdd/ReadVariableOpЂ3conv3d_transpose_65/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_66/BiasAdd/ReadVariableOpЂ3conv3d_transpose_66/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_67/BiasAdd/ReadVariableOpЂ3conv3d_transpose_67/conv3d_transpose/ReadVariableOp
zero_padding3d_16/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_16/PadPadinputs'zero_padding3d_16/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_432/Conv3D/ReadVariableOpReadVariableOp)conv3d_432_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ч
conv3d_432/Conv3DConv3Dzero_padding3d_16/Pad:output:0(conv3d_432/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_432/BiasAdd/ReadVariableOpReadVariableOp*conv3d_432_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_432/BiasAddBiasAddconv3d_432/Conv3D:output:0)conv3d_432/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_432/ReluReluconv3d_432/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_433/Conv3D/ReadVariableOpReadVariableOp)conv3d_433_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_433/Conv3DConv3Dconv3d_432/Relu:activations:0(conv3d_433/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_433/BiasAdd/ReadVariableOpReadVariableOp*conv3d_433_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_433/BiasAddBiasAddconv3d_433/Conv3D:output:0)conv3d_433/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_433/ReluReluconv3d_433/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџн
max_pooling3d_64/MaxPool3D	MaxPool3Dconv3d_433/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_434/Conv3D/ReadVariableOpReadVariableOp)conv3d_434_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_434/Conv3DConv3D#max_pooling3d_64/MaxPool3D:output:0(conv3d_434/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_434/BiasAdd/ReadVariableOpReadVariableOp*conv3d_434_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_434/BiasAddBiasAddconv3d_434/Conv3D:output:0)conv3d_434/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_434/ReluReluconv3d_434/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_435/Conv3D/ReadVariableOpReadVariableOp)conv3d_435_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_435/Conv3DConv3Dconv3d_434/Relu:activations:0(conv3d_435/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_435/BiasAdd/ReadVariableOpReadVariableOp*conv3d_435_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_435/BiasAddBiasAddconv3d_435/Conv3D:output:0)conv3d_435/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_435/ReluReluconv3d_435/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ н
max_pooling3d_65/MaxPool3D	MaxPool3Dconv3d_435/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	

 conv3d_436/Conv3D/ReadVariableOpReadVariableOp)conv3d_436_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_436/Conv3DConv3D#max_pooling3d_65/MaxPool3D:output:0(conv3d_436/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_436/BiasAdd/ReadVariableOpReadVariableOp*conv3d_436_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_436/BiasAddBiasAddconv3d_436/Conv3D:output:0)conv3d_436/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_436/ReluReluconv3d_436/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_437/Conv3D/ReadVariableOpReadVariableOp)conv3d_437_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_437/Conv3DConv3Dconv3d_436/Relu:activations:0(conv3d_437/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_437/BiasAdd/ReadVariableOpReadVariableOp*conv3d_437_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_437/BiasAddBiasAddconv3d_437/Conv3D:output:0)conv3d_437/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_437/ReluReluconv3d_437/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@н
max_pooling3d_66/MaxPool3D	MaxPool3Dconv3d_437/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	

 conv3d_438/Conv3D/ReadVariableOpReadVariableOp)conv3d_438_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0э
conv3d_438/Conv3DConv3D#max_pooling3d_66/MaxPool3D:output:0(conv3d_438/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_438/BiasAdd/ReadVariableOpReadVariableOp*conv3d_438_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_438/BiasAddBiasAddconv3d_438/Conv3D:output:0)conv3d_438/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_438/ReluReluconv3d_438/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_439/Conv3D/ReadVariableOpReadVariableOp)conv3d_439_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_439/Conv3DConv3Dconv3d_438/Relu:activations:0(conv3d_439/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_439/BiasAdd/ReadVariableOpReadVariableOp*conv3d_439_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_439/BiasAddBiasAddconv3d_439/Conv3D:output:0)conv3d_439/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_439/ReluReluconv3d_439/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџо
max_pooling3d_67/MaxPool3D	MaxPool3Dconv3d_439/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_440/Conv3D/ReadVariableOpReadVariableOp)conv3d_440_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0э
conv3d_440/Conv3DConv3D#max_pooling3d_67/MaxPool3D:output:0(conv3d_440/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_440/BiasAdd/ReadVariableOpReadVariableOp*conv3d_440_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_440/BiasAddBiasAddconv3d_440/Conv3D:output:0)conv3d_440/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_440/ReluReluconv3d_440/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_441/Conv3D/ReadVariableOpReadVariableOp)conv3d_441_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_441/Conv3DConv3Dconv3d_440/Relu:activations:0(conv3d_441/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_441/BiasAdd/ReadVariableOpReadVariableOp*conv3d_441_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_441/BiasAddBiasAddconv3d_441/Conv3D:output:0)conv3d_441/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_441/ReluReluconv3d_441/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_64/ShapeShapeconv3d_441/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_64/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_64/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_64/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_64/strided_sliceStridedSlice"conv3d_transpose_64/Shape:output:00conv3d_transpose_64/strided_slice/stack:output:02conv3d_transpose_64/strided_slice/stack_1:output:02conv3d_transpose_64/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_64/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_64/strided_slice_1StridedSlice"conv3d_transpose_64/Shape:output:02conv3d_transpose_64/strided_slice_1/stack:output:04conv3d_transpose_64/strided_slice_1/stack_1:output:04conv3d_transpose_64/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_64/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_64/strided_slice_2StridedSlice"conv3d_transpose_64/Shape:output:02conv3d_transpose_64/strided_slice_2/stack:output:04conv3d_transpose_64/strided_slice_2/stack_1:output:04conv3d_transpose_64/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_64/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_64/strided_slice_3StridedSlice"conv3d_transpose_64/Shape:output:02conv3d_transpose_64/strided_slice_3/stack:output:04conv3d_transpose_64/strided_slice_3/stack_1:output:04conv3d_transpose_64/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_64/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_64/mulMul,conv3d_transpose_64/strided_slice_1:output:0"conv3d_transpose_64/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_64/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_64/addAddV2conv3d_transpose_64/mul:z:0"conv3d_transpose_64/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_64/mul_1Mul,conv3d_transpose_64/strided_slice_2:output:0$conv3d_transpose_64/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_64/add_1AddV2conv3d_transpose_64/mul_1:z:0$conv3d_transpose_64/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_64/mul_2Mul,conv3d_transpose_64/strided_slice_3:output:0$conv3d_transpose_64/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_64/add_2AddV2conv3d_transpose_64/mul_2:z:0$conv3d_transpose_64/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_64/stack/4Const*
_output_shapes
: *
dtype0*
value
B :ќ
conv3d_transpose_64/stackPack*conv3d_transpose_64/strided_slice:output:0conv3d_transpose_64/add:z:0conv3d_transpose_64/add_1:z:0conv3d_transpose_64/add_2:z:0$conv3d_transpose_64/stack/4:output:0*
N*
T0*
_output_shapes
:О
3conv3d_transpose_64/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_64_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0С
$conv3d_transpose_64/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_64/stack:output:0;conv3d_transpose_64/conv3d_transpose/ReadVariableOp:value:0conv3d_441/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	

*conv3d_transpose_64/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0у
conv3d_transpose_64/BiasAddBiasAdd-conv3d_transpose_64/conv3d_transpose:output:02conv3d_transpose_64/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_442/Conv3D/ReadVariableOpReadVariableOp)conv3d_442_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_442/Conv3DConv3D$conv3d_transpose_64/BiasAdd:output:0(conv3d_442/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_442/BiasAdd/ReadVariableOpReadVariableOp*conv3d_442_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_442/BiasAddBiasAddconv3d_442/Conv3D:output:0)conv3d_442/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_442/ReluReluconv3d_442/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_64/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_64/concatConcatV2conv3d_439/Relu:activations:0conv3d_442/Relu:activations:0#concatenate_64/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_443/Conv3D/ReadVariableOpReadVariableOp)conv3d_443_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ш
conv3d_443/Conv3DConv3Dconcatenate_64/concat:output:0(conv3d_443/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_443/BiasAdd/ReadVariableOpReadVariableOp*conv3d_443_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_443/BiasAddBiasAddconv3d_443/Conv3D:output:0)conv3d_443/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_443/ReluReluconv3d_443/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_444/Conv3D/ReadVariableOpReadVariableOp)conv3d_444_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_444/Conv3DConv3Dconv3d_443/Relu:activations:0(conv3d_444/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_444/BiasAdd/ReadVariableOpReadVariableOp*conv3d_444_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_444/BiasAddBiasAddconv3d_444/Conv3D:output:0)conv3d_444/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_444/ReluReluconv3d_444/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_445/Conv3D/ReadVariableOpReadVariableOp)conv3d_445_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_445/Conv3DConv3Dconv3d_444/Relu:activations:0(conv3d_445/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_445/BiasAdd/ReadVariableOpReadVariableOp*conv3d_445_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_445/BiasAddBiasAddconv3d_445/Conv3D:output:0)conv3d_445/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_445/ReluReluconv3d_445/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_65/ShapeShapeconv3d_445/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_65/strided_sliceStridedSlice"conv3d_transpose_65/Shape:output:00conv3d_transpose_65/strided_slice/stack:output:02conv3d_transpose_65/strided_slice/stack_1:output:02conv3d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_65/strided_slice_1StridedSlice"conv3d_transpose_65/Shape:output:02conv3d_transpose_65/strided_slice_1/stack:output:04conv3d_transpose_65/strided_slice_1/stack_1:output:04conv3d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_65/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_65/strided_slice_2StridedSlice"conv3d_transpose_65/Shape:output:02conv3d_transpose_65/strided_slice_2/stack:output:04conv3d_transpose_65/strided_slice_2/stack_1:output:04conv3d_transpose_65/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_65/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_65/strided_slice_3StridedSlice"conv3d_transpose_65/Shape:output:02conv3d_transpose_65/strided_slice_3/stack:output:04conv3d_transpose_65/strided_slice_3/stack_1:output:04conv3d_transpose_65/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_65/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_65/mulMul,conv3d_transpose_65/strided_slice_1:output:0"conv3d_transpose_65/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_65/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_65/mul_1Mul,conv3d_transpose_65/strided_slice_2:output:0$conv3d_transpose_65/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_65/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_65/mul_2Mul,conv3d_transpose_65/strided_slice_3:output:0$conv3d_transpose_65/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_65/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@ќ
conv3d_transpose_65/stackPack*conv3d_transpose_65/strided_slice:output:0conv3d_transpose_65/mul:z:0conv3d_transpose_65/mul_1:z:0conv3d_transpose_65/mul_2:z:0$conv3d_transpose_65/stack/4:output:0*
N*
T0*
_output_shapes
:Н
3conv3d_transpose_65/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_65_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0П
$conv3d_transpose_65/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_65/stack:output:0;conv3d_transpose_65/conv3d_transpose/ReadVariableOp:value:0conv3d_445/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*conv3d_transpose_65/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0т
conv3d_transpose_65/BiasAddBiasAdd-conv3d_transpose_65/conv3d_transpose:output:02conv3d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_446/Conv3D/ReadVariableOpReadVariableOp)conv3d_446_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0э
conv3d_446/Conv3DConv3D$conv3d_transpose_65/BiasAdd:output:0(conv3d_446/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_446/BiasAdd/ReadVariableOpReadVariableOp*conv3d_446_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_446/BiasAddBiasAddconv3d_446/Conv3D:output:0)conv3d_446/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_446/ReluReluconv3d_446/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@\
concatenate_65/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_65/concatConcatV2conv3d_437/Relu:activations:0conv3d_446/Relu:activations:0#concatenate_65/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_447/Conv3D/ReadVariableOpReadVariableOp)conv3d_447_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ч
conv3d_447/Conv3DConv3Dconcatenate_65/concat:output:0(conv3d_447/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_447/BiasAdd/ReadVariableOpReadVariableOp*conv3d_447_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_447/BiasAddBiasAddconv3d_447/Conv3D:output:0)conv3d_447/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_447/ReluReluconv3d_447/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_448/Conv3D/ReadVariableOpReadVariableOp)conv3d_448_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_448/Conv3DConv3Dconv3d_447/Relu:activations:0(conv3d_448/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_448/BiasAdd/ReadVariableOpReadVariableOp*conv3d_448_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_448/BiasAddBiasAddconv3d_448/Conv3D:output:0)conv3d_448/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_448/ReluReluconv3d_448/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_449/Conv3D/ReadVariableOpReadVariableOp)conv3d_449_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_449/Conv3DConv3Dconv3d_448/Relu:activations:0(conv3d_449/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_449/BiasAdd/ReadVariableOpReadVariableOp*conv3d_449_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_449/BiasAddBiasAddconv3d_449/Conv3D:output:0)conv3d_449/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_449/ReluReluconv3d_449/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@f
conv3d_transpose_66/ShapeShapeconv3d_449/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_66/strided_sliceStridedSlice"conv3d_transpose_66/Shape:output:00conv3d_transpose_66/strided_slice/stack:output:02conv3d_transpose_66/strided_slice/stack_1:output:02conv3d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_66/strided_slice_1StridedSlice"conv3d_transpose_66/Shape:output:02conv3d_transpose_66/strided_slice_1/stack:output:04conv3d_transpose_66/strided_slice_1/stack_1:output:04conv3d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_66/strided_slice_2StridedSlice"conv3d_transpose_66/Shape:output:02conv3d_transpose_66/strided_slice_2/stack:output:04conv3d_transpose_66/strided_slice_2/stack_1:output:04conv3d_transpose_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_66/strided_slice_3StridedSlice"conv3d_transpose_66/Shape:output:02conv3d_transpose_66/strided_slice_3/stack:output:04conv3d_transpose_66/strided_slice_3/stack_1:output:04conv3d_transpose_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_66/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_66/mulMul,conv3d_transpose_66/strided_slice_1:output:0"conv3d_transpose_66/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_66/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_66/mul_1Mul,conv3d_transpose_66/strided_slice_2:output:0$conv3d_transpose_66/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_66/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_66/mul_2Mul,conv3d_transpose_66/strided_slice_3:output:0$conv3d_transpose_66/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_66/stack/4Const*
_output_shapes
: *
dtype0*
value	B : ќ
conv3d_transpose_66/stackPack*conv3d_transpose_66/strided_slice:output:0conv3d_transpose_66/mul:z:0conv3d_transpose_66/mul_1:z:0conv3d_transpose_66/mul_2:z:0$conv3d_transpose_66/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_66/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_66_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0П
$conv3d_transpose_66/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_66/stack:output:0;conv3d_transpose_66/conv3d_transpose/ReadVariableOp:value:0conv3d_449/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*conv3d_transpose_66/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_66_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0т
conv3d_transpose_66/BiasAddBiasAdd-conv3d_transpose_66/conv3d_transpose:output:02conv3d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_450/Conv3D/ReadVariableOpReadVariableOp)conv3d_450_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0э
conv3d_450/Conv3DConv3D$conv3d_transpose_66/BiasAdd:output:0(conv3d_450/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_450/BiasAdd/ReadVariableOpReadVariableOp*conv3d_450_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_450/BiasAddBiasAddconv3d_450/Conv3D:output:0)conv3d_450/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_450/ReluReluconv3d_450/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ \
concatenate_66/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_66/concatConcatV2conv3d_435/Relu:activations:0conv3d_450/Relu:activations:0#concatenate_66/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_451/Conv3D/ReadVariableOpReadVariableOp)conv3d_451_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0ч
conv3d_451/Conv3DConv3Dconcatenate_66/concat:output:0(conv3d_451/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_451/BiasAdd/ReadVariableOpReadVariableOp*conv3d_451_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_451/BiasAddBiasAddconv3d_451/Conv3D:output:0)conv3d_451/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_451/ReluReluconv3d_451/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_452/Conv3D/ReadVariableOpReadVariableOp)conv3d_452_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_452/Conv3DConv3Dconv3d_451/Relu:activations:0(conv3d_452/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_452/BiasAdd/ReadVariableOpReadVariableOp*conv3d_452_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_452/BiasAddBiasAddconv3d_452/Conv3D:output:0)conv3d_452/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_452/ReluReluconv3d_452/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_453/Conv3D/ReadVariableOpReadVariableOp)conv3d_453_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_453/Conv3DConv3Dconv3d_452/Relu:activations:0(conv3d_453/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_453/BiasAdd/ReadVariableOpReadVariableOp*conv3d_453_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_453/BiasAddBiasAddconv3d_453/Conv3D:output:0)conv3d_453/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_453/ReluReluconv3d_453/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ f
conv3d_transpose_67/ShapeShapeconv3d_453/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_67/strided_sliceStridedSlice"conv3d_transpose_67/Shape:output:00conv3d_transpose_67/strided_slice/stack:output:02conv3d_transpose_67/strided_slice/stack_1:output:02conv3d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_67/strided_slice_1StridedSlice"conv3d_transpose_67/Shape:output:02conv3d_transpose_67/strided_slice_1/stack:output:04conv3d_transpose_67/strided_slice_1/stack_1:output:04conv3d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_67/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_67/strided_slice_2StridedSlice"conv3d_transpose_67/Shape:output:02conv3d_transpose_67/strided_slice_2/stack:output:04conv3d_transpose_67/strided_slice_2/stack_1:output:04conv3d_transpose_67/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_67/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_67/strided_slice_3StridedSlice"conv3d_transpose_67/Shape:output:02conv3d_transpose_67/strided_slice_3/stack:output:04conv3d_transpose_67/strided_slice_3/stack_1:output:04conv3d_transpose_67/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_67/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_67/mulMul,conv3d_transpose_67/strided_slice_1:output:0"conv3d_transpose_67/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_67/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_67/mul_1Mul,conv3d_transpose_67/strided_slice_2:output:0$conv3d_transpose_67/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_67/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_67/mul_2Mul,conv3d_transpose_67/strided_slice_3:output:0$conv3d_transpose_67/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_67/stack/4Const*
_output_shapes
: *
dtype0*
value	B :ќ
conv3d_transpose_67/stackPack*conv3d_transpose_67/strided_slice:output:0conv3d_transpose_67/mul:z:0conv3d_transpose_67/mul_1:z:0conv3d_transpose_67/mul_2:z:0$conv3d_transpose_67/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_67/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_67_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0П
$conv3d_transpose_67/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_67/stack:output:0;conv3d_transpose_67/conv3d_transpose/ReadVariableOp:value:0conv3d_453/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*conv3d_transpose_67/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0т
conv3d_transpose_67/BiasAddBiasAdd-conv3d_transpose_67/conv3d_transpose:output:02conv3d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_454/Conv3D/ReadVariableOpReadVariableOp)conv3d_454_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_454/Conv3DConv3D$conv3d_transpose_67/BiasAdd:output:0(conv3d_454/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_454/BiasAdd/ReadVariableOpReadVariableOp*conv3d_454_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_454/BiasAddBiasAddconv3d_454/Conv3D:output:0)conv3d_454/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_454/ReluReluconv3d_454/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_67/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_67/concatConcatV2conv3d_433/Relu:activations:0conv3d_454/Relu:activations:0#concatenate_67/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_455/Conv3D/ReadVariableOpReadVariableOp)conv3d_455_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ч
conv3d_455/Conv3DConv3Dconcatenate_67/concat:output:0(conv3d_455/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_455/BiasAdd/ReadVariableOpReadVariableOp*conv3d_455_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_455/BiasAddBiasAddconv3d_455/Conv3D:output:0)conv3d_455/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_455/ReluReluconv3d_455/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_456/Conv3D/ReadVariableOpReadVariableOp)conv3d_456_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_456/Conv3DConv3Dconv3d_455/Relu:activations:0(conv3d_456/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_456/BiasAdd/ReadVariableOpReadVariableOp*conv3d_456_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_456/BiasAddBiasAddconv3d_456/Conv3D:output:0)conv3d_456/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_456/ReluReluconv3d_456/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_457/Conv3D/ReadVariableOpReadVariableOp)conv3d_457_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_457/Conv3DConv3Dconv3d_456/Relu:activations:0(conv3d_457/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_457/BiasAdd/ReadVariableOpReadVariableOp*conv3d_457_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_457/BiasAddBiasAddconv3d_457/Conv3D:output:0)conv3d_457/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_457/ReluReluconv3d_457/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ~
!cropping3d_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
#cropping3d_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
#cropping3d_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               к
cropping3d_16/strided_sliceStridedSliceconv3d_457/Relu:activations:0*cropping3d_16/strided_slice/stack:output:0,cropping3d_16/strided_slice/stack_1:output:0,cropping3d_16/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
 conv3d_458/Conv3D/ReadVariableOpReadVariableOp)conv3d_458_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_458/Conv3DConv3D$cropping3d_16/strided_slice:output:0(conv3d_458/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_458/BiasAdd/ReadVariableOpReadVariableOp*conv3d_458_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_458/BiasAddBiasAddconv3d_458/Conv3D:output:0)conv3d_458/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconv3d_458/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЯ
NoOpNoOp"^conv3d_432/BiasAdd/ReadVariableOp!^conv3d_432/Conv3D/ReadVariableOp"^conv3d_433/BiasAdd/ReadVariableOp!^conv3d_433/Conv3D/ReadVariableOp"^conv3d_434/BiasAdd/ReadVariableOp!^conv3d_434/Conv3D/ReadVariableOp"^conv3d_435/BiasAdd/ReadVariableOp!^conv3d_435/Conv3D/ReadVariableOp"^conv3d_436/BiasAdd/ReadVariableOp!^conv3d_436/Conv3D/ReadVariableOp"^conv3d_437/BiasAdd/ReadVariableOp!^conv3d_437/Conv3D/ReadVariableOp"^conv3d_438/BiasAdd/ReadVariableOp!^conv3d_438/Conv3D/ReadVariableOp"^conv3d_439/BiasAdd/ReadVariableOp!^conv3d_439/Conv3D/ReadVariableOp"^conv3d_440/BiasAdd/ReadVariableOp!^conv3d_440/Conv3D/ReadVariableOp"^conv3d_441/BiasAdd/ReadVariableOp!^conv3d_441/Conv3D/ReadVariableOp"^conv3d_442/BiasAdd/ReadVariableOp!^conv3d_442/Conv3D/ReadVariableOp"^conv3d_443/BiasAdd/ReadVariableOp!^conv3d_443/Conv3D/ReadVariableOp"^conv3d_444/BiasAdd/ReadVariableOp!^conv3d_444/Conv3D/ReadVariableOp"^conv3d_445/BiasAdd/ReadVariableOp!^conv3d_445/Conv3D/ReadVariableOp"^conv3d_446/BiasAdd/ReadVariableOp!^conv3d_446/Conv3D/ReadVariableOp"^conv3d_447/BiasAdd/ReadVariableOp!^conv3d_447/Conv3D/ReadVariableOp"^conv3d_448/BiasAdd/ReadVariableOp!^conv3d_448/Conv3D/ReadVariableOp"^conv3d_449/BiasAdd/ReadVariableOp!^conv3d_449/Conv3D/ReadVariableOp"^conv3d_450/BiasAdd/ReadVariableOp!^conv3d_450/Conv3D/ReadVariableOp"^conv3d_451/BiasAdd/ReadVariableOp!^conv3d_451/Conv3D/ReadVariableOp"^conv3d_452/BiasAdd/ReadVariableOp!^conv3d_452/Conv3D/ReadVariableOp"^conv3d_453/BiasAdd/ReadVariableOp!^conv3d_453/Conv3D/ReadVariableOp"^conv3d_454/BiasAdd/ReadVariableOp!^conv3d_454/Conv3D/ReadVariableOp"^conv3d_455/BiasAdd/ReadVariableOp!^conv3d_455/Conv3D/ReadVariableOp"^conv3d_456/BiasAdd/ReadVariableOp!^conv3d_456/Conv3D/ReadVariableOp"^conv3d_457/BiasAdd/ReadVariableOp!^conv3d_457/Conv3D/ReadVariableOp"^conv3d_458/BiasAdd/ReadVariableOp!^conv3d_458/Conv3D/ReadVariableOp+^conv3d_transpose_64/BiasAdd/ReadVariableOp4^conv3d_transpose_64/conv3d_transpose/ReadVariableOp+^conv3d_transpose_65/BiasAdd/ReadVariableOp4^conv3d_transpose_65/conv3d_transpose/ReadVariableOp+^conv3d_transpose_66/BiasAdd/ReadVariableOp4^conv3d_transpose_66/conv3d_transpose/ReadVariableOp+^conv3d_transpose_67/BiasAdd/ReadVariableOp4^conv3d_transpose_67/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_432/BiasAdd/ReadVariableOp!conv3d_432/BiasAdd/ReadVariableOp2D
 conv3d_432/Conv3D/ReadVariableOp conv3d_432/Conv3D/ReadVariableOp2F
!conv3d_433/BiasAdd/ReadVariableOp!conv3d_433/BiasAdd/ReadVariableOp2D
 conv3d_433/Conv3D/ReadVariableOp conv3d_433/Conv3D/ReadVariableOp2F
!conv3d_434/BiasAdd/ReadVariableOp!conv3d_434/BiasAdd/ReadVariableOp2D
 conv3d_434/Conv3D/ReadVariableOp conv3d_434/Conv3D/ReadVariableOp2F
!conv3d_435/BiasAdd/ReadVariableOp!conv3d_435/BiasAdd/ReadVariableOp2D
 conv3d_435/Conv3D/ReadVariableOp conv3d_435/Conv3D/ReadVariableOp2F
!conv3d_436/BiasAdd/ReadVariableOp!conv3d_436/BiasAdd/ReadVariableOp2D
 conv3d_436/Conv3D/ReadVariableOp conv3d_436/Conv3D/ReadVariableOp2F
!conv3d_437/BiasAdd/ReadVariableOp!conv3d_437/BiasAdd/ReadVariableOp2D
 conv3d_437/Conv3D/ReadVariableOp conv3d_437/Conv3D/ReadVariableOp2F
!conv3d_438/BiasAdd/ReadVariableOp!conv3d_438/BiasAdd/ReadVariableOp2D
 conv3d_438/Conv3D/ReadVariableOp conv3d_438/Conv3D/ReadVariableOp2F
!conv3d_439/BiasAdd/ReadVariableOp!conv3d_439/BiasAdd/ReadVariableOp2D
 conv3d_439/Conv3D/ReadVariableOp conv3d_439/Conv3D/ReadVariableOp2F
!conv3d_440/BiasAdd/ReadVariableOp!conv3d_440/BiasAdd/ReadVariableOp2D
 conv3d_440/Conv3D/ReadVariableOp conv3d_440/Conv3D/ReadVariableOp2F
!conv3d_441/BiasAdd/ReadVariableOp!conv3d_441/BiasAdd/ReadVariableOp2D
 conv3d_441/Conv3D/ReadVariableOp conv3d_441/Conv3D/ReadVariableOp2F
!conv3d_442/BiasAdd/ReadVariableOp!conv3d_442/BiasAdd/ReadVariableOp2D
 conv3d_442/Conv3D/ReadVariableOp conv3d_442/Conv3D/ReadVariableOp2F
!conv3d_443/BiasAdd/ReadVariableOp!conv3d_443/BiasAdd/ReadVariableOp2D
 conv3d_443/Conv3D/ReadVariableOp conv3d_443/Conv3D/ReadVariableOp2F
!conv3d_444/BiasAdd/ReadVariableOp!conv3d_444/BiasAdd/ReadVariableOp2D
 conv3d_444/Conv3D/ReadVariableOp conv3d_444/Conv3D/ReadVariableOp2F
!conv3d_445/BiasAdd/ReadVariableOp!conv3d_445/BiasAdd/ReadVariableOp2D
 conv3d_445/Conv3D/ReadVariableOp conv3d_445/Conv3D/ReadVariableOp2F
!conv3d_446/BiasAdd/ReadVariableOp!conv3d_446/BiasAdd/ReadVariableOp2D
 conv3d_446/Conv3D/ReadVariableOp conv3d_446/Conv3D/ReadVariableOp2F
!conv3d_447/BiasAdd/ReadVariableOp!conv3d_447/BiasAdd/ReadVariableOp2D
 conv3d_447/Conv3D/ReadVariableOp conv3d_447/Conv3D/ReadVariableOp2F
!conv3d_448/BiasAdd/ReadVariableOp!conv3d_448/BiasAdd/ReadVariableOp2D
 conv3d_448/Conv3D/ReadVariableOp conv3d_448/Conv3D/ReadVariableOp2F
!conv3d_449/BiasAdd/ReadVariableOp!conv3d_449/BiasAdd/ReadVariableOp2D
 conv3d_449/Conv3D/ReadVariableOp conv3d_449/Conv3D/ReadVariableOp2F
!conv3d_450/BiasAdd/ReadVariableOp!conv3d_450/BiasAdd/ReadVariableOp2D
 conv3d_450/Conv3D/ReadVariableOp conv3d_450/Conv3D/ReadVariableOp2F
!conv3d_451/BiasAdd/ReadVariableOp!conv3d_451/BiasAdd/ReadVariableOp2D
 conv3d_451/Conv3D/ReadVariableOp conv3d_451/Conv3D/ReadVariableOp2F
!conv3d_452/BiasAdd/ReadVariableOp!conv3d_452/BiasAdd/ReadVariableOp2D
 conv3d_452/Conv3D/ReadVariableOp conv3d_452/Conv3D/ReadVariableOp2F
!conv3d_453/BiasAdd/ReadVariableOp!conv3d_453/BiasAdd/ReadVariableOp2D
 conv3d_453/Conv3D/ReadVariableOp conv3d_453/Conv3D/ReadVariableOp2F
!conv3d_454/BiasAdd/ReadVariableOp!conv3d_454/BiasAdd/ReadVariableOp2D
 conv3d_454/Conv3D/ReadVariableOp conv3d_454/Conv3D/ReadVariableOp2F
!conv3d_455/BiasAdd/ReadVariableOp!conv3d_455/BiasAdd/ReadVariableOp2D
 conv3d_455/Conv3D/ReadVariableOp conv3d_455/Conv3D/ReadVariableOp2F
!conv3d_456/BiasAdd/ReadVariableOp!conv3d_456/BiasAdd/ReadVariableOp2D
 conv3d_456/Conv3D/ReadVariableOp conv3d_456/Conv3D/ReadVariableOp2F
!conv3d_457/BiasAdd/ReadVariableOp!conv3d_457/BiasAdd/ReadVariableOp2D
 conv3d_457/Conv3D/ReadVariableOp conv3d_457/Conv3D/ReadVariableOp2F
!conv3d_458/BiasAdd/ReadVariableOp!conv3d_458/BiasAdd/ReadVariableOp2D
 conv3d_458/Conv3D/ReadVariableOp conv3d_458/Conv3D/ReadVariableOp2X
*conv3d_transpose_64/BiasAdd/ReadVariableOp*conv3d_transpose_64/BiasAdd/ReadVariableOp2j
3conv3d_transpose_64/conv3d_transpose/ReadVariableOp3conv3d_transpose_64/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_65/BiasAdd/ReadVariableOp*conv3d_transpose_65/BiasAdd/ReadVariableOp2j
3conv3d_transpose_65/conv3d_transpose/ReadVariableOp3conv3d_transpose_65/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_66/BiasAdd/ReadVariableOp*conv3d_transpose_66/BiasAdd/ReadVariableOp2j
3conv3d_transpose_66/conv3d_transpose/ReadVariableOp3conv3d_transpose_66/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_67/BiasAdd/ReadVariableOp*conv3d_transpose_67/BiasAdd/ReadVariableOp2j
3conv3d_transpose_67/conv3d_transpose/ReadVariableOp3conv3d_transpose_67/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

F__inference_conv3d_455_layer_call_and_return_conditional_losses_513174

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
Ы

F__inference_conv3d_450_layer_call_and_return_conditional_losses_513066

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
Ы

F__inference_conv3d_436_layer_call_and_return_conditional_losses_512793

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
Ы

F__inference_conv3d_437_layer_call_and_return_conditional_losses_512810

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
F__inference_conv3d_453_layer_call_and_return_conditional_losses_516294

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
F__inference_conv3d_440_layer_call_and_return_conditional_losses_515857

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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_516254

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
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_516064

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
љ
Ї
+__inference_conv3d_441_layer_call_fn_515866

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
F__inference_conv3d_441_layer_call_and_return_conditional_losses_512880
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
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_445_layer_call_fn_516009

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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_512962
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
ђ
Є
+__inference_conv3d_432_layer_call_fn_515646

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
F__inference_conv3d_432_layer_call_and_return_conditional_losses_512723
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
Ї
t
J__inference_concatenate_66_layer_call_and_return_conditional_losses_513079

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
Ѓ
[
/__inference_concatenate_64_layer_call_fn_515953
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
J__inference_concatenate_64_layer_call_and_return_conditional_losses_512915
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
з

F__inference_conv3d_442_layer_call_and_return_conditional_losses_515947

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
Ы

F__inference_conv3d_457_layer_call_and_return_conditional_losses_516431

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
F__inference_conv3d_456_layer_call_and_return_conditional_losses_516411

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
ё
M
1__inference_max_pooling3d_65_layer_call_fn_515732

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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_512472
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
+__inference_conv3d_446_layer_call_fn_516073

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
F__inference_conv3d_446_layer_call_and_return_conditional_losses_512984
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
+__inference_conv3d_458_layer_call_fn_516453

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
F__inference_conv3d_458_layer_call_and_return_conditional_losses_513225
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
ѓ
N
2__inference_zero_padding3d_16_layer_call_fn_515631

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
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_512448
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
)__inference_model_16_layer_call_fn_514815

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
D__inference_model_16_layer_call_and_return_conditional_losses_513957
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
а

F__inference_conv3d_458_layer_call_and_return_conditional_losses_516463

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
Џ
v
J__inference_concatenate_67_layer_call_and_return_conditional_losses_516371
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
Ы

F__inference_conv3d_454_layer_call_and_return_conditional_losses_513148

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
ж"
 
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_512636

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
Ыа
д
D__inference_model_16_layer_call_and_return_conditional_losses_513957

inputs/
conv3d_432_513792:
conv3d_432_513794:/
conv3d_433_513797:
conv3d_433_513799:/
conv3d_434_513803: 
conv3d_434_513805: /
conv3d_435_513808:  
conv3d_435_513810: /
conv3d_436_513814: @
conv3d_436_513816:@/
conv3d_437_513819:@@
conv3d_437_513821:@0
conv3d_438_513825:@ 
conv3d_438_513827:	1
conv3d_439_513830: 
conv3d_439_513832:	1
conv3d_440_513836: 
conv3d_440_513838:	1
conv3d_441_513841: 
conv3d_441_513843:	:
conv3d_transpose_64_513846:)
conv3d_transpose_64_513848:	1
conv3d_442_513851: 
conv3d_442_513853:	1
conv3d_443_513857: 
conv3d_443_513859:	1
conv3d_444_513862: 
conv3d_444_513864:	1
conv3d_445_513867: 
conv3d_445_513869:	9
conv3d_transpose_65_513872:@(
conv3d_transpose_65_513874:@/
conv3d_446_513877:@@
conv3d_446_513879:@0
conv3d_447_513883:@
conv3d_447_513885:@/
conv3d_448_513888:@@
conv3d_448_513890:@/
conv3d_449_513893:@@
conv3d_449_513895:@8
conv3d_transpose_66_513898: @(
conv3d_transpose_66_513900: /
conv3d_450_513903:  
conv3d_450_513905: /
conv3d_451_513909:@ 
conv3d_451_513911: /
conv3d_452_513914:  
conv3d_452_513916: /
conv3d_453_513919:  
conv3d_453_513921: 8
conv3d_transpose_67_513924: (
conv3d_transpose_67_513926:/
conv3d_454_513929:
conv3d_454_513931:/
conv3d_455_513935: 
conv3d_455_513937:/
conv3d_456_513940:
conv3d_456_513942:/
conv3d_457_513945:
conv3d_457_513947:/
conv3d_458_513951:
conv3d_458_513953:
identityЂ"conv3d_432/StatefulPartitionedCallЂ"conv3d_433/StatefulPartitionedCallЂ"conv3d_434/StatefulPartitionedCallЂ"conv3d_435/StatefulPartitionedCallЂ"conv3d_436/StatefulPartitionedCallЂ"conv3d_437/StatefulPartitionedCallЂ"conv3d_438/StatefulPartitionedCallЂ"conv3d_439/StatefulPartitionedCallЂ"conv3d_440/StatefulPartitionedCallЂ"conv3d_441/StatefulPartitionedCallЂ"conv3d_442/StatefulPartitionedCallЂ"conv3d_443/StatefulPartitionedCallЂ"conv3d_444/StatefulPartitionedCallЂ"conv3d_445/StatefulPartitionedCallЂ"conv3d_446/StatefulPartitionedCallЂ"conv3d_447/StatefulPartitionedCallЂ"conv3d_448/StatefulPartitionedCallЂ"conv3d_449/StatefulPartitionedCallЂ"conv3d_450/StatefulPartitionedCallЂ"conv3d_451/StatefulPartitionedCallЂ"conv3d_452/StatefulPartitionedCallЂ"conv3d_453/StatefulPartitionedCallЂ"conv3d_454/StatefulPartitionedCallЂ"conv3d_455/StatefulPartitionedCallЂ"conv3d_456/StatefulPartitionedCallЂ"conv3d_457/StatefulPartitionedCallЂ"conv3d_458/StatefulPartitionedCallЂ+conv3d_transpose_64/StatefulPartitionedCallЂ+conv3d_transpose_65/StatefulPartitionedCallЂ+conv3d_transpose_66/StatefulPartitionedCallЂ+conv3d_transpose_67/StatefulPartitionedCallє
!zero_padding3d_16/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_512448Ц
"conv3d_432/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_16/PartitionedCall:output:0conv3d_432_513792conv3d_432_513794*
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
F__inference_conv3d_432_layer_call_and_return_conditional_losses_512723Ч
"conv3d_433/StatefulPartitionedCallStatefulPartitionedCall+conv3d_432/StatefulPartitionedCall:output:0conv3d_433_513797conv3d_433_513799*
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
F__inference_conv3d_433_layer_call_and_return_conditional_losses_512740
 max_pooling3d_64/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_512460Х
"conv3d_434/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_64/PartitionedCall:output:0conv3d_434_513803conv3d_434_513805*
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
F__inference_conv3d_434_layer_call_and_return_conditional_losses_512758Ч
"conv3d_435/StatefulPartitionedCallStatefulPartitionedCall+conv3d_434/StatefulPartitionedCall:output:0conv3d_435_513808conv3d_435_513810*
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
F__inference_conv3d_435_layer_call_and_return_conditional_losses_512775
 max_pooling3d_65/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_512472Х
"conv3d_436/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_65/PartitionedCall:output:0conv3d_436_513814conv3d_436_513816*
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
F__inference_conv3d_436_layer_call_and_return_conditional_losses_512793Ч
"conv3d_437/StatefulPartitionedCallStatefulPartitionedCall+conv3d_436/StatefulPartitionedCall:output:0conv3d_437_513819conv3d_437_513821*
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
F__inference_conv3d_437_layer_call_and_return_conditional_losses_512810
 max_pooling3d_66/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_512484Ц
"conv3d_438/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_66/PartitionedCall:output:0conv3d_438_513825conv3d_438_513827*
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
F__inference_conv3d_438_layer_call_and_return_conditional_losses_512828Ш
"conv3d_439/StatefulPartitionedCallStatefulPartitionedCall+conv3d_438/StatefulPartitionedCall:output:0conv3d_439_513830conv3d_439_513832*
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
F__inference_conv3d_439_layer_call_and_return_conditional_losses_512845
 max_pooling3d_67/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_512496Ц
"conv3d_440/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_67/PartitionedCall:output:0conv3d_440_513836conv3d_440_513838*
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
F__inference_conv3d_440_layer_call_and_return_conditional_losses_512863Ш
"conv3d_441/StatefulPartitionedCallStatefulPartitionedCall+conv3d_440/StatefulPartitionedCall:output:0conv3d_441_513841conv3d_441_513843*
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
F__inference_conv3d_441_layer_call_and_return_conditional_losses_512880ь
+conv3d_transpose_64/StatefulPartitionedCallStatefulPartitionedCall+conv3d_441/StatefulPartitionedCall:output:0conv3d_transpose_64_513846conv3d_transpose_64_513848*
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
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_512544б
"conv3d_442/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_64/StatefulPartitionedCall:output:0conv3d_442_513851conv3d_442_513853*
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
F__inference_conv3d_442_layer_call_and_return_conditional_losses_512902Т
concatenate_64/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0+conv3d_442/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_64_layer_call_and_return_conditional_losses_512915Ф
"conv3d_443/StatefulPartitionedCallStatefulPartitionedCall'concatenate_64/PartitionedCall:output:0conv3d_443_513857conv3d_443_513859*
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
F__inference_conv3d_443_layer_call_and_return_conditional_losses_512928Ш
"conv3d_444/StatefulPartitionedCallStatefulPartitionedCall+conv3d_443/StatefulPartitionedCall:output:0conv3d_444_513862conv3d_444_513864*
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
F__inference_conv3d_444_layer_call_and_return_conditional_losses_512945Ш
"conv3d_445/StatefulPartitionedCallStatefulPartitionedCall+conv3d_444/StatefulPartitionedCall:output:0conv3d_445_513867conv3d_445_513869*
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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_512962ы
+conv3d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall+conv3d_445/StatefulPartitionedCall:output:0conv3d_transpose_65_513872conv3d_transpose_65_513874*
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
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_512590а
"conv3d_446/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_65/StatefulPartitionedCall:output:0conv3d_446_513877conv3d_446_513879*
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
F__inference_conv3d_446_layer_call_and_return_conditional_losses_512984Т
concatenate_65/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0+conv3d_446/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_65_layer_call_and_return_conditional_losses_512997У
"conv3d_447/StatefulPartitionedCallStatefulPartitionedCall'concatenate_65/PartitionedCall:output:0conv3d_447_513883conv3d_447_513885*
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
F__inference_conv3d_447_layer_call_and_return_conditional_losses_513010Ч
"conv3d_448/StatefulPartitionedCallStatefulPartitionedCall+conv3d_447/StatefulPartitionedCall:output:0conv3d_448_513888conv3d_448_513890*
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
F__inference_conv3d_448_layer_call_and_return_conditional_losses_513027Ч
"conv3d_449/StatefulPartitionedCallStatefulPartitionedCall+conv3d_448/StatefulPartitionedCall:output:0conv3d_449_513893conv3d_449_513895*
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
F__inference_conv3d_449_layer_call_and_return_conditional_losses_513044ы
+conv3d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall+conv3d_449/StatefulPartitionedCall:output:0conv3d_transpose_66_513898conv3d_transpose_66_513900*
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
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_512636а
"conv3d_450/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_66/StatefulPartitionedCall:output:0conv3d_450_513903conv3d_450_513905*
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
F__inference_conv3d_450_layer_call_and_return_conditional_losses_513066С
concatenate_66/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0+conv3d_450/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_66_layer_call_and_return_conditional_losses_513079У
"conv3d_451/StatefulPartitionedCallStatefulPartitionedCall'concatenate_66/PartitionedCall:output:0conv3d_451_513909conv3d_451_513911*
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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_513092Ч
"conv3d_452/StatefulPartitionedCallStatefulPartitionedCall+conv3d_451/StatefulPartitionedCall:output:0conv3d_452_513914conv3d_452_513916*
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
F__inference_conv3d_452_layer_call_and_return_conditional_losses_513109Ч
"conv3d_453/StatefulPartitionedCallStatefulPartitionedCall+conv3d_452/StatefulPartitionedCall:output:0conv3d_453_513919conv3d_453_513921*
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
F__inference_conv3d_453_layer_call_and_return_conditional_losses_513126ы
+conv3d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall+conv3d_453/StatefulPartitionedCall:output:0conv3d_transpose_67_513924conv3d_transpose_67_513926*
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
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_512682а
"conv3d_454/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_67/StatefulPartitionedCall:output:0conv3d_454_513929conv3d_454_513931*
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
F__inference_conv3d_454_layer_call_and_return_conditional_losses_513148С
concatenate_67/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0+conv3d_454/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_67_layer_call_and_return_conditional_losses_513161У
"conv3d_455/StatefulPartitionedCallStatefulPartitionedCall'concatenate_67/PartitionedCall:output:0conv3d_455_513935conv3d_455_513937*
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
F__inference_conv3d_455_layer_call_and_return_conditional_losses_513174Ч
"conv3d_456/StatefulPartitionedCallStatefulPartitionedCall+conv3d_455/StatefulPartitionedCall:output:0conv3d_456_513940conv3d_456_513942*
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
F__inference_conv3d_456_layer_call_and_return_conditional_losses_513191Ч
"conv3d_457/StatefulPartitionedCallStatefulPartitionedCall+conv3d_456/StatefulPartitionedCall:output:0conv3d_457_513945conv3d_457_513947*
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
F__inference_conv3d_457_layer_call_and_return_conditional_losses_513208
cropping3d_16/PartitionedCallPartitionedCall+conv3d_457/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_512701Т
"conv3d_458/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_16/PartitionedCall:output:0conv3d_458_513951conv3d_458_513953*
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
F__inference_conv3d_458_layer_call_and_return_conditional_losses_513225Ё
IdentityIdentity+conv3d_458/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_432/StatefulPartitionedCall#^conv3d_433/StatefulPartitionedCall#^conv3d_434/StatefulPartitionedCall#^conv3d_435/StatefulPartitionedCall#^conv3d_436/StatefulPartitionedCall#^conv3d_437/StatefulPartitionedCall#^conv3d_438/StatefulPartitionedCall#^conv3d_439/StatefulPartitionedCall#^conv3d_440/StatefulPartitionedCall#^conv3d_441/StatefulPartitionedCall#^conv3d_442/StatefulPartitionedCall#^conv3d_443/StatefulPartitionedCall#^conv3d_444/StatefulPartitionedCall#^conv3d_445/StatefulPartitionedCall#^conv3d_446/StatefulPartitionedCall#^conv3d_447/StatefulPartitionedCall#^conv3d_448/StatefulPartitionedCall#^conv3d_449/StatefulPartitionedCall#^conv3d_450/StatefulPartitionedCall#^conv3d_451/StatefulPartitionedCall#^conv3d_452/StatefulPartitionedCall#^conv3d_453/StatefulPartitionedCall#^conv3d_454/StatefulPartitionedCall#^conv3d_455/StatefulPartitionedCall#^conv3d_456/StatefulPartitionedCall#^conv3d_457/StatefulPartitionedCall#^conv3d_458/StatefulPartitionedCall,^conv3d_transpose_64/StatefulPartitionedCall,^conv3d_transpose_65/StatefulPartitionedCall,^conv3d_transpose_66/StatefulPartitionedCall,^conv3d_transpose_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_432/StatefulPartitionedCall"conv3d_432/StatefulPartitionedCall2H
"conv3d_433/StatefulPartitionedCall"conv3d_433/StatefulPartitionedCall2H
"conv3d_434/StatefulPartitionedCall"conv3d_434/StatefulPartitionedCall2H
"conv3d_435/StatefulPartitionedCall"conv3d_435/StatefulPartitionedCall2H
"conv3d_436/StatefulPartitionedCall"conv3d_436/StatefulPartitionedCall2H
"conv3d_437/StatefulPartitionedCall"conv3d_437/StatefulPartitionedCall2H
"conv3d_438/StatefulPartitionedCall"conv3d_438/StatefulPartitionedCall2H
"conv3d_439/StatefulPartitionedCall"conv3d_439/StatefulPartitionedCall2H
"conv3d_440/StatefulPartitionedCall"conv3d_440/StatefulPartitionedCall2H
"conv3d_441/StatefulPartitionedCall"conv3d_441/StatefulPartitionedCall2H
"conv3d_442/StatefulPartitionedCall"conv3d_442/StatefulPartitionedCall2H
"conv3d_443/StatefulPartitionedCall"conv3d_443/StatefulPartitionedCall2H
"conv3d_444/StatefulPartitionedCall"conv3d_444/StatefulPartitionedCall2H
"conv3d_445/StatefulPartitionedCall"conv3d_445/StatefulPartitionedCall2H
"conv3d_446/StatefulPartitionedCall"conv3d_446/StatefulPartitionedCall2H
"conv3d_447/StatefulPartitionedCall"conv3d_447/StatefulPartitionedCall2H
"conv3d_448/StatefulPartitionedCall"conv3d_448/StatefulPartitionedCall2H
"conv3d_449/StatefulPartitionedCall"conv3d_449/StatefulPartitionedCall2H
"conv3d_450/StatefulPartitionedCall"conv3d_450/StatefulPartitionedCall2H
"conv3d_451/StatefulPartitionedCall"conv3d_451/StatefulPartitionedCall2H
"conv3d_452/StatefulPartitionedCall"conv3d_452/StatefulPartitionedCall2H
"conv3d_453/StatefulPartitionedCall"conv3d_453/StatefulPartitionedCall2H
"conv3d_454/StatefulPartitionedCall"conv3d_454/StatefulPartitionedCall2H
"conv3d_455/StatefulPartitionedCall"conv3d_455/StatefulPartitionedCall2H
"conv3d_456/StatefulPartitionedCall"conv3d_456/StatefulPartitionedCall2H
"conv3d_457/StatefulPartitionedCall"conv3d_457/StatefulPartitionedCall2H
"conv3d_458/StatefulPartitionedCall"conv3d_458/StatefulPartitionedCall2Z
+conv3d_transpose_64/StatefulPartitionedCall+conv3d_transpose_64/StatefulPartitionedCall2Z
+conv3d_transpose_65/StatefulPartitionedCall+conv3d_transpose_65/StatefulPartitionedCall2Z
+conv3d_transpose_66/StatefulPartitionedCall+conv3d_transpose_66/StatefulPartitionedCall2Z
+conv3d_transpose_67/StatefulPartitionedCall+conv3d_transpose_67/StatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ
Ї
+__inference_conv3d_443_layer_call_fn_515969

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
F__inference_conv3d_443_layer_call_and_return_conditional_losses_512928
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
ж"
 
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_512682

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
к"
Ё
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_512590

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
­
t
J__inference_concatenate_64_layer_call_and_return_conditional_losses_512915

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
Њ
i
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_512448

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
к
h
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_512484

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
F__inference_conv3d_434_layer_call_and_return_conditional_losses_512758

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
Е
v
J__inference_concatenate_64_layer_call_and_return_conditional_losses_515960
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
Я

F__inference_conv3d_447_layer_call_and_return_conditional_losses_513010

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

[
/__inference_concatenate_66_layer_call_fn_516227
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
J__inference_concatenate_66_layer_call_and_return_conditional_losses_513079
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
ё
M
1__inference_max_pooling3d_67_layer_call_fn_515832

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
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_512496
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
з

F__inference_conv3d_439_layer_call_and_return_conditional_losses_515827

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
F__inference_conv3d_454_layer_call_and_return_conditional_losses_516358

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
+__inference_conv3d_451_layer_call_fn_516243

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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_513092
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
Ы

F__inference_conv3d_448_layer_call_and_return_conditional_losses_513027

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
з

F__inference_conv3d_444_layer_call_and_return_conditional_losses_512945

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
F__inference_conv3d_452_layer_call_and_return_conditional_losses_513109

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
+__inference_conv3d_456_layer_call_fn_516400

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
F__inference_conv3d_456_layer_call_and_return_conditional_losses_513191
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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_516020

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
	
e
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_516444

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
Ы

F__inference_conv3d_433_layer_call_and_return_conditional_losses_512740

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
	
e
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_512701

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
Ы

F__inference_conv3d_432_layer_call_and_return_conditional_losses_512723

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
ђ
Є
+__inference_conv3d_449_layer_call_fn_516146

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
F__inference_conv3d_449_layer_call_and_return_conditional_losses_513044
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
 
Њ
$__inference_signature_wrapper_515626
input_17%
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
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_512438
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
input_17
з

F__inference_conv3d_443_layer_call_and_return_conditional_losses_512928

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

[
/__inference_concatenate_65_layer_call_fn_516090
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
J__inference_concatenate_65_layer_call_and_return_conditional_losses_512997
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
љ
Ї
+__inference_conv3d_439_layer_call_fn_515816

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
F__inference_conv3d_439_layer_call_and_return_conditional_losses_512845
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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_513092

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
з

F__inference_conv3d_441_layer_call_and_return_conditional_losses_512880

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
Ї
t
J__inference_concatenate_67_layer_call_and_return_conditional_losses_513161

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
з

F__inference_conv3d_439_layer_call_and_return_conditional_losses_512845

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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_515737

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
F__inference_conv3d_436_layer_call_and_return_conditional_losses_515757

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
Б
v
J__inference_concatenate_65_layer_call_and_return_conditional_losses_516097
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
	
Ў
4__inference_conv3d_transpose_65_layer_call_fn_516029

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
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_512590
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
F__inference_conv3d_448_layer_call_and_return_conditional_losses_516137

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
	
А
4__inference_conv3d_transpose_64_layer_call_fn_515886

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
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_512544
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
	
­
4__inference_conv3d_transpose_66_layer_call_fn_516166

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
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_512636
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
	
­
4__inference_conv3d_transpose_67_layer_call_fn_516303

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
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_512682
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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_512472

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
F__inference_conv3d_432_layer_call_and_return_conditional_losses_515657

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
Ы

F__inference_conv3d_452_layer_call_and_return_conditional_losses_516274

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
ж"
 
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_516201

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
Я

F__inference_conv3d_447_layer_call_and_return_conditional_losses_516117

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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_512962

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
+__inference_conv3d_433_layer_call_fn_515666

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
F__inference_conv3d_433_layer_call_and_return_conditional_losses_512740
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
љ
Ї
+__inference_conv3d_444_layer_call_fn_515989

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
F__inference_conv3d_444_layer_call_and_return_conditional_losses_512945
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
ђ
Є
+__inference_conv3d_454_layer_call_fn_516347

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
F__inference_conv3d_454_layer_call_and_return_conditional_losses_513148
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
ђ
Є
+__inference_conv3d_455_layer_call_fn_516380

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
F__inference_conv3d_455_layer_call_and_return_conditional_losses_513174
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
Ы

F__inference_conv3d_435_layer_call_and_return_conditional_losses_512775

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
+__inference_conv3d_437_layer_call_fn_515766

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
F__inference_conv3d_437_layer_call_and_return_conditional_losses_512810
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

Э
"__inference__traced_restore_517666
file_prefix@
"assignvariableop_conv3d_432_kernel:0
"assignvariableop_1_conv3d_432_bias:B
$assignvariableop_2_conv3d_433_kernel:0
"assignvariableop_3_conv3d_433_bias:B
$assignvariableop_4_conv3d_434_kernel: 0
"assignvariableop_5_conv3d_434_bias: B
$assignvariableop_6_conv3d_435_kernel:  0
"assignvariableop_7_conv3d_435_bias: B
$assignvariableop_8_conv3d_436_kernel: @0
"assignvariableop_9_conv3d_436_bias:@C
%assignvariableop_10_conv3d_437_kernel:@@1
#assignvariableop_11_conv3d_437_bias:@D
%assignvariableop_12_conv3d_438_kernel:@2
#assignvariableop_13_conv3d_438_bias:	E
%assignvariableop_14_conv3d_439_kernel:2
#assignvariableop_15_conv3d_439_bias:	E
%assignvariableop_16_conv3d_440_kernel:2
#assignvariableop_17_conv3d_440_bias:	E
%assignvariableop_18_conv3d_441_kernel:2
#assignvariableop_19_conv3d_441_bias:	N
.assignvariableop_20_conv3d_transpose_64_kernel:;
,assignvariableop_21_conv3d_transpose_64_bias:	E
%assignvariableop_22_conv3d_442_kernel:2
#assignvariableop_23_conv3d_442_bias:	E
%assignvariableop_24_conv3d_443_kernel:2
#assignvariableop_25_conv3d_443_bias:	E
%assignvariableop_26_conv3d_444_kernel:2
#assignvariableop_27_conv3d_444_bias:	E
%assignvariableop_28_conv3d_445_kernel:2
#assignvariableop_29_conv3d_445_bias:	M
.assignvariableop_30_conv3d_transpose_65_kernel:@:
,assignvariableop_31_conv3d_transpose_65_bias:@C
%assignvariableop_32_conv3d_446_kernel:@@1
#assignvariableop_33_conv3d_446_bias:@D
%assignvariableop_34_conv3d_447_kernel:@1
#assignvariableop_35_conv3d_447_bias:@C
%assignvariableop_36_conv3d_448_kernel:@@1
#assignvariableop_37_conv3d_448_bias:@C
%assignvariableop_38_conv3d_449_kernel:@@1
#assignvariableop_39_conv3d_449_bias:@L
.assignvariableop_40_conv3d_transpose_66_kernel: @:
,assignvariableop_41_conv3d_transpose_66_bias: C
%assignvariableop_42_conv3d_450_kernel:  1
#assignvariableop_43_conv3d_450_bias: C
%assignvariableop_44_conv3d_451_kernel:@ 1
#assignvariableop_45_conv3d_451_bias: C
%assignvariableop_46_conv3d_452_kernel:  1
#assignvariableop_47_conv3d_452_bias: C
%assignvariableop_48_conv3d_453_kernel:  1
#assignvariableop_49_conv3d_453_bias: L
.assignvariableop_50_conv3d_transpose_67_kernel: :
,assignvariableop_51_conv3d_transpose_67_bias:C
%assignvariableop_52_conv3d_454_kernel:1
#assignvariableop_53_conv3d_454_bias:C
%assignvariableop_54_conv3d_455_kernel: 1
#assignvariableop_55_conv3d_455_bias:C
%assignvariableop_56_conv3d_456_kernel:1
#assignvariableop_57_conv3d_456_bias:C
%assignvariableop_58_conv3d_457_kernel:1
#assignvariableop_59_conv3d_457_bias:C
%assignvariableop_60_conv3d_458_kernel:1
#assignvariableop_61_conv3d_458_bias:'
assignvariableop_62_adam_iter:	 )
assignvariableop_63_adam_beta_1: )
assignvariableop_64_adam_beta_2: (
assignvariableop_65_adam_decay: 0
&assignvariableop_66_adam_learning_rate: #
assignvariableop_67_total: #
assignvariableop_68_count: %
assignvariableop_69_total_1: %
assignvariableop_70_count_1: J
,assignvariableop_71_adam_conv3d_432_kernel_m:8
*assignvariableop_72_adam_conv3d_432_bias_m:J
,assignvariableop_73_adam_conv3d_433_kernel_m:8
*assignvariableop_74_adam_conv3d_433_bias_m:J
,assignvariableop_75_adam_conv3d_434_kernel_m: 8
*assignvariableop_76_adam_conv3d_434_bias_m: J
,assignvariableop_77_adam_conv3d_435_kernel_m:  8
*assignvariableop_78_adam_conv3d_435_bias_m: J
,assignvariableop_79_adam_conv3d_436_kernel_m: @8
*assignvariableop_80_adam_conv3d_436_bias_m:@J
,assignvariableop_81_adam_conv3d_437_kernel_m:@@8
*assignvariableop_82_adam_conv3d_437_bias_m:@K
,assignvariableop_83_adam_conv3d_438_kernel_m:@9
*assignvariableop_84_adam_conv3d_438_bias_m:	L
,assignvariableop_85_adam_conv3d_439_kernel_m:9
*assignvariableop_86_adam_conv3d_439_bias_m:	L
,assignvariableop_87_adam_conv3d_440_kernel_m:9
*assignvariableop_88_adam_conv3d_440_bias_m:	L
,assignvariableop_89_adam_conv3d_441_kernel_m:9
*assignvariableop_90_adam_conv3d_441_bias_m:	U
5assignvariableop_91_adam_conv3d_transpose_64_kernel_m:B
3assignvariableop_92_adam_conv3d_transpose_64_bias_m:	L
,assignvariableop_93_adam_conv3d_442_kernel_m:9
*assignvariableop_94_adam_conv3d_442_bias_m:	L
,assignvariableop_95_adam_conv3d_443_kernel_m:9
*assignvariableop_96_adam_conv3d_443_bias_m:	L
,assignvariableop_97_adam_conv3d_444_kernel_m:9
*assignvariableop_98_adam_conv3d_444_bias_m:	L
,assignvariableop_99_adam_conv3d_445_kernel_m::
+assignvariableop_100_adam_conv3d_445_bias_m:	U
6assignvariableop_101_adam_conv3d_transpose_65_kernel_m:@B
4assignvariableop_102_adam_conv3d_transpose_65_bias_m:@K
-assignvariableop_103_adam_conv3d_446_kernel_m:@@9
+assignvariableop_104_adam_conv3d_446_bias_m:@L
-assignvariableop_105_adam_conv3d_447_kernel_m:@9
+assignvariableop_106_adam_conv3d_447_bias_m:@K
-assignvariableop_107_adam_conv3d_448_kernel_m:@@9
+assignvariableop_108_adam_conv3d_448_bias_m:@K
-assignvariableop_109_adam_conv3d_449_kernel_m:@@9
+assignvariableop_110_adam_conv3d_449_bias_m:@T
6assignvariableop_111_adam_conv3d_transpose_66_kernel_m: @B
4assignvariableop_112_adam_conv3d_transpose_66_bias_m: K
-assignvariableop_113_adam_conv3d_450_kernel_m:  9
+assignvariableop_114_adam_conv3d_450_bias_m: K
-assignvariableop_115_adam_conv3d_451_kernel_m:@ 9
+assignvariableop_116_adam_conv3d_451_bias_m: K
-assignvariableop_117_adam_conv3d_452_kernel_m:  9
+assignvariableop_118_adam_conv3d_452_bias_m: K
-assignvariableop_119_adam_conv3d_453_kernel_m:  9
+assignvariableop_120_adam_conv3d_453_bias_m: T
6assignvariableop_121_adam_conv3d_transpose_67_kernel_m: B
4assignvariableop_122_adam_conv3d_transpose_67_bias_m:K
-assignvariableop_123_adam_conv3d_454_kernel_m:9
+assignvariableop_124_adam_conv3d_454_bias_m:K
-assignvariableop_125_adam_conv3d_455_kernel_m: 9
+assignvariableop_126_adam_conv3d_455_bias_m:K
-assignvariableop_127_adam_conv3d_456_kernel_m:9
+assignvariableop_128_adam_conv3d_456_bias_m:K
-assignvariableop_129_adam_conv3d_457_kernel_m:9
+assignvariableop_130_adam_conv3d_457_bias_m:K
-assignvariableop_131_adam_conv3d_458_kernel_m:9
+assignvariableop_132_adam_conv3d_458_bias_m:K
-assignvariableop_133_adam_conv3d_432_kernel_v:9
+assignvariableop_134_adam_conv3d_432_bias_v:K
-assignvariableop_135_adam_conv3d_433_kernel_v:9
+assignvariableop_136_adam_conv3d_433_bias_v:K
-assignvariableop_137_adam_conv3d_434_kernel_v: 9
+assignvariableop_138_adam_conv3d_434_bias_v: K
-assignvariableop_139_adam_conv3d_435_kernel_v:  9
+assignvariableop_140_adam_conv3d_435_bias_v: K
-assignvariableop_141_adam_conv3d_436_kernel_v: @9
+assignvariableop_142_adam_conv3d_436_bias_v:@K
-assignvariableop_143_adam_conv3d_437_kernel_v:@@9
+assignvariableop_144_adam_conv3d_437_bias_v:@L
-assignvariableop_145_adam_conv3d_438_kernel_v:@:
+assignvariableop_146_adam_conv3d_438_bias_v:	M
-assignvariableop_147_adam_conv3d_439_kernel_v::
+assignvariableop_148_adam_conv3d_439_bias_v:	M
-assignvariableop_149_adam_conv3d_440_kernel_v::
+assignvariableop_150_adam_conv3d_440_bias_v:	M
-assignvariableop_151_adam_conv3d_441_kernel_v::
+assignvariableop_152_adam_conv3d_441_bias_v:	V
6assignvariableop_153_adam_conv3d_transpose_64_kernel_v:C
4assignvariableop_154_adam_conv3d_transpose_64_bias_v:	M
-assignvariableop_155_adam_conv3d_442_kernel_v::
+assignvariableop_156_adam_conv3d_442_bias_v:	M
-assignvariableop_157_adam_conv3d_443_kernel_v::
+assignvariableop_158_adam_conv3d_443_bias_v:	M
-assignvariableop_159_adam_conv3d_444_kernel_v::
+assignvariableop_160_adam_conv3d_444_bias_v:	M
-assignvariableop_161_adam_conv3d_445_kernel_v::
+assignvariableop_162_adam_conv3d_445_bias_v:	U
6assignvariableop_163_adam_conv3d_transpose_65_kernel_v:@B
4assignvariableop_164_adam_conv3d_transpose_65_bias_v:@K
-assignvariableop_165_adam_conv3d_446_kernel_v:@@9
+assignvariableop_166_adam_conv3d_446_bias_v:@L
-assignvariableop_167_adam_conv3d_447_kernel_v:@9
+assignvariableop_168_adam_conv3d_447_bias_v:@K
-assignvariableop_169_adam_conv3d_448_kernel_v:@@9
+assignvariableop_170_adam_conv3d_448_bias_v:@K
-assignvariableop_171_adam_conv3d_449_kernel_v:@@9
+assignvariableop_172_adam_conv3d_449_bias_v:@T
6assignvariableop_173_adam_conv3d_transpose_66_kernel_v: @B
4assignvariableop_174_adam_conv3d_transpose_66_bias_v: K
-assignvariableop_175_adam_conv3d_450_kernel_v:  9
+assignvariableop_176_adam_conv3d_450_bias_v: K
-assignvariableop_177_adam_conv3d_451_kernel_v:@ 9
+assignvariableop_178_adam_conv3d_451_bias_v: K
-assignvariableop_179_adam_conv3d_452_kernel_v:  9
+assignvariableop_180_adam_conv3d_452_bias_v: K
-assignvariableop_181_adam_conv3d_453_kernel_v:  9
+assignvariableop_182_adam_conv3d_453_bias_v: T
6assignvariableop_183_adam_conv3d_transpose_67_kernel_v: B
4assignvariableop_184_adam_conv3d_transpose_67_bias_v:K
-assignvariableop_185_adam_conv3d_454_kernel_v:9
+assignvariableop_186_adam_conv3d_454_bias_v:K
-assignvariableop_187_adam_conv3d_455_kernel_v: 9
+assignvariableop_188_adam_conv3d_455_bias_v:K
-assignvariableop_189_adam_conv3d_456_kernel_v:9
+assignvariableop_190_adam_conv3d_456_bias_v:K
-assignvariableop_191_adam_conv3d_457_kernel_v:9
+assignvariableop_192_adam_conv3d_457_bias_v:K
-assignvariableop_193_adam_conv3d_458_kernel_v:9
+assignvariableop_194_adam_conv3d_458_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_432_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_432_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_433_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_433_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_434_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_434_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_435_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_435_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_436_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_436_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_437_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_437_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_438_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_438_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_439_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_439_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_440_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_440_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_441_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_441_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp.assignvariableop_20_conv3d_transpose_64_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_conv3d_transpose_64_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp%assignvariableop_22_conv3d_442_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv3d_442_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv3d_443_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv3d_443_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_conv3d_444_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv3d_444_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv3d_445_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv3d_445_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp.assignvariableop_30_conv3d_transpose_65_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp,assignvariableop_31_conv3d_transpose_65_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv3d_446_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp#assignvariableop_33_conv3d_446_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp%assignvariableop_34_conv3d_447_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp#assignvariableop_35_conv3d_447_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv3d_448_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv3d_448_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp%assignvariableop_38_conv3d_449_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv3d_449_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp.assignvariableop_40_conv3d_transpose_66_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp,assignvariableop_41_conv3d_transpose_66_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp%assignvariableop_42_conv3d_450_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv3d_450_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp%assignvariableop_44_conv3d_451_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp#assignvariableop_45_conv3d_451_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp%assignvariableop_46_conv3d_452_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp#assignvariableop_47_conv3d_452_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp%assignvariableop_48_conv3d_453_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp#assignvariableop_49_conv3d_453_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp.assignvariableop_50_conv3d_transpose_67_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp,assignvariableop_51_conv3d_transpose_67_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp%assignvariableop_52_conv3d_454_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp#assignvariableop_53_conv3d_454_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp%assignvariableop_54_conv3d_455_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp#assignvariableop_55_conv3d_455_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp%assignvariableop_56_conv3d_456_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp#assignvariableop_57_conv3d_456_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp%assignvariableop_58_conv3d_457_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp#assignvariableop_59_conv3d_457_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp%assignvariableop_60_conv3d_458_kernelIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp#assignvariableop_61_conv3d_458_biasIdentity_61:output:0"/device:CPU:0*
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
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv3d_432_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv3d_432_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_conv3d_433_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_conv3d_433_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_conv3d_434_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_conv3d_434_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv3d_435_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv3d_435_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_conv3d_436_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_conv3d_436_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_conv3d_437_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv3d_437_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv3d_438_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv3d_438_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp,assignvariableop_85_adam_conv3d_439_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp*assignvariableop_86_adam_conv3d_439_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_conv3d_440_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_conv3d_440_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv3d_441_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_conv3d_441_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_conv3d_transpose_64_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_conv3d_transpose_64_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_conv3d_442_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv3d_442_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_95AssignVariableOp,assignvariableop_95_adam_conv3d_443_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_96AssignVariableOp*assignvariableop_96_adam_conv3d_443_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adam_conv3d_444_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_conv3d_444_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_99AssignVariableOp,assignvariableop_99_adam_conv3d_445_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_conv3d_445_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_101AssignVariableOp6assignvariableop_101_adam_conv3d_transpose_65_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_102AssignVariableOp4assignvariableop_102_adam_conv3d_transpose_65_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_103AssignVariableOp-assignvariableop_103_adam_conv3d_446_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_104AssignVariableOp+assignvariableop_104_adam_conv3d_446_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_105AssignVariableOp-assignvariableop_105_adam_conv3d_447_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_conv3d_447_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_107AssignVariableOp-assignvariableop_107_adam_conv3d_448_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_108AssignVariableOp+assignvariableop_108_adam_conv3d_448_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_109AssignVariableOp-assignvariableop_109_adam_conv3d_449_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_conv3d_449_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_111AssignVariableOp6assignvariableop_111_adam_conv3d_transpose_66_kernel_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_112AssignVariableOp4assignvariableop_112_adam_conv3d_transpose_66_bias_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_113AssignVariableOp-assignvariableop_113_adam_conv3d_450_kernel_mIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_114AssignVariableOp+assignvariableop_114_adam_conv3d_450_bias_mIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_115AssignVariableOp-assignvariableop_115_adam_conv3d_451_kernel_mIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_conv3d_451_bias_mIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_117AssignVariableOp-assignvariableop_117_adam_conv3d_452_kernel_mIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_conv3d_452_bias_mIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_119AssignVariableOp-assignvariableop_119_adam_conv3d_453_kernel_mIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_120AssignVariableOp+assignvariableop_120_adam_conv3d_453_bias_mIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_121AssignVariableOp6assignvariableop_121_adam_conv3d_transpose_67_kernel_mIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_122AssignVariableOp4assignvariableop_122_adam_conv3d_transpose_67_bias_mIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_123AssignVariableOp-assignvariableop_123_adam_conv3d_454_kernel_mIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_conv3d_454_bias_mIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_125AssignVariableOp-assignvariableop_125_adam_conv3d_455_kernel_mIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_126AssignVariableOp+assignvariableop_126_adam_conv3d_455_bias_mIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_127AssignVariableOp-assignvariableop_127_adam_conv3d_456_kernel_mIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_128AssignVariableOp+assignvariableop_128_adam_conv3d_456_bias_mIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_129AssignVariableOp-assignvariableop_129_adam_conv3d_457_kernel_mIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_130AssignVariableOp+assignvariableop_130_adam_conv3d_457_bias_mIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_131AssignVariableOp-assignvariableop_131_adam_conv3d_458_kernel_mIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adam_conv3d_458_bias_mIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_133AssignVariableOp-assignvariableop_133_adam_conv3d_432_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_134AssignVariableOp+assignvariableop_134_adam_conv3d_432_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_135AssignVariableOp-assignvariableop_135_adam_conv3d_433_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_136AssignVariableOp+assignvariableop_136_adam_conv3d_433_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_137AssignVariableOp-assignvariableop_137_adam_conv3d_434_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_138AssignVariableOp+assignvariableop_138_adam_conv3d_434_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_139AssignVariableOp-assignvariableop_139_adam_conv3d_435_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_140AssignVariableOp+assignvariableop_140_adam_conv3d_435_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_141AssignVariableOp-assignvariableop_141_adam_conv3d_436_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_142AssignVariableOp+assignvariableop_142_adam_conv3d_436_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_143AssignVariableOp-assignvariableop_143_adam_conv3d_437_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_144AssignVariableOp+assignvariableop_144_adam_conv3d_437_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_145AssignVariableOp-assignvariableop_145_adam_conv3d_438_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_146AssignVariableOp+assignvariableop_146_adam_conv3d_438_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_147AssignVariableOp-assignvariableop_147_adam_conv3d_439_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_148AssignVariableOp+assignvariableop_148_adam_conv3d_439_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_149AssignVariableOp-assignvariableop_149_adam_conv3d_440_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_150AssignVariableOp+assignvariableop_150_adam_conv3d_440_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_151AssignVariableOp-assignvariableop_151_adam_conv3d_441_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_152AssignVariableOp+assignvariableop_152_adam_conv3d_441_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_153AssignVariableOp6assignvariableop_153_adam_conv3d_transpose_64_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_154AssignVariableOp4assignvariableop_154_adam_conv3d_transpose_64_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_155AssignVariableOp-assignvariableop_155_adam_conv3d_442_kernel_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_156AssignVariableOp+assignvariableop_156_adam_conv3d_442_bias_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_157AssignVariableOp-assignvariableop_157_adam_conv3d_443_kernel_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_158AssignVariableOp+assignvariableop_158_adam_conv3d_443_bias_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_159AssignVariableOp-assignvariableop_159_adam_conv3d_444_kernel_vIdentity_159:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_160AssignVariableOp+assignvariableop_160_adam_conv3d_444_bias_vIdentity_160:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_161AssignVariableOp-assignvariableop_161_adam_conv3d_445_kernel_vIdentity_161:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_162AssignVariableOp+assignvariableop_162_adam_conv3d_445_bias_vIdentity_162:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_163AssignVariableOp6assignvariableop_163_adam_conv3d_transpose_65_kernel_vIdentity_163:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_164AssignVariableOp4assignvariableop_164_adam_conv3d_transpose_65_bias_vIdentity_164:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_165AssignVariableOp-assignvariableop_165_adam_conv3d_446_kernel_vIdentity_165:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_166AssignVariableOp+assignvariableop_166_adam_conv3d_446_bias_vIdentity_166:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_167AssignVariableOp-assignvariableop_167_adam_conv3d_447_kernel_vIdentity_167:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_168AssignVariableOp+assignvariableop_168_adam_conv3d_447_bias_vIdentity_168:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_169AssignVariableOp-assignvariableop_169_adam_conv3d_448_kernel_vIdentity_169:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_170AssignVariableOp+assignvariableop_170_adam_conv3d_448_bias_vIdentity_170:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_171AssignVariableOp-assignvariableop_171_adam_conv3d_449_kernel_vIdentity_171:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_172AssignVariableOp+assignvariableop_172_adam_conv3d_449_bias_vIdentity_172:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_173AssignVariableOp6assignvariableop_173_adam_conv3d_transpose_66_kernel_vIdentity_173:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_174AssignVariableOp4assignvariableop_174_adam_conv3d_transpose_66_bias_vIdentity_174:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_175AssignVariableOp-assignvariableop_175_adam_conv3d_450_kernel_vIdentity_175:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_176AssignVariableOp+assignvariableop_176_adam_conv3d_450_bias_vIdentity_176:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_177AssignVariableOp-assignvariableop_177_adam_conv3d_451_kernel_vIdentity_177:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_178AssignVariableOp+assignvariableop_178_adam_conv3d_451_bias_vIdentity_178:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_179AssignVariableOp-assignvariableop_179_adam_conv3d_452_kernel_vIdentity_179:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_180AssignVariableOp+assignvariableop_180_adam_conv3d_452_bias_vIdentity_180:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_181AssignVariableOp-assignvariableop_181_adam_conv3d_453_kernel_vIdentity_181:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_182AssignVariableOp+assignvariableop_182_adam_conv3d_453_bias_vIdentity_182:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_183IdentityRestoreV2:tensors:183"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_183AssignVariableOp6assignvariableop_183_adam_conv3d_transpose_67_kernel_vIdentity_183:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_184IdentityRestoreV2:tensors:184"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_184AssignVariableOp4assignvariableop_184_adam_conv3d_transpose_67_bias_vIdentity_184:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_185IdentityRestoreV2:tensors:185"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_185AssignVariableOp-assignvariableop_185_adam_conv3d_454_kernel_vIdentity_185:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_186IdentityRestoreV2:tensors:186"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_186AssignVariableOp+assignvariableop_186_adam_conv3d_454_bias_vIdentity_186:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_187IdentityRestoreV2:tensors:187"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_187AssignVariableOp-assignvariableop_187_adam_conv3d_455_kernel_vIdentity_187:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_188IdentityRestoreV2:tensors:188"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_188AssignVariableOp+assignvariableop_188_adam_conv3d_455_bias_vIdentity_188:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_189IdentityRestoreV2:tensors:189"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_189AssignVariableOp-assignvariableop_189_adam_conv3d_456_kernel_vIdentity_189:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_190IdentityRestoreV2:tensors:190"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_190AssignVariableOp+assignvariableop_190_adam_conv3d_456_bias_vIdentity_190:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_191IdentityRestoreV2:tensors:191"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_191AssignVariableOp-assignvariableop_191_adam_conv3d_457_kernel_vIdentity_191:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_192IdentityRestoreV2:tensors:192"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_192AssignVariableOp+assignvariableop_192_adam_conv3d_457_bias_vIdentity_192:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_193IdentityRestoreV2:tensors:193"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_193AssignVariableOp-assignvariableop_193_adam_conv3d_458_kernel_vIdentity_193:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_194IdentityRestoreV2:tensors:194"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_194AssignVariableOp+assignvariableop_194_adam_conv3d_458_bias_vIdentity_194:output:0"/device:CPU:0*
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
Ы

F__inference_conv3d_449_layer_call_and_return_conditional_losses_516157

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
њ
ОS
__inference__traced_save_517071
file_prefix0
,savev2_conv3d_432_kernel_read_readvariableop.
*savev2_conv3d_432_bias_read_readvariableop0
,savev2_conv3d_433_kernel_read_readvariableop.
*savev2_conv3d_433_bias_read_readvariableop0
,savev2_conv3d_434_kernel_read_readvariableop.
*savev2_conv3d_434_bias_read_readvariableop0
,savev2_conv3d_435_kernel_read_readvariableop.
*savev2_conv3d_435_bias_read_readvariableop0
,savev2_conv3d_436_kernel_read_readvariableop.
*savev2_conv3d_436_bias_read_readvariableop0
,savev2_conv3d_437_kernel_read_readvariableop.
*savev2_conv3d_437_bias_read_readvariableop0
,savev2_conv3d_438_kernel_read_readvariableop.
*savev2_conv3d_438_bias_read_readvariableop0
,savev2_conv3d_439_kernel_read_readvariableop.
*savev2_conv3d_439_bias_read_readvariableop0
,savev2_conv3d_440_kernel_read_readvariableop.
*savev2_conv3d_440_bias_read_readvariableop0
,savev2_conv3d_441_kernel_read_readvariableop.
*savev2_conv3d_441_bias_read_readvariableop9
5savev2_conv3d_transpose_64_kernel_read_readvariableop7
3savev2_conv3d_transpose_64_bias_read_readvariableop0
,savev2_conv3d_442_kernel_read_readvariableop.
*savev2_conv3d_442_bias_read_readvariableop0
,savev2_conv3d_443_kernel_read_readvariableop.
*savev2_conv3d_443_bias_read_readvariableop0
,savev2_conv3d_444_kernel_read_readvariableop.
*savev2_conv3d_444_bias_read_readvariableop0
,savev2_conv3d_445_kernel_read_readvariableop.
*savev2_conv3d_445_bias_read_readvariableop9
5savev2_conv3d_transpose_65_kernel_read_readvariableop7
3savev2_conv3d_transpose_65_bias_read_readvariableop0
,savev2_conv3d_446_kernel_read_readvariableop.
*savev2_conv3d_446_bias_read_readvariableop0
,savev2_conv3d_447_kernel_read_readvariableop.
*savev2_conv3d_447_bias_read_readvariableop0
,savev2_conv3d_448_kernel_read_readvariableop.
*savev2_conv3d_448_bias_read_readvariableop0
,savev2_conv3d_449_kernel_read_readvariableop.
*savev2_conv3d_449_bias_read_readvariableop9
5savev2_conv3d_transpose_66_kernel_read_readvariableop7
3savev2_conv3d_transpose_66_bias_read_readvariableop0
,savev2_conv3d_450_kernel_read_readvariableop.
*savev2_conv3d_450_bias_read_readvariableop0
,savev2_conv3d_451_kernel_read_readvariableop.
*savev2_conv3d_451_bias_read_readvariableop0
,savev2_conv3d_452_kernel_read_readvariableop.
*savev2_conv3d_452_bias_read_readvariableop0
,savev2_conv3d_453_kernel_read_readvariableop.
*savev2_conv3d_453_bias_read_readvariableop9
5savev2_conv3d_transpose_67_kernel_read_readvariableop7
3savev2_conv3d_transpose_67_bias_read_readvariableop0
,savev2_conv3d_454_kernel_read_readvariableop.
*savev2_conv3d_454_bias_read_readvariableop0
,savev2_conv3d_455_kernel_read_readvariableop.
*savev2_conv3d_455_bias_read_readvariableop0
,savev2_conv3d_456_kernel_read_readvariableop.
*savev2_conv3d_456_bias_read_readvariableop0
,savev2_conv3d_457_kernel_read_readvariableop.
*savev2_conv3d_457_bias_read_readvariableop0
,savev2_conv3d_458_kernel_read_readvariableop.
*savev2_conv3d_458_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv3d_432_kernel_m_read_readvariableop5
1savev2_adam_conv3d_432_bias_m_read_readvariableop7
3savev2_adam_conv3d_433_kernel_m_read_readvariableop5
1savev2_adam_conv3d_433_bias_m_read_readvariableop7
3savev2_adam_conv3d_434_kernel_m_read_readvariableop5
1savev2_adam_conv3d_434_bias_m_read_readvariableop7
3savev2_adam_conv3d_435_kernel_m_read_readvariableop5
1savev2_adam_conv3d_435_bias_m_read_readvariableop7
3savev2_adam_conv3d_436_kernel_m_read_readvariableop5
1savev2_adam_conv3d_436_bias_m_read_readvariableop7
3savev2_adam_conv3d_437_kernel_m_read_readvariableop5
1savev2_adam_conv3d_437_bias_m_read_readvariableop7
3savev2_adam_conv3d_438_kernel_m_read_readvariableop5
1savev2_adam_conv3d_438_bias_m_read_readvariableop7
3savev2_adam_conv3d_439_kernel_m_read_readvariableop5
1savev2_adam_conv3d_439_bias_m_read_readvariableop7
3savev2_adam_conv3d_440_kernel_m_read_readvariableop5
1savev2_adam_conv3d_440_bias_m_read_readvariableop7
3savev2_adam_conv3d_441_kernel_m_read_readvariableop5
1savev2_adam_conv3d_441_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_64_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_64_bias_m_read_readvariableop7
3savev2_adam_conv3d_442_kernel_m_read_readvariableop5
1savev2_adam_conv3d_442_bias_m_read_readvariableop7
3savev2_adam_conv3d_443_kernel_m_read_readvariableop5
1savev2_adam_conv3d_443_bias_m_read_readvariableop7
3savev2_adam_conv3d_444_kernel_m_read_readvariableop5
1savev2_adam_conv3d_444_bias_m_read_readvariableop7
3savev2_adam_conv3d_445_kernel_m_read_readvariableop5
1savev2_adam_conv3d_445_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_65_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_65_bias_m_read_readvariableop7
3savev2_adam_conv3d_446_kernel_m_read_readvariableop5
1savev2_adam_conv3d_446_bias_m_read_readvariableop7
3savev2_adam_conv3d_447_kernel_m_read_readvariableop5
1savev2_adam_conv3d_447_bias_m_read_readvariableop7
3savev2_adam_conv3d_448_kernel_m_read_readvariableop5
1savev2_adam_conv3d_448_bias_m_read_readvariableop7
3savev2_adam_conv3d_449_kernel_m_read_readvariableop5
1savev2_adam_conv3d_449_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_66_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_66_bias_m_read_readvariableop7
3savev2_adam_conv3d_450_kernel_m_read_readvariableop5
1savev2_adam_conv3d_450_bias_m_read_readvariableop7
3savev2_adam_conv3d_451_kernel_m_read_readvariableop5
1savev2_adam_conv3d_451_bias_m_read_readvariableop7
3savev2_adam_conv3d_452_kernel_m_read_readvariableop5
1savev2_adam_conv3d_452_bias_m_read_readvariableop7
3savev2_adam_conv3d_453_kernel_m_read_readvariableop5
1savev2_adam_conv3d_453_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_67_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_67_bias_m_read_readvariableop7
3savev2_adam_conv3d_454_kernel_m_read_readvariableop5
1savev2_adam_conv3d_454_bias_m_read_readvariableop7
3savev2_adam_conv3d_455_kernel_m_read_readvariableop5
1savev2_adam_conv3d_455_bias_m_read_readvariableop7
3savev2_adam_conv3d_456_kernel_m_read_readvariableop5
1savev2_adam_conv3d_456_bias_m_read_readvariableop7
3savev2_adam_conv3d_457_kernel_m_read_readvariableop5
1savev2_adam_conv3d_457_bias_m_read_readvariableop7
3savev2_adam_conv3d_458_kernel_m_read_readvariableop5
1savev2_adam_conv3d_458_bias_m_read_readvariableop7
3savev2_adam_conv3d_432_kernel_v_read_readvariableop5
1savev2_adam_conv3d_432_bias_v_read_readvariableop7
3savev2_adam_conv3d_433_kernel_v_read_readvariableop5
1savev2_adam_conv3d_433_bias_v_read_readvariableop7
3savev2_adam_conv3d_434_kernel_v_read_readvariableop5
1savev2_adam_conv3d_434_bias_v_read_readvariableop7
3savev2_adam_conv3d_435_kernel_v_read_readvariableop5
1savev2_adam_conv3d_435_bias_v_read_readvariableop7
3savev2_adam_conv3d_436_kernel_v_read_readvariableop5
1savev2_adam_conv3d_436_bias_v_read_readvariableop7
3savev2_adam_conv3d_437_kernel_v_read_readvariableop5
1savev2_adam_conv3d_437_bias_v_read_readvariableop7
3savev2_adam_conv3d_438_kernel_v_read_readvariableop5
1savev2_adam_conv3d_438_bias_v_read_readvariableop7
3savev2_adam_conv3d_439_kernel_v_read_readvariableop5
1savev2_adam_conv3d_439_bias_v_read_readvariableop7
3savev2_adam_conv3d_440_kernel_v_read_readvariableop5
1savev2_adam_conv3d_440_bias_v_read_readvariableop7
3savev2_adam_conv3d_441_kernel_v_read_readvariableop5
1savev2_adam_conv3d_441_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_64_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_64_bias_v_read_readvariableop7
3savev2_adam_conv3d_442_kernel_v_read_readvariableop5
1savev2_adam_conv3d_442_bias_v_read_readvariableop7
3savev2_adam_conv3d_443_kernel_v_read_readvariableop5
1savev2_adam_conv3d_443_bias_v_read_readvariableop7
3savev2_adam_conv3d_444_kernel_v_read_readvariableop5
1savev2_adam_conv3d_444_bias_v_read_readvariableop7
3savev2_adam_conv3d_445_kernel_v_read_readvariableop5
1savev2_adam_conv3d_445_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_65_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_65_bias_v_read_readvariableop7
3savev2_adam_conv3d_446_kernel_v_read_readvariableop5
1savev2_adam_conv3d_446_bias_v_read_readvariableop7
3savev2_adam_conv3d_447_kernel_v_read_readvariableop5
1savev2_adam_conv3d_447_bias_v_read_readvariableop7
3savev2_adam_conv3d_448_kernel_v_read_readvariableop5
1savev2_adam_conv3d_448_bias_v_read_readvariableop7
3savev2_adam_conv3d_449_kernel_v_read_readvariableop5
1savev2_adam_conv3d_449_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_66_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_66_bias_v_read_readvariableop7
3savev2_adam_conv3d_450_kernel_v_read_readvariableop5
1savev2_adam_conv3d_450_bias_v_read_readvariableop7
3savev2_adam_conv3d_451_kernel_v_read_readvariableop5
1savev2_adam_conv3d_451_bias_v_read_readvariableop7
3savev2_adam_conv3d_452_kernel_v_read_readvariableop5
1savev2_adam_conv3d_452_bias_v_read_readvariableop7
3savev2_adam_conv3d_453_kernel_v_read_readvariableop5
1savev2_adam_conv3d_453_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_67_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_67_bias_v_read_readvariableop7
3savev2_adam_conv3d_454_kernel_v_read_readvariableop5
1savev2_adam_conv3d_454_bias_v_read_readvariableop7
3savev2_adam_conv3d_455_kernel_v_read_readvariableop5
1savev2_adam_conv3d_455_bias_v_read_readvariableop7
3savev2_adam_conv3d_456_kernel_v_read_readvariableop5
1savev2_adam_conv3d_456_bias_v_read_readvariableop7
3savev2_adam_conv3d_457_kernel_v_read_readvariableop5
1savev2_adam_conv3d_457_bias_v_read_readvariableop7
3savev2_adam_conv3d_458_kernel_v_read_readvariableop5
1savev2_adam_conv3d_458_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_432_kernel_read_readvariableop*savev2_conv3d_432_bias_read_readvariableop,savev2_conv3d_433_kernel_read_readvariableop*savev2_conv3d_433_bias_read_readvariableop,savev2_conv3d_434_kernel_read_readvariableop*savev2_conv3d_434_bias_read_readvariableop,savev2_conv3d_435_kernel_read_readvariableop*savev2_conv3d_435_bias_read_readvariableop,savev2_conv3d_436_kernel_read_readvariableop*savev2_conv3d_436_bias_read_readvariableop,savev2_conv3d_437_kernel_read_readvariableop*savev2_conv3d_437_bias_read_readvariableop,savev2_conv3d_438_kernel_read_readvariableop*savev2_conv3d_438_bias_read_readvariableop,savev2_conv3d_439_kernel_read_readvariableop*savev2_conv3d_439_bias_read_readvariableop,savev2_conv3d_440_kernel_read_readvariableop*savev2_conv3d_440_bias_read_readvariableop,savev2_conv3d_441_kernel_read_readvariableop*savev2_conv3d_441_bias_read_readvariableop5savev2_conv3d_transpose_64_kernel_read_readvariableop3savev2_conv3d_transpose_64_bias_read_readvariableop,savev2_conv3d_442_kernel_read_readvariableop*savev2_conv3d_442_bias_read_readvariableop,savev2_conv3d_443_kernel_read_readvariableop*savev2_conv3d_443_bias_read_readvariableop,savev2_conv3d_444_kernel_read_readvariableop*savev2_conv3d_444_bias_read_readvariableop,savev2_conv3d_445_kernel_read_readvariableop*savev2_conv3d_445_bias_read_readvariableop5savev2_conv3d_transpose_65_kernel_read_readvariableop3savev2_conv3d_transpose_65_bias_read_readvariableop,savev2_conv3d_446_kernel_read_readvariableop*savev2_conv3d_446_bias_read_readvariableop,savev2_conv3d_447_kernel_read_readvariableop*savev2_conv3d_447_bias_read_readvariableop,savev2_conv3d_448_kernel_read_readvariableop*savev2_conv3d_448_bias_read_readvariableop,savev2_conv3d_449_kernel_read_readvariableop*savev2_conv3d_449_bias_read_readvariableop5savev2_conv3d_transpose_66_kernel_read_readvariableop3savev2_conv3d_transpose_66_bias_read_readvariableop,savev2_conv3d_450_kernel_read_readvariableop*savev2_conv3d_450_bias_read_readvariableop,savev2_conv3d_451_kernel_read_readvariableop*savev2_conv3d_451_bias_read_readvariableop,savev2_conv3d_452_kernel_read_readvariableop*savev2_conv3d_452_bias_read_readvariableop,savev2_conv3d_453_kernel_read_readvariableop*savev2_conv3d_453_bias_read_readvariableop5savev2_conv3d_transpose_67_kernel_read_readvariableop3savev2_conv3d_transpose_67_bias_read_readvariableop,savev2_conv3d_454_kernel_read_readvariableop*savev2_conv3d_454_bias_read_readvariableop,savev2_conv3d_455_kernel_read_readvariableop*savev2_conv3d_455_bias_read_readvariableop,savev2_conv3d_456_kernel_read_readvariableop*savev2_conv3d_456_bias_read_readvariableop,savev2_conv3d_457_kernel_read_readvariableop*savev2_conv3d_457_bias_read_readvariableop,savev2_conv3d_458_kernel_read_readvariableop*savev2_conv3d_458_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv3d_432_kernel_m_read_readvariableop1savev2_adam_conv3d_432_bias_m_read_readvariableop3savev2_adam_conv3d_433_kernel_m_read_readvariableop1savev2_adam_conv3d_433_bias_m_read_readvariableop3savev2_adam_conv3d_434_kernel_m_read_readvariableop1savev2_adam_conv3d_434_bias_m_read_readvariableop3savev2_adam_conv3d_435_kernel_m_read_readvariableop1savev2_adam_conv3d_435_bias_m_read_readvariableop3savev2_adam_conv3d_436_kernel_m_read_readvariableop1savev2_adam_conv3d_436_bias_m_read_readvariableop3savev2_adam_conv3d_437_kernel_m_read_readvariableop1savev2_adam_conv3d_437_bias_m_read_readvariableop3savev2_adam_conv3d_438_kernel_m_read_readvariableop1savev2_adam_conv3d_438_bias_m_read_readvariableop3savev2_adam_conv3d_439_kernel_m_read_readvariableop1savev2_adam_conv3d_439_bias_m_read_readvariableop3savev2_adam_conv3d_440_kernel_m_read_readvariableop1savev2_adam_conv3d_440_bias_m_read_readvariableop3savev2_adam_conv3d_441_kernel_m_read_readvariableop1savev2_adam_conv3d_441_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_64_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_64_bias_m_read_readvariableop3savev2_adam_conv3d_442_kernel_m_read_readvariableop1savev2_adam_conv3d_442_bias_m_read_readvariableop3savev2_adam_conv3d_443_kernel_m_read_readvariableop1savev2_adam_conv3d_443_bias_m_read_readvariableop3savev2_adam_conv3d_444_kernel_m_read_readvariableop1savev2_adam_conv3d_444_bias_m_read_readvariableop3savev2_adam_conv3d_445_kernel_m_read_readvariableop1savev2_adam_conv3d_445_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_65_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_65_bias_m_read_readvariableop3savev2_adam_conv3d_446_kernel_m_read_readvariableop1savev2_adam_conv3d_446_bias_m_read_readvariableop3savev2_adam_conv3d_447_kernel_m_read_readvariableop1savev2_adam_conv3d_447_bias_m_read_readvariableop3savev2_adam_conv3d_448_kernel_m_read_readvariableop1savev2_adam_conv3d_448_bias_m_read_readvariableop3savev2_adam_conv3d_449_kernel_m_read_readvariableop1savev2_adam_conv3d_449_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_66_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_66_bias_m_read_readvariableop3savev2_adam_conv3d_450_kernel_m_read_readvariableop1savev2_adam_conv3d_450_bias_m_read_readvariableop3savev2_adam_conv3d_451_kernel_m_read_readvariableop1savev2_adam_conv3d_451_bias_m_read_readvariableop3savev2_adam_conv3d_452_kernel_m_read_readvariableop1savev2_adam_conv3d_452_bias_m_read_readvariableop3savev2_adam_conv3d_453_kernel_m_read_readvariableop1savev2_adam_conv3d_453_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_67_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_67_bias_m_read_readvariableop3savev2_adam_conv3d_454_kernel_m_read_readvariableop1savev2_adam_conv3d_454_bias_m_read_readvariableop3savev2_adam_conv3d_455_kernel_m_read_readvariableop1savev2_adam_conv3d_455_bias_m_read_readvariableop3savev2_adam_conv3d_456_kernel_m_read_readvariableop1savev2_adam_conv3d_456_bias_m_read_readvariableop3savev2_adam_conv3d_457_kernel_m_read_readvariableop1savev2_adam_conv3d_457_bias_m_read_readvariableop3savev2_adam_conv3d_458_kernel_m_read_readvariableop1savev2_adam_conv3d_458_bias_m_read_readvariableop3savev2_adam_conv3d_432_kernel_v_read_readvariableop1savev2_adam_conv3d_432_bias_v_read_readvariableop3savev2_adam_conv3d_433_kernel_v_read_readvariableop1savev2_adam_conv3d_433_bias_v_read_readvariableop3savev2_adam_conv3d_434_kernel_v_read_readvariableop1savev2_adam_conv3d_434_bias_v_read_readvariableop3savev2_adam_conv3d_435_kernel_v_read_readvariableop1savev2_adam_conv3d_435_bias_v_read_readvariableop3savev2_adam_conv3d_436_kernel_v_read_readvariableop1savev2_adam_conv3d_436_bias_v_read_readvariableop3savev2_adam_conv3d_437_kernel_v_read_readvariableop1savev2_adam_conv3d_437_bias_v_read_readvariableop3savev2_adam_conv3d_438_kernel_v_read_readvariableop1savev2_adam_conv3d_438_bias_v_read_readvariableop3savev2_adam_conv3d_439_kernel_v_read_readvariableop1savev2_adam_conv3d_439_bias_v_read_readvariableop3savev2_adam_conv3d_440_kernel_v_read_readvariableop1savev2_adam_conv3d_440_bias_v_read_readvariableop3savev2_adam_conv3d_441_kernel_v_read_readvariableop1savev2_adam_conv3d_441_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_64_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_64_bias_v_read_readvariableop3savev2_adam_conv3d_442_kernel_v_read_readvariableop1savev2_adam_conv3d_442_bias_v_read_readvariableop3savev2_adam_conv3d_443_kernel_v_read_readvariableop1savev2_adam_conv3d_443_bias_v_read_readvariableop3savev2_adam_conv3d_444_kernel_v_read_readvariableop1savev2_adam_conv3d_444_bias_v_read_readvariableop3savev2_adam_conv3d_445_kernel_v_read_readvariableop1savev2_adam_conv3d_445_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_65_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_65_bias_v_read_readvariableop3savev2_adam_conv3d_446_kernel_v_read_readvariableop1savev2_adam_conv3d_446_bias_v_read_readvariableop3savev2_adam_conv3d_447_kernel_v_read_readvariableop1savev2_adam_conv3d_447_bias_v_read_readvariableop3savev2_adam_conv3d_448_kernel_v_read_readvariableop1savev2_adam_conv3d_448_bias_v_read_readvariableop3savev2_adam_conv3d_449_kernel_v_read_readvariableop1savev2_adam_conv3d_449_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_66_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_66_bias_v_read_readvariableop3savev2_adam_conv3d_450_kernel_v_read_readvariableop1savev2_adam_conv3d_450_bias_v_read_readvariableop3savev2_adam_conv3d_451_kernel_v_read_readvariableop1savev2_adam_conv3d_451_bias_v_read_readvariableop3savev2_adam_conv3d_452_kernel_v_read_readvariableop1savev2_adam_conv3d_452_bias_v_read_readvariableop3savev2_adam_conv3d_453_kernel_v_read_readvariableop1savev2_adam_conv3d_453_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_67_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_67_bias_v_read_readvariableop3savev2_adam_conv3d_454_kernel_v_read_readvariableop1savev2_adam_conv3d_454_bias_v_read_readvariableop3savev2_adam_conv3d_455_kernel_v_read_readvariableop1savev2_adam_conv3d_455_bias_v_read_readvariableop3savev2_adam_conv3d_456_kernel_v_read_readvariableop1savev2_adam_conv3d_456_bias_v_read_readvariableop3savev2_adam_conv3d_457_kernel_v_read_readvariableop1savev2_adam_conv3d_457_bias_v_read_readvariableop3savev2_adam_conv3d_458_kernel_v_read_readvariableop1savev2_adam_conv3d_458_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ђ
Є
+__inference_conv3d_435_layer_call_fn_515716

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
F__inference_conv3d_435_layer_call_and_return_conditional_losses_512775
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
F__inference_conv3d_433_layer_call_and_return_conditional_losses_515677

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
Ыа
д
D__inference_model_16_layer_call_and_return_conditional_losses_513232

inputs/
conv3d_432_512724:
conv3d_432_512726:/
conv3d_433_512741:
conv3d_433_512743:/
conv3d_434_512759: 
conv3d_434_512761: /
conv3d_435_512776:  
conv3d_435_512778: /
conv3d_436_512794: @
conv3d_436_512796:@/
conv3d_437_512811:@@
conv3d_437_512813:@0
conv3d_438_512829:@ 
conv3d_438_512831:	1
conv3d_439_512846: 
conv3d_439_512848:	1
conv3d_440_512864: 
conv3d_440_512866:	1
conv3d_441_512881: 
conv3d_441_512883:	:
conv3d_transpose_64_512886:)
conv3d_transpose_64_512888:	1
conv3d_442_512903: 
conv3d_442_512905:	1
conv3d_443_512929: 
conv3d_443_512931:	1
conv3d_444_512946: 
conv3d_444_512948:	1
conv3d_445_512963: 
conv3d_445_512965:	9
conv3d_transpose_65_512968:@(
conv3d_transpose_65_512970:@/
conv3d_446_512985:@@
conv3d_446_512987:@0
conv3d_447_513011:@
conv3d_447_513013:@/
conv3d_448_513028:@@
conv3d_448_513030:@/
conv3d_449_513045:@@
conv3d_449_513047:@8
conv3d_transpose_66_513050: @(
conv3d_transpose_66_513052: /
conv3d_450_513067:  
conv3d_450_513069: /
conv3d_451_513093:@ 
conv3d_451_513095: /
conv3d_452_513110:  
conv3d_452_513112: /
conv3d_453_513127:  
conv3d_453_513129: 8
conv3d_transpose_67_513132: (
conv3d_transpose_67_513134:/
conv3d_454_513149:
conv3d_454_513151:/
conv3d_455_513175: 
conv3d_455_513177:/
conv3d_456_513192:
conv3d_456_513194:/
conv3d_457_513209:
conv3d_457_513211:/
conv3d_458_513226:
conv3d_458_513228:
identityЂ"conv3d_432/StatefulPartitionedCallЂ"conv3d_433/StatefulPartitionedCallЂ"conv3d_434/StatefulPartitionedCallЂ"conv3d_435/StatefulPartitionedCallЂ"conv3d_436/StatefulPartitionedCallЂ"conv3d_437/StatefulPartitionedCallЂ"conv3d_438/StatefulPartitionedCallЂ"conv3d_439/StatefulPartitionedCallЂ"conv3d_440/StatefulPartitionedCallЂ"conv3d_441/StatefulPartitionedCallЂ"conv3d_442/StatefulPartitionedCallЂ"conv3d_443/StatefulPartitionedCallЂ"conv3d_444/StatefulPartitionedCallЂ"conv3d_445/StatefulPartitionedCallЂ"conv3d_446/StatefulPartitionedCallЂ"conv3d_447/StatefulPartitionedCallЂ"conv3d_448/StatefulPartitionedCallЂ"conv3d_449/StatefulPartitionedCallЂ"conv3d_450/StatefulPartitionedCallЂ"conv3d_451/StatefulPartitionedCallЂ"conv3d_452/StatefulPartitionedCallЂ"conv3d_453/StatefulPartitionedCallЂ"conv3d_454/StatefulPartitionedCallЂ"conv3d_455/StatefulPartitionedCallЂ"conv3d_456/StatefulPartitionedCallЂ"conv3d_457/StatefulPartitionedCallЂ"conv3d_458/StatefulPartitionedCallЂ+conv3d_transpose_64/StatefulPartitionedCallЂ+conv3d_transpose_65/StatefulPartitionedCallЂ+conv3d_transpose_66/StatefulPartitionedCallЂ+conv3d_transpose_67/StatefulPartitionedCallє
!zero_padding3d_16/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_512448Ц
"conv3d_432/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_16/PartitionedCall:output:0conv3d_432_512724conv3d_432_512726*
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
F__inference_conv3d_432_layer_call_and_return_conditional_losses_512723Ч
"conv3d_433/StatefulPartitionedCallStatefulPartitionedCall+conv3d_432/StatefulPartitionedCall:output:0conv3d_433_512741conv3d_433_512743*
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
F__inference_conv3d_433_layer_call_and_return_conditional_losses_512740
 max_pooling3d_64/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_512460Х
"conv3d_434/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_64/PartitionedCall:output:0conv3d_434_512759conv3d_434_512761*
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
F__inference_conv3d_434_layer_call_and_return_conditional_losses_512758Ч
"conv3d_435/StatefulPartitionedCallStatefulPartitionedCall+conv3d_434/StatefulPartitionedCall:output:0conv3d_435_512776conv3d_435_512778*
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
F__inference_conv3d_435_layer_call_and_return_conditional_losses_512775
 max_pooling3d_65/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_512472Х
"conv3d_436/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_65/PartitionedCall:output:0conv3d_436_512794conv3d_436_512796*
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
F__inference_conv3d_436_layer_call_and_return_conditional_losses_512793Ч
"conv3d_437/StatefulPartitionedCallStatefulPartitionedCall+conv3d_436/StatefulPartitionedCall:output:0conv3d_437_512811conv3d_437_512813*
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
F__inference_conv3d_437_layer_call_and_return_conditional_losses_512810
 max_pooling3d_66/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_512484Ц
"conv3d_438/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_66/PartitionedCall:output:0conv3d_438_512829conv3d_438_512831*
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
F__inference_conv3d_438_layer_call_and_return_conditional_losses_512828Ш
"conv3d_439/StatefulPartitionedCallStatefulPartitionedCall+conv3d_438/StatefulPartitionedCall:output:0conv3d_439_512846conv3d_439_512848*
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
F__inference_conv3d_439_layer_call_and_return_conditional_losses_512845
 max_pooling3d_67/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_512496Ц
"conv3d_440/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_67/PartitionedCall:output:0conv3d_440_512864conv3d_440_512866*
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
F__inference_conv3d_440_layer_call_and_return_conditional_losses_512863Ш
"conv3d_441/StatefulPartitionedCallStatefulPartitionedCall+conv3d_440/StatefulPartitionedCall:output:0conv3d_441_512881conv3d_441_512883*
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
F__inference_conv3d_441_layer_call_and_return_conditional_losses_512880ь
+conv3d_transpose_64/StatefulPartitionedCallStatefulPartitionedCall+conv3d_441/StatefulPartitionedCall:output:0conv3d_transpose_64_512886conv3d_transpose_64_512888*
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
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_512544б
"conv3d_442/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_64/StatefulPartitionedCall:output:0conv3d_442_512903conv3d_442_512905*
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
F__inference_conv3d_442_layer_call_and_return_conditional_losses_512902Т
concatenate_64/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0+conv3d_442/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_64_layer_call_and_return_conditional_losses_512915Ф
"conv3d_443/StatefulPartitionedCallStatefulPartitionedCall'concatenate_64/PartitionedCall:output:0conv3d_443_512929conv3d_443_512931*
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
F__inference_conv3d_443_layer_call_and_return_conditional_losses_512928Ш
"conv3d_444/StatefulPartitionedCallStatefulPartitionedCall+conv3d_443/StatefulPartitionedCall:output:0conv3d_444_512946conv3d_444_512948*
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
F__inference_conv3d_444_layer_call_and_return_conditional_losses_512945Ш
"conv3d_445/StatefulPartitionedCallStatefulPartitionedCall+conv3d_444/StatefulPartitionedCall:output:0conv3d_445_512963conv3d_445_512965*
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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_512962ы
+conv3d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall+conv3d_445/StatefulPartitionedCall:output:0conv3d_transpose_65_512968conv3d_transpose_65_512970*
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
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_512590а
"conv3d_446/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_65/StatefulPartitionedCall:output:0conv3d_446_512985conv3d_446_512987*
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
F__inference_conv3d_446_layer_call_and_return_conditional_losses_512984Т
concatenate_65/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0+conv3d_446/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_65_layer_call_and_return_conditional_losses_512997У
"conv3d_447/StatefulPartitionedCallStatefulPartitionedCall'concatenate_65/PartitionedCall:output:0conv3d_447_513011conv3d_447_513013*
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
F__inference_conv3d_447_layer_call_and_return_conditional_losses_513010Ч
"conv3d_448/StatefulPartitionedCallStatefulPartitionedCall+conv3d_447/StatefulPartitionedCall:output:0conv3d_448_513028conv3d_448_513030*
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
F__inference_conv3d_448_layer_call_and_return_conditional_losses_513027Ч
"conv3d_449/StatefulPartitionedCallStatefulPartitionedCall+conv3d_448/StatefulPartitionedCall:output:0conv3d_449_513045conv3d_449_513047*
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
F__inference_conv3d_449_layer_call_and_return_conditional_losses_513044ы
+conv3d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall+conv3d_449/StatefulPartitionedCall:output:0conv3d_transpose_66_513050conv3d_transpose_66_513052*
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
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_512636а
"conv3d_450/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_66/StatefulPartitionedCall:output:0conv3d_450_513067conv3d_450_513069*
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
F__inference_conv3d_450_layer_call_and_return_conditional_losses_513066С
concatenate_66/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0+conv3d_450/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_66_layer_call_and_return_conditional_losses_513079У
"conv3d_451/StatefulPartitionedCallStatefulPartitionedCall'concatenate_66/PartitionedCall:output:0conv3d_451_513093conv3d_451_513095*
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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_513092Ч
"conv3d_452/StatefulPartitionedCallStatefulPartitionedCall+conv3d_451/StatefulPartitionedCall:output:0conv3d_452_513110conv3d_452_513112*
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
F__inference_conv3d_452_layer_call_and_return_conditional_losses_513109Ч
"conv3d_453/StatefulPartitionedCallStatefulPartitionedCall+conv3d_452/StatefulPartitionedCall:output:0conv3d_453_513127conv3d_453_513129*
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
F__inference_conv3d_453_layer_call_and_return_conditional_losses_513126ы
+conv3d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall+conv3d_453/StatefulPartitionedCall:output:0conv3d_transpose_67_513132conv3d_transpose_67_513134*
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
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_512682а
"conv3d_454/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_67/StatefulPartitionedCall:output:0conv3d_454_513149conv3d_454_513151*
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
F__inference_conv3d_454_layer_call_and_return_conditional_losses_513148С
concatenate_67/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0+conv3d_454/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_67_layer_call_and_return_conditional_losses_513161У
"conv3d_455/StatefulPartitionedCallStatefulPartitionedCall'concatenate_67/PartitionedCall:output:0conv3d_455_513175conv3d_455_513177*
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
F__inference_conv3d_455_layer_call_and_return_conditional_losses_513174Ч
"conv3d_456/StatefulPartitionedCallStatefulPartitionedCall+conv3d_455/StatefulPartitionedCall:output:0conv3d_456_513192conv3d_456_513194*
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
F__inference_conv3d_456_layer_call_and_return_conditional_losses_513191Ч
"conv3d_457/StatefulPartitionedCallStatefulPartitionedCall+conv3d_456/StatefulPartitionedCall:output:0conv3d_457_513209conv3d_457_513211*
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
F__inference_conv3d_457_layer_call_and_return_conditional_losses_513208
cropping3d_16/PartitionedCallPartitionedCall+conv3d_457/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_512701Т
"conv3d_458/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_16/PartitionedCall:output:0conv3d_458_513226conv3d_458_513228*
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
F__inference_conv3d_458_layer_call_and_return_conditional_losses_513225Ё
IdentityIdentity+conv3d_458/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_432/StatefulPartitionedCall#^conv3d_433/StatefulPartitionedCall#^conv3d_434/StatefulPartitionedCall#^conv3d_435/StatefulPartitionedCall#^conv3d_436/StatefulPartitionedCall#^conv3d_437/StatefulPartitionedCall#^conv3d_438/StatefulPartitionedCall#^conv3d_439/StatefulPartitionedCall#^conv3d_440/StatefulPartitionedCall#^conv3d_441/StatefulPartitionedCall#^conv3d_442/StatefulPartitionedCall#^conv3d_443/StatefulPartitionedCall#^conv3d_444/StatefulPartitionedCall#^conv3d_445/StatefulPartitionedCall#^conv3d_446/StatefulPartitionedCall#^conv3d_447/StatefulPartitionedCall#^conv3d_448/StatefulPartitionedCall#^conv3d_449/StatefulPartitionedCall#^conv3d_450/StatefulPartitionedCall#^conv3d_451/StatefulPartitionedCall#^conv3d_452/StatefulPartitionedCall#^conv3d_453/StatefulPartitionedCall#^conv3d_454/StatefulPartitionedCall#^conv3d_455/StatefulPartitionedCall#^conv3d_456/StatefulPartitionedCall#^conv3d_457/StatefulPartitionedCall#^conv3d_458/StatefulPartitionedCall,^conv3d_transpose_64/StatefulPartitionedCall,^conv3d_transpose_65/StatefulPartitionedCall,^conv3d_transpose_66/StatefulPartitionedCall,^conv3d_transpose_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_432/StatefulPartitionedCall"conv3d_432/StatefulPartitionedCall2H
"conv3d_433/StatefulPartitionedCall"conv3d_433/StatefulPartitionedCall2H
"conv3d_434/StatefulPartitionedCall"conv3d_434/StatefulPartitionedCall2H
"conv3d_435/StatefulPartitionedCall"conv3d_435/StatefulPartitionedCall2H
"conv3d_436/StatefulPartitionedCall"conv3d_436/StatefulPartitionedCall2H
"conv3d_437/StatefulPartitionedCall"conv3d_437/StatefulPartitionedCall2H
"conv3d_438/StatefulPartitionedCall"conv3d_438/StatefulPartitionedCall2H
"conv3d_439/StatefulPartitionedCall"conv3d_439/StatefulPartitionedCall2H
"conv3d_440/StatefulPartitionedCall"conv3d_440/StatefulPartitionedCall2H
"conv3d_441/StatefulPartitionedCall"conv3d_441/StatefulPartitionedCall2H
"conv3d_442/StatefulPartitionedCall"conv3d_442/StatefulPartitionedCall2H
"conv3d_443/StatefulPartitionedCall"conv3d_443/StatefulPartitionedCall2H
"conv3d_444/StatefulPartitionedCall"conv3d_444/StatefulPartitionedCall2H
"conv3d_445/StatefulPartitionedCall"conv3d_445/StatefulPartitionedCall2H
"conv3d_446/StatefulPartitionedCall"conv3d_446/StatefulPartitionedCall2H
"conv3d_447/StatefulPartitionedCall"conv3d_447/StatefulPartitionedCall2H
"conv3d_448/StatefulPartitionedCall"conv3d_448/StatefulPartitionedCall2H
"conv3d_449/StatefulPartitionedCall"conv3d_449/StatefulPartitionedCall2H
"conv3d_450/StatefulPartitionedCall"conv3d_450/StatefulPartitionedCall2H
"conv3d_451/StatefulPartitionedCall"conv3d_451/StatefulPartitionedCall2H
"conv3d_452/StatefulPartitionedCall"conv3d_452/StatefulPartitionedCall2H
"conv3d_453/StatefulPartitionedCall"conv3d_453/StatefulPartitionedCall2H
"conv3d_454/StatefulPartitionedCall"conv3d_454/StatefulPartitionedCall2H
"conv3d_455/StatefulPartitionedCall"conv3d_455/StatefulPartitionedCall2H
"conv3d_456/StatefulPartitionedCall"conv3d_456/StatefulPartitionedCall2H
"conv3d_457/StatefulPartitionedCall"conv3d_457/StatefulPartitionedCall2H
"conv3d_458/StatefulPartitionedCall"conv3d_458/StatefulPartitionedCall2Z
+conv3d_transpose_64/StatefulPartitionedCall+conv3d_transpose_64/StatefulPartitionedCall2Z
+conv3d_transpose_65/StatefulPartitionedCall+conv3d_transpose_65/StatefulPartitionedCall2Z
+conv3d_transpose_66/StatefulPartitionedCall+conv3d_transpose_66/StatefulPartitionedCall2Z
+conv3d_transpose_67/StatefulPartitionedCall+conv3d_transpose_67/StatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
І&
Ѓ
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_515927

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
з

F__inference_conv3d_443_layer_call_and_return_conditional_losses_515980

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
к
h
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_512460

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
ж"
 
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_516338

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
ђ
Є
+__inference_conv3d_450_layer_call_fn_516210

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
F__inference_conv3d_450_layer_call_and_return_conditional_losses_513066
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
з

F__inference_conv3d_442_layer_call_and_return_conditional_losses_512902

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
Ы

F__inference_conv3d_435_layer_call_and_return_conditional_losses_515727

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
Ы

F__inference_conv3d_457_layer_call_and_return_conditional_losses_513208

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
+__inference_conv3d_452_layer_call_fn_516263

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
F__inference_conv3d_452_layer_call_and_return_conditional_losses_513109
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
ђ
Є
+__inference_conv3d_436_layer_call_fn_515746

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
F__inference_conv3d_436_layer_call_and_return_conditional_losses_512793
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
Љ
t
J__inference_concatenate_65_layer_call_and_return_conditional_losses_512997

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
F__inference_conv3d_450_layer_call_and_return_conditional_losses_516221

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
Й 
Џ
)__inference_model_16_layer_call_fn_514213
input_17%
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
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_16_layer_call_and_return_conditional_losses_513957
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
input_17

[
/__inference_concatenate_67_layer_call_fn_516364
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
J__inference_concatenate_67_layer_call_and_return_conditional_losses_513161
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
з

F__inference_conv3d_444_layer_call_and_return_conditional_losses_516000

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
+__inference_conv3d_457_layer_call_fn_516420

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
F__inference_conv3d_457_layer_call_and_return_conditional_losses_513208
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
ба
ж
D__inference_model_16_layer_call_and_return_conditional_losses_514551
input_17/
conv3d_432_514386:
conv3d_432_514388:/
conv3d_433_514391:
conv3d_433_514393:/
conv3d_434_514397: 
conv3d_434_514399: /
conv3d_435_514402:  
conv3d_435_514404: /
conv3d_436_514408: @
conv3d_436_514410:@/
conv3d_437_514413:@@
conv3d_437_514415:@0
conv3d_438_514419:@ 
conv3d_438_514421:	1
conv3d_439_514424: 
conv3d_439_514426:	1
conv3d_440_514430: 
conv3d_440_514432:	1
conv3d_441_514435: 
conv3d_441_514437:	:
conv3d_transpose_64_514440:)
conv3d_transpose_64_514442:	1
conv3d_442_514445: 
conv3d_442_514447:	1
conv3d_443_514451: 
conv3d_443_514453:	1
conv3d_444_514456: 
conv3d_444_514458:	1
conv3d_445_514461: 
conv3d_445_514463:	9
conv3d_transpose_65_514466:@(
conv3d_transpose_65_514468:@/
conv3d_446_514471:@@
conv3d_446_514473:@0
conv3d_447_514477:@
conv3d_447_514479:@/
conv3d_448_514482:@@
conv3d_448_514484:@/
conv3d_449_514487:@@
conv3d_449_514489:@8
conv3d_transpose_66_514492: @(
conv3d_transpose_66_514494: /
conv3d_450_514497:  
conv3d_450_514499: /
conv3d_451_514503:@ 
conv3d_451_514505: /
conv3d_452_514508:  
conv3d_452_514510: /
conv3d_453_514513:  
conv3d_453_514515: 8
conv3d_transpose_67_514518: (
conv3d_transpose_67_514520:/
conv3d_454_514523:
conv3d_454_514525:/
conv3d_455_514529: 
conv3d_455_514531:/
conv3d_456_514534:
conv3d_456_514536:/
conv3d_457_514539:
conv3d_457_514541:/
conv3d_458_514545:
conv3d_458_514547:
identityЂ"conv3d_432/StatefulPartitionedCallЂ"conv3d_433/StatefulPartitionedCallЂ"conv3d_434/StatefulPartitionedCallЂ"conv3d_435/StatefulPartitionedCallЂ"conv3d_436/StatefulPartitionedCallЂ"conv3d_437/StatefulPartitionedCallЂ"conv3d_438/StatefulPartitionedCallЂ"conv3d_439/StatefulPartitionedCallЂ"conv3d_440/StatefulPartitionedCallЂ"conv3d_441/StatefulPartitionedCallЂ"conv3d_442/StatefulPartitionedCallЂ"conv3d_443/StatefulPartitionedCallЂ"conv3d_444/StatefulPartitionedCallЂ"conv3d_445/StatefulPartitionedCallЂ"conv3d_446/StatefulPartitionedCallЂ"conv3d_447/StatefulPartitionedCallЂ"conv3d_448/StatefulPartitionedCallЂ"conv3d_449/StatefulPartitionedCallЂ"conv3d_450/StatefulPartitionedCallЂ"conv3d_451/StatefulPartitionedCallЂ"conv3d_452/StatefulPartitionedCallЂ"conv3d_453/StatefulPartitionedCallЂ"conv3d_454/StatefulPartitionedCallЂ"conv3d_455/StatefulPartitionedCallЂ"conv3d_456/StatefulPartitionedCallЂ"conv3d_457/StatefulPartitionedCallЂ"conv3d_458/StatefulPartitionedCallЂ+conv3d_transpose_64/StatefulPartitionedCallЂ+conv3d_transpose_65/StatefulPartitionedCallЂ+conv3d_transpose_66/StatefulPartitionedCallЂ+conv3d_transpose_67/StatefulPartitionedCallі
!zero_padding3d_16/PartitionedCallPartitionedCallinput_17*
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
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_512448Ц
"conv3d_432/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_16/PartitionedCall:output:0conv3d_432_514386conv3d_432_514388*
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
F__inference_conv3d_432_layer_call_and_return_conditional_losses_512723Ч
"conv3d_433/StatefulPartitionedCallStatefulPartitionedCall+conv3d_432/StatefulPartitionedCall:output:0conv3d_433_514391conv3d_433_514393*
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
F__inference_conv3d_433_layer_call_and_return_conditional_losses_512740
 max_pooling3d_64/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_512460Х
"conv3d_434/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_64/PartitionedCall:output:0conv3d_434_514397conv3d_434_514399*
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
F__inference_conv3d_434_layer_call_and_return_conditional_losses_512758Ч
"conv3d_435/StatefulPartitionedCallStatefulPartitionedCall+conv3d_434/StatefulPartitionedCall:output:0conv3d_435_514402conv3d_435_514404*
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
F__inference_conv3d_435_layer_call_and_return_conditional_losses_512775
 max_pooling3d_65/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_512472Х
"conv3d_436/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_65/PartitionedCall:output:0conv3d_436_514408conv3d_436_514410*
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
F__inference_conv3d_436_layer_call_and_return_conditional_losses_512793Ч
"conv3d_437/StatefulPartitionedCallStatefulPartitionedCall+conv3d_436/StatefulPartitionedCall:output:0conv3d_437_514413conv3d_437_514415*
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
F__inference_conv3d_437_layer_call_and_return_conditional_losses_512810
 max_pooling3d_66/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_512484Ц
"conv3d_438/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_66/PartitionedCall:output:0conv3d_438_514419conv3d_438_514421*
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
F__inference_conv3d_438_layer_call_and_return_conditional_losses_512828Ш
"conv3d_439/StatefulPartitionedCallStatefulPartitionedCall+conv3d_438/StatefulPartitionedCall:output:0conv3d_439_514424conv3d_439_514426*
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
F__inference_conv3d_439_layer_call_and_return_conditional_losses_512845
 max_pooling3d_67/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_512496Ц
"conv3d_440/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_67/PartitionedCall:output:0conv3d_440_514430conv3d_440_514432*
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
F__inference_conv3d_440_layer_call_and_return_conditional_losses_512863Ш
"conv3d_441/StatefulPartitionedCallStatefulPartitionedCall+conv3d_440/StatefulPartitionedCall:output:0conv3d_441_514435conv3d_441_514437*
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
F__inference_conv3d_441_layer_call_and_return_conditional_losses_512880ь
+conv3d_transpose_64/StatefulPartitionedCallStatefulPartitionedCall+conv3d_441/StatefulPartitionedCall:output:0conv3d_transpose_64_514440conv3d_transpose_64_514442*
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
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_512544б
"conv3d_442/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_64/StatefulPartitionedCall:output:0conv3d_442_514445conv3d_442_514447*
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
F__inference_conv3d_442_layer_call_and_return_conditional_losses_512902Т
concatenate_64/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0+conv3d_442/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_64_layer_call_and_return_conditional_losses_512915Ф
"conv3d_443/StatefulPartitionedCallStatefulPartitionedCall'concatenate_64/PartitionedCall:output:0conv3d_443_514451conv3d_443_514453*
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
F__inference_conv3d_443_layer_call_and_return_conditional_losses_512928Ш
"conv3d_444/StatefulPartitionedCallStatefulPartitionedCall+conv3d_443/StatefulPartitionedCall:output:0conv3d_444_514456conv3d_444_514458*
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
F__inference_conv3d_444_layer_call_and_return_conditional_losses_512945Ш
"conv3d_445/StatefulPartitionedCallStatefulPartitionedCall+conv3d_444/StatefulPartitionedCall:output:0conv3d_445_514461conv3d_445_514463*
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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_512962ы
+conv3d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall+conv3d_445/StatefulPartitionedCall:output:0conv3d_transpose_65_514466conv3d_transpose_65_514468*
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
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_512590а
"conv3d_446/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_65/StatefulPartitionedCall:output:0conv3d_446_514471conv3d_446_514473*
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
F__inference_conv3d_446_layer_call_and_return_conditional_losses_512984Т
concatenate_65/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0+conv3d_446/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_65_layer_call_and_return_conditional_losses_512997У
"conv3d_447/StatefulPartitionedCallStatefulPartitionedCall'concatenate_65/PartitionedCall:output:0conv3d_447_514477conv3d_447_514479*
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
F__inference_conv3d_447_layer_call_and_return_conditional_losses_513010Ч
"conv3d_448/StatefulPartitionedCallStatefulPartitionedCall+conv3d_447/StatefulPartitionedCall:output:0conv3d_448_514482conv3d_448_514484*
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
F__inference_conv3d_448_layer_call_and_return_conditional_losses_513027Ч
"conv3d_449/StatefulPartitionedCallStatefulPartitionedCall+conv3d_448/StatefulPartitionedCall:output:0conv3d_449_514487conv3d_449_514489*
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
F__inference_conv3d_449_layer_call_and_return_conditional_losses_513044ы
+conv3d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall+conv3d_449/StatefulPartitionedCall:output:0conv3d_transpose_66_514492conv3d_transpose_66_514494*
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
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_512636а
"conv3d_450/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_66/StatefulPartitionedCall:output:0conv3d_450_514497conv3d_450_514499*
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
F__inference_conv3d_450_layer_call_and_return_conditional_losses_513066С
concatenate_66/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0+conv3d_450/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_66_layer_call_and_return_conditional_losses_513079У
"conv3d_451/StatefulPartitionedCallStatefulPartitionedCall'concatenate_66/PartitionedCall:output:0conv3d_451_514503conv3d_451_514505*
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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_513092Ч
"conv3d_452/StatefulPartitionedCallStatefulPartitionedCall+conv3d_451/StatefulPartitionedCall:output:0conv3d_452_514508conv3d_452_514510*
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
F__inference_conv3d_452_layer_call_and_return_conditional_losses_513109Ч
"conv3d_453/StatefulPartitionedCallStatefulPartitionedCall+conv3d_452/StatefulPartitionedCall:output:0conv3d_453_514513conv3d_453_514515*
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
F__inference_conv3d_453_layer_call_and_return_conditional_losses_513126ы
+conv3d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall+conv3d_453/StatefulPartitionedCall:output:0conv3d_transpose_67_514518conv3d_transpose_67_514520*
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
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_512682а
"conv3d_454/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_67/StatefulPartitionedCall:output:0conv3d_454_514523conv3d_454_514525*
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
F__inference_conv3d_454_layer_call_and_return_conditional_losses_513148С
concatenate_67/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0+conv3d_454/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_67_layer_call_and_return_conditional_losses_513161У
"conv3d_455/StatefulPartitionedCallStatefulPartitionedCall'concatenate_67/PartitionedCall:output:0conv3d_455_514529conv3d_455_514531*
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
F__inference_conv3d_455_layer_call_and_return_conditional_losses_513174Ч
"conv3d_456/StatefulPartitionedCallStatefulPartitionedCall+conv3d_455/StatefulPartitionedCall:output:0conv3d_456_514534conv3d_456_514536*
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
F__inference_conv3d_456_layer_call_and_return_conditional_losses_513191Ч
"conv3d_457/StatefulPartitionedCallStatefulPartitionedCall+conv3d_456/StatefulPartitionedCall:output:0conv3d_457_514539conv3d_457_514541*
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
F__inference_conv3d_457_layer_call_and_return_conditional_losses_513208
cropping3d_16/PartitionedCallPartitionedCall+conv3d_457/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_512701Т
"conv3d_458/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_16/PartitionedCall:output:0conv3d_458_514545conv3d_458_514547*
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
F__inference_conv3d_458_layer_call_and_return_conditional_losses_513225Ё
IdentityIdentity+conv3d_458/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_432/StatefulPartitionedCall#^conv3d_433/StatefulPartitionedCall#^conv3d_434/StatefulPartitionedCall#^conv3d_435/StatefulPartitionedCall#^conv3d_436/StatefulPartitionedCall#^conv3d_437/StatefulPartitionedCall#^conv3d_438/StatefulPartitionedCall#^conv3d_439/StatefulPartitionedCall#^conv3d_440/StatefulPartitionedCall#^conv3d_441/StatefulPartitionedCall#^conv3d_442/StatefulPartitionedCall#^conv3d_443/StatefulPartitionedCall#^conv3d_444/StatefulPartitionedCall#^conv3d_445/StatefulPartitionedCall#^conv3d_446/StatefulPartitionedCall#^conv3d_447/StatefulPartitionedCall#^conv3d_448/StatefulPartitionedCall#^conv3d_449/StatefulPartitionedCall#^conv3d_450/StatefulPartitionedCall#^conv3d_451/StatefulPartitionedCall#^conv3d_452/StatefulPartitionedCall#^conv3d_453/StatefulPartitionedCall#^conv3d_454/StatefulPartitionedCall#^conv3d_455/StatefulPartitionedCall#^conv3d_456/StatefulPartitionedCall#^conv3d_457/StatefulPartitionedCall#^conv3d_458/StatefulPartitionedCall,^conv3d_transpose_64/StatefulPartitionedCall,^conv3d_transpose_65/StatefulPartitionedCall,^conv3d_transpose_66/StatefulPartitionedCall,^conv3d_transpose_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_432/StatefulPartitionedCall"conv3d_432/StatefulPartitionedCall2H
"conv3d_433/StatefulPartitionedCall"conv3d_433/StatefulPartitionedCall2H
"conv3d_434/StatefulPartitionedCall"conv3d_434/StatefulPartitionedCall2H
"conv3d_435/StatefulPartitionedCall"conv3d_435/StatefulPartitionedCall2H
"conv3d_436/StatefulPartitionedCall"conv3d_436/StatefulPartitionedCall2H
"conv3d_437/StatefulPartitionedCall"conv3d_437/StatefulPartitionedCall2H
"conv3d_438/StatefulPartitionedCall"conv3d_438/StatefulPartitionedCall2H
"conv3d_439/StatefulPartitionedCall"conv3d_439/StatefulPartitionedCall2H
"conv3d_440/StatefulPartitionedCall"conv3d_440/StatefulPartitionedCall2H
"conv3d_441/StatefulPartitionedCall"conv3d_441/StatefulPartitionedCall2H
"conv3d_442/StatefulPartitionedCall"conv3d_442/StatefulPartitionedCall2H
"conv3d_443/StatefulPartitionedCall"conv3d_443/StatefulPartitionedCall2H
"conv3d_444/StatefulPartitionedCall"conv3d_444/StatefulPartitionedCall2H
"conv3d_445/StatefulPartitionedCall"conv3d_445/StatefulPartitionedCall2H
"conv3d_446/StatefulPartitionedCall"conv3d_446/StatefulPartitionedCall2H
"conv3d_447/StatefulPartitionedCall"conv3d_447/StatefulPartitionedCall2H
"conv3d_448/StatefulPartitionedCall"conv3d_448/StatefulPartitionedCall2H
"conv3d_449/StatefulPartitionedCall"conv3d_449/StatefulPartitionedCall2H
"conv3d_450/StatefulPartitionedCall"conv3d_450/StatefulPartitionedCall2H
"conv3d_451/StatefulPartitionedCall"conv3d_451/StatefulPartitionedCall2H
"conv3d_452/StatefulPartitionedCall"conv3d_452/StatefulPartitionedCall2H
"conv3d_453/StatefulPartitionedCall"conv3d_453/StatefulPartitionedCall2H
"conv3d_454/StatefulPartitionedCall"conv3d_454/StatefulPartitionedCall2H
"conv3d_455/StatefulPartitionedCall"conv3d_455/StatefulPartitionedCall2H
"conv3d_456/StatefulPartitionedCall"conv3d_456/StatefulPartitionedCall2H
"conv3d_457/StatefulPartitionedCall"conv3d_457/StatefulPartitionedCall2H
"conv3d_458/StatefulPartitionedCall"conv3d_458/StatefulPartitionedCall2Z
+conv3d_transpose_64/StatefulPartitionedCall+conv3d_transpose_64/StatefulPartitionedCall2Z
+conv3d_transpose_65/StatefulPartitionedCall+conv3d_transpose_65/StatefulPartitionedCall2Z
+conv3d_transpose_66/StatefulPartitionedCall+conv3d_transpose_66/StatefulPartitionedCall2Z
+conv3d_transpose_67/StatefulPartitionedCall+conv3d_transpose_67/StatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_17
і
І
+__inference_conv3d_438_layer_call_fn_515796

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
F__inference_conv3d_438_layer_call_and_return_conditional_losses_512828
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
з

F__inference_conv3d_440_layer_call_and_return_conditional_losses_512863

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
Њ
i
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_515637

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
Г 
­
)__inference_model_16_layer_call_fn_514686

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
D__inference_model_16_layer_call_and_return_conditional_losses_513232
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
к
h
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_515787

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
F__inference_conv3d_455_layer_call_and_return_conditional_losses_516391

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

<
!__inference__wrapped_model_512438
input_17P
2model_16_conv3d_432_conv3d_readvariableop_resource:A
3model_16_conv3d_432_biasadd_readvariableop_resource:P
2model_16_conv3d_433_conv3d_readvariableop_resource:A
3model_16_conv3d_433_biasadd_readvariableop_resource:P
2model_16_conv3d_434_conv3d_readvariableop_resource: A
3model_16_conv3d_434_biasadd_readvariableop_resource: P
2model_16_conv3d_435_conv3d_readvariableop_resource:  A
3model_16_conv3d_435_biasadd_readvariableop_resource: P
2model_16_conv3d_436_conv3d_readvariableop_resource: @A
3model_16_conv3d_436_biasadd_readvariableop_resource:@P
2model_16_conv3d_437_conv3d_readvariableop_resource:@@A
3model_16_conv3d_437_biasadd_readvariableop_resource:@Q
2model_16_conv3d_438_conv3d_readvariableop_resource:@B
3model_16_conv3d_438_biasadd_readvariableop_resource:	R
2model_16_conv3d_439_conv3d_readvariableop_resource:B
3model_16_conv3d_439_biasadd_readvariableop_resource:	R
2model_16_conv3d_440_conv3d_readvariableop_resource:B
3model_16_conv3d_440_biasadd_readvariableop_resource:	R
2model_16_conv3d_441_conv3d_readvariableop_resource:B
3model_16_conv3d_441_biasadd_readvariableop_resource:	e
Emodel_16_conv3d_transpose_64_conv3d_transpose_readvariableop_resource:K
<model_16_conv3d_transpose_64_biasadd_readvariableop_resource:	R
2model_16_conv3d_442_conv3d_readvariableop_resource:B
3model_16_conv3d_442_biasadd_readvariableop_resource:	R
2model_16_conv3d_443_conv3d_readvariableop_resource:B
3model_16_conv3d_443_biasadd_readvariableop_resource:	R
2model_16_conv3d_444_conv3d_readvariableop_resource:B
3model_16_conv3d_444_biasadd_readvariableop_resource:	R
2model_16_conv3d_445_conv3d_readvariableop_resource:B
3model_16_conv3d_445_biasadd_readvariableop_resource:	d
Emodel_16_conv3d_transpose_65_conv3d_transpose_readvariableop_resource:@J
<model_16_conv3d_transpose_65_biasadd_readvariableop_resource:@P
2model_16_conv3d_446_conv3d_readvariableop_resource:@@A
3model_16_conv3d_446_biasadd_readvariableop_resource:@Q
2model_16_conv3d_447_conv3d_readvariableop_resource:@A
3model_16_conv3d_447_biasadd_readvariableop_resource:@P
2model_16_conv3d_448_conv3d_readvariableop_resource:@@A
3model_16_conv3d_448_biasadd_readvariableop_resource:@P
2model_16_conv3d_449_conv3d_readvariableop_resource:@@A
3model_16_conv3d_449_biasadd_readvariableop_resource:@c
Emodel_16_conv3d_transpose_66_conv3d_transpose_readvariableop_resource: @J
<model_16_conv3d_transpose_66_biasadd_readvariableop_resource: P
2model_16_conv3d_450_conv3d_readvariableop_resource:  A
3model_16_conv3d_450_biasadd_readvariableop_resource: P
2model_16_conv3d_451_conv3d_readvariableop_resource:@ A
3model_16_conv3d_451_biasadd_readvariableop_resource: P
2model_16_conv3d_452_conv3d_readvariableop_resource:  A
3model_16_conv3d_452_biasadd_readvariableop_resource: P
2model_16_conv3d_453_conv3d_readvariableop_resource:  A
3model_16_conv3d_453_biasadd_readvariableop_resource: c
Emodel_16_conv3d_transpose_67_conv3d_transpose_readvariableop_resource: J
<model_16_conv3d_transpose_67_biasadd_readvariableop_resource:P
2model_16_conv3d_454_conv3d_readvariableop_resource:A
3model_16_conv3d_454_biasadd_readvariableop_resource:P
2model_16_conv3d_455_conv3d_readvariableop_resource: A
3model_16_conv3d_455_biasadd_readvariableop_resource:P
2model_16_conv3d_456_conv3d_readvariableop_resource:A
3model_16_conv3d_456_biasadd_readvariableop_resource:P
2model_16_conv3d_457_conv3d_readvariableop_resource:A
3model_16_conv3d_457_biasadd_readvariableop_resource:P
2model_16_conv3d_458_conv3d_readvariableop_resource:A
3model_16_conv3d_458_biasadd_readvariableop_resource:
identityЂ*model_16/conv3d_432/BiasAdd/ReadVariableOpЂ)model_16/conv3d_432/Conv3D/ReadVariableOpЂ*model_16/conv3d_433/BiasAdd/ReadVariableOpЂ)model_16/conv3d_433/Conv3D/ReadVariableOpЂ*model_16/conv3d_434/BiasAdd/ReadVariableOpЂ)model_16/conv3d_434/Conv3D/ReadVariableOpЂ*model_16/conv3d_435/BiasAdd/ReadVariableOpЂ)model_16/conv3d_435/Conv3D/ReadVariableOpЂ*model_16/conv3d_436/BiasAdd/ReadVariableOpЂ)model_16/conv3d_436/Conv3D/ReadVariableOpЂ*model_16/conv3d_437/BiasAdd/ReadVariableOpЂ)model_16/conv3d_437/Conv3D/ReadVariableOpЂ*model_16/conv3d_438/BiasAdd/ReadVariableOpЂ)model_16/conv3d_438/Conv3D/ReadVariableOpЂ*model_16/conv3d_439/BiasAdd/ReadVariableOpЂ)model_16/conv3d_439/Conv3D/ReadVariableOpЂ*model_16/conv3d_440/BiasAdd/ReadVariableOpЂ)model_16/conv3d_440/Conv3D/ReadVariableOpЂ*model_16/conv3d_441/BiasAdd/ReadVariableOpЂ)model_16/conv3d_441/Conv3D/ReadVariableOpЂ*model_16/conv3d_442/BiasAdd/ReadVariableOpЂ)model_16/conv3d_442/Conv3D/ReadVariableOpЂ*model_16/conv3d_443/BiasAdd/ReadVariableOpЂ)model_16/conv3d_443/Conv3D/ReadVariableOpЂ*model_16/conv3d_444/BiasAdd/ReadVariableOpЂ)model_16/conv3d_444/Conv3D/ReadVariableOpЂ*model_16/conv3d_445/BiasAdd/ReadVariableOpЂ)model_16/conv3d_445/Conv3D/ReadVariableOpЂ*model_16/conv3d_446/BiasAdd/ReadVariableOpЂ)model_16/conv3d_446/Conv3D/ReadVariableOpЂ*model_16/conv3d_447/BiasAdd/ReadVariableOpЂ)model_16/conv3d_447/Conv3D/ReadVariableOpЂ*model_16/conv3d_448/BiasAdd/ReadVariableOpЂ)model_16/conv3d_448/Conv3D/ReadVariableOpЂ*model_16/conv3d_449/BiasAdd/ReadVariableOpЂ)model_16/conv3d_449/Conv3D/ReadVariableOpЂ*model_16/conv3d_450/BiasAdd/ReadVariableOpЂ)model_16/conv3d_450/Conv3D/ReadVariableOpЂ*model_16/conv3d_451/BiasAdd/ReadVariableOpЂ)model_16/conv3d_451/Conv3D/ReadVariableOpЂ*model_16/conv3d_452/BiasAdd/ReadVariableOpЂ)model_16/conv3d_452/Conv3D/ReadVariableOpЂ*model_16/conv3d_453/BiasAdd/ReadVariableOpЂ)model_16/conv3d_453/Conv3D/ReadVariableOpЂ*model_16/conv3d_454/BiasAdd/ReadVariableOpЂ)model_16/conv3d_454/Conv3D/ReadVariableOpЂ*model_16/conv3d_455/BiasAdd/ReadVariableOpЂ)model_16/conv3d_455/Conv3D/ReadVariableOpЂ*model_16/conv3d_456/BiasAdd/ReadVariableOpЂ)model_16/conv3d_456/Conv3D/ReadVariableOpЂ*model_16/conv3d_457/BiasAdd/ReadVariableOpЂ)model_16/conv3d_457/Conv3D/ReadVariableOpЂ*model_16/conv3d_458/BiasAdd/ReadVariableOpЂ)model_16/conv3d_458/Conv3D/ReadVariableOpЂ3model_16/conv3d_transpose_64/BiasAdd/ReadVariableOpЂ<model_16/conv3d_transpose_64/conv3d_transpose/ReadVariableOpЂ3model_16/conv3d_transpose_65/BiasAdd/ReadVariableOpЂ<model_16/conv3d_transpose_65/conv3d_transpose/ReadVariableOpЂ3model_16/conv3d_transpose_66/BiasAdd/ReadVariableOpЂ<model_16/conv3d_transpose_66/conv3d_transpose/ReadVariableOpЂ3model_16/conv3d_transpose_67/BiasAdd/ReadVariableOpЂ<model_16/conv3d_transpose_67/conv3d_transpose/ReadVariableOp 
'model_16/zero_padding3d_16/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     К
model_16/zero_padding3d_16/PadPadinput_170model_16/zero_padding3d_16/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_16/conv3d_432/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_432_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_16/conv3d_432/Conv3DConv3D'model_16/zero_padding3d_16/Pad:output:01model_16/conv3d_432/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_432/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_432_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_16/conv3d_432/BiasAddBiasAdd#model_16/conv3d_432/Conv3D:output:02model_16/conv3d_432/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_16/conv3d_432/ReluRelu$model_16/conv3d_432/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_16/conv3d_433/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_433_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_16/conv3d_433/Conv3DConv3D&model_16/conv3d_432/Relu:activations:01model_16/conv3d_433/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_433/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_433_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_16/conv3d_433/BiasAddBiasAdd#model_16/conv3d_433/Conv3D:output:02model_16/conv3d_433/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_16/conv3d_433/ReluRelu$model_16/conv3d_433/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџя
#model_16/max_pooling3d_64/MaxPool3D	MaxPool3D&model_16/conv3d_433/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
Ј
)model_16/conv3d_434/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_434_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0
model_16/conv3d_434/Conv3DConv3D,model_16/max_pooling3d_64/MaxPool3D:output:01model_16/conv3d_434/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_16/conv3d_434/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_434_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_16/conv3d_434/BiasAddBiasAdd#model_16/conv3d_434/Conv3D:output:02model_16/conv3d_434/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_434/ReluRelu$model_16/conv3d_434/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_16/conv3d_435/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_435_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_16/conv3d_435/Conv3DConv3D&model_16/conv3d_434/Relu:activations:01model_16/conv3d_435/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_16/conv3d_435/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_435_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_16/conv3d_435/BiasAddBiasAdd#model_16/conv3d_435/Conv3D:output:02model_16/conv3d_435/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_435/ReluRelu$model_16/conv3d_435/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ я
#model_16/max_pooling3d_65/MaxPool3D	MaxPool3D&model_16/conv3d_435/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	
Ј
)model_16/conv3d_436/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_436_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0
model_16/conv3d_436/Conv3DConv3D,model_16/max_pooling3d_65/MaxPool3D:output:01model_16/conv3d_436/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_16/conv3d_436/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_436_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_16/conv3d_436/BiasAddBiasAdd#model_16/conv3d_436/Conv3D:output:02model_16/conv3d_436/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_16/conv3d_436/ReluRelu$model_16/conv3d_436/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_16/conv3d_437/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_437_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_16/conv3d_437/Conv3DConv3D&model_16/conv3d_436/Relu:activations:01model_16/conv3d_437/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_16/conv3d_437/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_437_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_16/conv3d_437/BiasAddBiasAdd#model_16/conv3d_437/Conv3D:output:02model_16/conv3d_437/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_16/conv3d_437/ReluRelu$model_16/conv3d_437/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@я
#model_16/max_pooling3d_66/MaxPool3D	MaxPool3D&model_16/conv3d_437/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	
Љ
)model_16/conv3d_438/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_438_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0
model_16/conv3d_438/Conv3DConv3D,model_16/max_pooling3d_66/MaxPool3D:output:01model_16/conv3d_438/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_438/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_438_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_438/BiasAddBiasAdd#model_16/conv3d_438/Conv3D:output:02model_16/conv3d_438/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_438/ReluRelu$model_16/conv3d_438/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_16/conv3d_439/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_439_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_16/conv3d_439/Conv3DConv3D&model_16/conv3d_438/Relu:activations:01model_16/conv3d_439/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_439/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_439_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_439/BiasAddBiasAdd#model_16/conv3d_439/Conv3D:output:02model_16/conv3d_439/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_439/ReluRelu$model_16/conv3d_439/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
#model_16/max_pooling3d_67/MaxPool3D	MaxPool3D&model_16/conv3d_439/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
Њ
)model_16/conv3d_440/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_440_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_16/conv3d_440/Conv3DConv3D,model_16/max_pooling3d_67/MaxPool3D:output:01model_16/conv3d_440/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_440/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_440_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_440/BiasAddBiasAdd#model_16/conv3d_440/Conv3D:output:02model_16/conv3d_440/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_440/ReluRelu$model_16/conv3d_440/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_16/conv3d_441/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_441_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_16/conv3d_441/Conv3DConv3D&model_16/conv3d_440/Relu:activations:01model_16/conv3d_441/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_441/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_441_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_441/BiasAddBiasAdd#model_16/conv3d_441/Conv3D:output:02model_16/conv3d_441/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_441/ReluRelu$model_16/conv3d_441/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
"model_16/conv3d_transpose_64/ShapeShape&model_16/conv3d_441/Relu:activations:0*
T0*
_output_shapes
:z
0model_16/conv3d_transpose_64/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_16/conv3d_transpose_64/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_16/conv3d_transpose_64/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_16/conv3d_transpose_64/strided_sliceStridedSlice+model_16/conv3d_transpose_64/Shape:output:09model_16/conv3d_transpose_64/strided_slice/stack:output:0;model_16/conv3d_transpose_64/strided_slice/stack_1:output:0;model_16/conv3d_transpose_64/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_64/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_64/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_64/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_64/strided_slice_1StridedSlice+model_16/conv3d_transpose_64/Shape:output:0;model_16/conv3d_transpose_64/strided_slice_1/stack:output:0=model_16/conv3d_transpose_64/strided_slice_1/stack_1:output:0=model_16/conv3d_transpose_64/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_64/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_64/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_64/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_64/strided_slice_2StridedSlice+model_16/conv3d_transpose_64/Shape:output:0;model_16/conv3d_transpose_64/strided_slice_2/stack:output:0=model_16/conv3d_transpose_64/strided_slice_2/stack_1:output:0=model_16/conv3d_transpose_64/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_64/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_64/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_64/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_64/strided_slice_3StridedSlice+model_16/conv3d_transpose_64/Shape:output:0;model_16/conv3d_transpose_64/strided_slice_3/stack:output:0=model_16/conv3d_transpose_64/strided_slice_3/stack_1:output:0=model_16/conv3d_transpose_64/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_16/conv3d_transpose_64/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_16/conv3d_transpose_64/mulMul5model_16/conv3d_transpose_64/strided_slice_1:output:0+model_16/conv3d_transpose_64/mul/y:output:0*
T0*
_output_shapes
: d
"model_16/conv3d_transpose_64/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
 model_16/conv3d_transpose_64/addAddV2$model_16/conv3d_transpose_64/mul:z:0+model_16/conv3d_transpose_64/add/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_64/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_64/mul_1Mul5model_16/conv3d_transpose_64/strided_slice_2:output:0-model_16/conv3d_transpose_64/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_64/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
"model_16/conv3d_transpose_64/add_1AddV2&model_16/conv3d_transpose_64/mul_1:z:0-model_16/conv3d_transpose_64/add_1/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_64/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_64/mul_2Mul5model_16/conv3d_transpose_64/strided_slice_3:output:0-model_16/conv3d_transpose_64/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_64/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
"model_16/conv3d_transpose_64/add_2AddV2&model_16/conv3d_transpose_64/mul_2:z:0-model_16/conv3d_transpose_64/add_2/y:output:0*
T0*
_output_shapes
: g
$model_16/conv3d_transpose_64/stack/4Const*
_output_shapes
: *
dtype0*
value
B :В
"model_16/conv3d_transpose_64/stackPack3model_16/conv3d_transpose_64/strided_slice:output:0$model_16/conv3d_transpose_64/add:z:0&model_16/conv3d_transpose_64/add_1:z:0&model_16/conv3d_transpose_64/add_2:z:0-model_16/conv3d_transpose_64/stack/4:output:0*
N*
T0*
_output_shapes
:а
<model_16/conv3d_transpose_64/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_16_conv3d_transpose_64_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0х
-model_16/conv3d_transpose_64/conv3d_transposeConv3DBackpropInputV2+model_16/conv3d_transpose_64/stack:output:0Dmodel_16/conv3d_transpose_64/conv3d_transpose/ReadVariableOp:value:0&model_16/conv3d_441/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	
­
3model_16/conv3d_transpose_64/BiasAdd/ReadVariableOpReadVariableOp<model_16_conv3d_transpose_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ў
$model_16/conv3d_transpose_64/BiasAddBiasAdd6model_16/conv3d_transpose_64/conv3d_transpose:output:0;model_16/conv3d_transpose_64/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_16/conv3d_442/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_442_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_16/conv3d_442/Conv3DConv3D-model_16/conv3d_transpose_64/BiasAdd:output:01model_16/conv3d_442/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_442/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_442_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_442/BiasAddBiasAdd#model_16/conv3d_442/Conv3D:output:02model_16/conv3d_442/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_442/ReluRelu$model_16/conv3d_442/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe
#model_16/concatenate_64/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_16/concatenate_64/concatConcatV2&model_16/conv3d_439/Relu:activations:0&model_16/conv3d_442/Relu:activations:0,model_16/concatenate_64/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_16/conv3d_443/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_443_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_16/conv3d_443/Conv3DConv3D'model_16/concatenate_64/concat:output:01model_16/conv3d_443/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_443/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_443_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_443/BiasAddBiasAdd#model_16/conv3d_443/Conv3D:output:02model_16/conv3d_443/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_443/ReluRelu$model_16/conv3d_443/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_16/conv3d_444/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_444_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_16/conv3d_444/Conv3DConv3D&model_16/conv3d_443/Relu:activations:01model_16/conv3d_444/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_444/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_444_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_444/BiasAddBiasAdd#model_16/conv3d_444/Conv3D:output:02model_16/conv3d_444/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_444/ReluRelu$model_16/conv3d_444/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_16/conv3d_445/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_445_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_16/conv3d_445/Conv3DConv3D&model_16/conv3d_444/Relu:activations:01model_16/conv3d_445/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_445/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_445_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_16/conv3d_445/BiasAddBiasAdd#model_16/conv3d_445/Conv3D:output:02model_16/conv3d_445/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_445/ReluRelu$model_16/conv3d_445/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
"model_16/conv3d_transpose_65/ShapeShape&model_16/conv3d_445/Relu:activations:0*
T0*
_output_shapes
:z
0model_16/conv3d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_16/conv3d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_16/conv3d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_16/conv3d_transpose_65/strided_sliceStridedSlice+model_16/conv3d_transpose_65/Shape:output:09model_16/conv3d_transpose_65/strided_slice/stack:output:0;model_16/conv3d_transpose_65/strided_slice/stack_1:output:0;model_16/conv3d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_65/strided_slice_1StridedSlice+model_16/conv3d_transpose_65/Shape:output:0;model_16/conv3d_transpose_65/strided_slice_1/stack:output:0=model_16/conv3d_transpose_65/strided_slice_1/stack_1:output:0=model_16/conv3d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_65/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_65/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_65/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_65/strided_slice_2StridedSlice+model_16/conv3d_transpose_65/Shape:output:0;model_16/conv3d_transpose_65/strided_slice_2/stack:output:0=model_16/conv3d_transpose_65/strided_slice_2/stack_1:output:0=model_16/conv3d_transpose_65/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_65/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_65/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_65/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_65/strided_slice_3StridedSlice+model_16/conv3d_transpose_65/Shape:output:0;model_16/conv3d_transpose_65/strided_slice_3/stack:output:0=model_16/conv3d_transpose_65/strided_slice_3/stack_1:output:0=model_16/conv3d_transpose_65/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_16/conv3d_transpose_65/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_16/conv3d_transpose_65/mulMul5model_16/conv3d_transpose_65/strided_slice_1:output:0+model_16/conv3d_transpose_65/mul/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_65/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_65/mul_1Mul5model_16/conv3d_transpose_65/strided_slice_2:output:0-model_16/conv3d_transpose_65/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_65/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_65/mul_2Mul5model_16/conv3d_transpose_65/strided_slice_3:output:0-model_16/conv3d_transpose_65/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_65/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@В
"model_16/conv3d_transpose_65/stackPack3model_16/conv3d_transpose_65/strided_slice:output:0$model_16/conv3d_transpose_65/mul:z:0&model_16/conv3d_transpose_65/mul_1:z:0&model_16/conv3d_transpose_65/mul_2:z:0-model_16/conv3d_transpose_65/stack/4:output:0*
N*
T0*
_output_shapes
:Я
<model_16/conv3d_transpose_65/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_16_conv3d_transpose_65_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0у
-model_16/conv3d_transpose_65/conv3d_transposeConv3DBackpropInputV2+model_16/conv3d_transpose_65/stack:output:0Dmodel_16/conv3d_transpose_65/conv3d_transpose/ReadVariableOp:value:0&model_16/conv3d_445/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
Ќ
3model_16/conv3d_transpose_65/BiasAdd/ReadVariableOpReadVariableOp<model_16_conv3d_transpose_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0§
$model_16/conv3d_transpose_65/BiasAddBiasAdd6model_16/conv3d_transpose_65/conv3d_transpose:output:0;model_16/conv3d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_16/conv3d_446/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_446_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_16/conv3d_446/Conv3DConv3D-model_16/conv3d_transpose_65/BiasAdd:output:01model_16/conv3d_446/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_16/conv3d_446/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_446_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_16/conv3d_446/BiasAddBiasAdd#model_16/conv3d_446/Conv3D:output:02model_16/conv3d_446/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_16/conv3d_446/ReluRelu$model_16/conv3d_446/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@e
#model_16/concatenate_65/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_16/concatenate_65/concatConcatV2&model_16/conv3d_437/Relu:activations:0&model_16/conv3d_446/Relu:activations:0,model_16/concatenate_65/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЉ
)model_16/conv3d_447/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_447_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0
model_16/conv3d_447/Conv3DConv3D'model_16/concatenate_65/concat:output:01model_16/conv3d_447/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_16/conv3d_447/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_447_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_16/conv3d_447/BiasAddBiasAdd#model_16/conv3d_447/Conv3D:output:02model_16/conv3d_447/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_16/conv3d_447/ReluRelu$model_16/conv3d_447/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_16/conv3d_448/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_448_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_16/conv3d_448/Conv3DConv3D&model_16/conv3d_447/Relu:activations:01model_16/conv3d_448/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_16/conv3d_448/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_448_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_16/conv3d_448/BiasAddBiasAdd#model_16/conv3d_448/Conv3D:output:02model_16/conv3d_448/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_16/conv3d_448/ReluRelu$model_16/conv3d_448/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_16/conv3d_449/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_449_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_16/conv3d_449/Conv3DConv3D&model_16/conv3d_448/Relu:activations:01model_16/conv3d_449/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_16/conv3d_449/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_449_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_16/conv3d_449/BiasAddBiasAdd#model_16/conv3d_449/Conv3D:output:02model_16/conv3d_449/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_16/conv3d_449/ReluRelu$model_16/conv3d_449/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@x
"model_16/conv3d_transpose_66/ShapeShape&model_16/conv3d_449/Relu:activations:0*
T0*
_output_shapes
:z
0model_16/conv3d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_16/conv3d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_16/conv3d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_16/conv3d_transpose_66/strided_sliceStridedSlice+model_16/conv3d_transpose_66/Shape:output:09model_16/conv3d_transpose_66/strided_slice/stack:output:0;model_16/conv3d_transpose_66/strided_slice/stack_1:output:0;model_16/conv3d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_66/strided_slice_1StridedSlice+model_16/conv3d_transpose_66/Shape:output:0;model_16/conv3d_transpose_66/strided_slice_1/stack:output:0=model_16/conv3d_transpose_66/strided_slice_1/stack_1:output:0=model_16/conv3d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_66/strided_slice_2StridedSlice+model_16/conv3d_transpose_66/Shape:output:0;model_16/conv3d_transpose_66/strided_slice_2/stack:output:0=model_16/conv3d_transpose_66/strided_slice_2/stack_1:output:0=model_16/conv3d_transpose_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_66/strided_slice_3StridedSlice+model_16/conv3d_transpose_66/Shape:output:0;model_16/conv3d_transpose_66/strided_slice_3/stack:output:0=model_16/conv3d_transpose_66/strided_slice_3/stack_1:output:0=model_16/conv3d_transpose_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_16/conv3d_transpose_66/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_16/conv3d_transpose_66/mulMul5model_16/conv3d_transpose_66/strided_slice_1:output:0+model_16/conv3d_transpose_66/mul/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_66/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_66/mul_1Mul5model_16/conv3d_transpose_66/strided_slice_2:output:0-model_16/conv3d_transpose_66/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_66/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_66/mul_2Mul5model_16/conv3d_transpose_66/strided_slice_3:output:0-model_16/conv3d_transpose_66/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_66/stack/4Const*
_output_shapes
: *
dtype0*
value	B : В
"model_16/conv3d_transpose_66/stackPack3model_16/conv3d_transpose_66/strided_slice:output:0$model_16/conv3d_transpose_66/mul:z:0&model_16/conv3d_transpose_66/mul_1:z:0&model_16/conv3d_transpose_66/mul_2:z:0-model_16/conv3d_transpose_66/stack/4:output:0*
N*
T0*
_output_shapes
:Ю
<model_16/conv3d_transpose_66/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_16_conv3d_transpose_66_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0у
-model_16/conv3d_transpose_66/conv3d_transposeConv3DBackpropInputV2+model_16/conv3d_transpose_66/stack:output:0Dmodel_16/conv3d_transpose_66/conv3d_transpose/ReadVariableOp:value:0&model_16/conv3d_449/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
Ќ
3model_16/conv3d_transpose_66/BiasAdd/ReadVariableOpReadVariableOp<model_16_conv3d_transpose_66_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0§
$model_16/conv3d_transpose_66/BiasAddBiasAdd6model_16/conv3d_transpose_66/conv3d_transpose:output:0;model_16/conv3d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_16/conv3d_450/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_450_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_16/conv3d_450/Conv3DConv3D-model_16/conv3d_transpose_66/BiasAdd:output:01model_16/conv3d_450/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_16/conv3d_450/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_450_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_16/conv3d_450/BiasAddBiasAdd#model_16/conv3d_450/Conv3D:output:02model_16/conv3d_450/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_450/ReluRelu$model_16/conv3d_450/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ e
#model_16/concatenate_66/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_16/concatenate_66/concatConcatV2&model_16/conv3d_435/Relu:activations:0&model_16/conv3d_450/Relu:activations:0,model_16/concatenate_66/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_16/conv3d_451/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_451_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0
model_16/conv3d_451/Conv3DConv3D'model_16/concatenate_66/concat:output:01model_16/conv3d_451/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_16/conv3d_451/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_451_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_16/conv3d_451/BiasAddBiasAdd#model_16/conv3d_451/Conv3D:output:02model_16/conv3d_451/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_451/ReluRelu$model_16/conv3d_451/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_16/conv3d_452/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_452_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_16/conv3d_452/Conv3DConv3D&model_16/conv3d_451/Relu:activations:01model_16/conv3d_452/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_16/conv3d_452/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_452_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_16/conv3d_452/BiasAddBiasAdd#model_16/conv3d_452/Conv3D:output:02model_16/conv3d_452/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_452/ReluRelu$model_16/conv3d_452/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_16/conv3d_453/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_453_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_16/conv3d_453/Conv3DConv3D&model_16/conv3d_452/Relu:activations:01model_16/conv3d_453/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_16/conv3d_453/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_453_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_16/conv3d_453/BiasAddBiasAdd#model_16/conv3d_453/Conv3D:output:02model_16/conv3d_453/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_16/conv3d_453/ReluRelu$model_16/conv3d_453/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ x
"model_16/conv3d_transpose_67/ShapeShape&model_16/conv3d_453/Relu:activations:0*
T0*
_output_shapes
:z
0model_16/conv3d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_16/conv3d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_16/conv3d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_16/conv3d_transpose_67/strided_sliceStridedSlice+model_16/conv3d_transpose_67/Shape:output:09model_16/conv3d_transpose_67/strided_slice/stack:output:0;model_16/conv3d_transpose_67/strided_slice/stack_1:output:0;model_16/conv3d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_67/strided_slice_1StridedSlice+model_16/conv3d_transpose_67/Shape:output:0;model_16/conv3d_transpose_67/strided_slice_1/stack:output:0=model_16/conv3d_transpose_67/strided_slice_1/stack_1:output:0=model_16/conv3d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_67/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_67/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_67/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_67/strided_slice_2StridedSlice+model_16/conv3d_transpose_67/Shape:output:0;model_16/conv3d_transpose_67/strided_slice_2/stack:output:0=model_16/conv3d_transpose_67/strided_slice_2/stack_1:output:0=model_16/conv3d_transpose_67/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_16/conv3d_transpose_67/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_67/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_16/conv3d_transpose_67/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_16/conv3d_transpose_67/strided_slice_3StridedSlice+model_16/conv3d_transpose_67/Shape:output:0;model_16/conv3d_transpose_67/strided_slice_3/stack:output:0=model_16/conv3d_transpose_67/strided_slice_3/stack_1:output:0=model_16/conv3d_transpose_67/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_16/conv3d_transpose_67/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_16/conv3d_transpose_67/mulMul5model_16/conv3d_transpose_67/strided_slice_1:output:0+model_16/conv3d_transpose_67/mul/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_67/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_67/mul_1Mul5model_16/conv3d_transpose_67/strided_slice_2:output:0-model_16/conv3d_transpose_67/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_67/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_16/conv3d_transpose_67/mul_2Mul5model_16/conv3d_transpose_67/strided_slice_3:output:0-model_16/conv3d_transpose_67/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_16/conv3d_transpose_67/stack/4Const*
_output_shapes
: *
dtype0*
value	B :В
"model_16/conv3d_transpose_67/stackPack3model_16/conv3d_transpose_67/strided_slice:output:0$model_16/conv3d_transpose_67/mul:z:0&model_16/conv3d_transpose_67/mul_1:z:0&model_16/conv3d_transpose_67/mul_2:z:0-model_16/conv3d_transpose_67/stack/4:output:0*
N*
T0*
_output_shapes
:Ю
<model_16/conv3d_transpose_67/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_16_conv3d_transpose_67_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0у
-model_16/conv3d_transpose_67/conv3d_transposeConv3DBackpropInputV2+model_16/conv3d_transpose_67/stack:output:0Dmodel_16/conv3d_transpose_67/conv3d_transpose/ReadVariableOp:value:0&model_16/conv3d_453/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
Ќ
3model_16/conv3d_transpose_67/BiasAdd/ReadVariableOpReadVariableOp<model_16_conv3d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0§
$model_16/conv3d_transpose_67/BiasAddBiasAdd6model_16/conv3d_transpose_67/conv3d_transpose:output:0;model_16/conv3d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_16/conv3d_454/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_454_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_16/conv3d_454/Conv3DConv3D-model_16/conv3d_transpose_67/BiasAdd:output:01model_16/conv3d_454/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_454/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_454_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_16/conv3d_454/BiasAddBiasAdd#model_16/conv3d_454/Conv3D:output:02model_16/conv3d_454/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_16/conv3d_454/ReluRelu$model_16/conv3d_454/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe
#model_16/concatenate_67/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_16/concatenate_67/concatConcatV2&model_16/conv3d_433/Relu:activations:0&model_16/conv3d_454/Relu:activations:0,model_16/concatenate_67/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_16/conv3d_455/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_455_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0
model_16/conv3d_455/Conv3DConv3D'model_16/concatenate_67/concat:output:01model_16/conv3d_455/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_455/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_455_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_16/conv3d_455/BiasAddBiasAdd#model_16/conv3d_455/Conv3D:output:02model_16/conv3d_455/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_16/conv3d_455/ReluRelu$model_16/conv3d_455/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_16/conv3d_456/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_456_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_16/conv3d_456/Conv3DConv3D&model_16/conv3d_455/Relu:activations:01model_16/conv3d_456/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_456/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_456_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_16/conv3d_456/BiasAddBiasAdd#model_16/conv3d_456/Conv3D:output:02model_16/conv3d_456/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_16/conv3d_456/ReluRelu$model_16/conv3d_456/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_16/conv3d_457/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_457_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_16/conv3d_457/Conv3DConv3D&model_16/conv3d_456/Relu:activations:01model_16/conv3d_457/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_457/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_457_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_16/conv3d_457/BiasAddBiasAdd#model_16/conv3d_457/Conv3D:output:02model_16/conv3d_457/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_16/conv3d_457/ReluRelu$model_16/conv3d_457/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
*model_16/cropping3d_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
,model_16/cropping3d_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
,model_16/cropping3d_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               
$model_16/cropping3d_16/strided_sliceStridedSlice&model_16/conv3d_457/Relu:activations:03model_16/cropping3d_16/strided_slice/stack:output:05model_16/cropping3d_16/strided_slice/stack_1:output:05model_16/cropping3d_16/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_maskЈ
)model_16/conv3d_458/Conv3D/ReadVariableOpReadVariableOp2model_16_conv3d_458_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_16/conv3d_458/Conv3DConv3D-model_16/cropping3d_16/strided_slice:output:01model_16/conv3d_458/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_16/conv3d_458/BiasAdd/ReadVariableOpReadVariableOp3model_16_conv3d_458_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_16/conv3d_458/BiasAddBiasAdd#model_16/conv3d_458/Conv3D:output:02model_16/conv3d_458/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentity$model_16/conv3d_458/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ§
NoOpNoOp+^model_16/conv3d_432/BiasAdd/ReadVariableOp*^model_16/conv3d_432/Conv3D/ReadVariableOp+^model_16/conv3d_433/BiasAdd/ReadVariableOp*^model_16/conv3d_433/Conv3D/ReadVariableOp+^model_16/conv3d_434/BiasAdd/ReadVariableOp*^model_16/conv3d_434/Conv3D/ReadVariableOp+^model_16/conv3d_435/BiasAdd/ReadVariableOp*^model_16/conv3d_435/Conv3D/ReadVariableOp+^model_16/conv3d_436/BiasAdd/ReadVariableOp*^model_16/conv3d_436/Conv3D/ReadVariableOp+^model_16/conv3d_437/BiasAdd/ReadVariableOp*^model_16/conv3d_437/Conv3D/ReadVariableOp+^model_16/conv3d_438/BiasAdd/ReadVariableOp*^model_16/conv3d_438/Conv3D/ReadVariableOp+^model_16/conv3d_439/BiasAdd/ReadVariableOp*^model_16/conv3d_439/Conv3D/ReadVariableOp+^model_16/conv3d_440/BiasAdd/ReadVariableOp*^model_16/conv3d_440/Conv3D/ReadVariableOp+^model_16/conv3d_441/BiasAdd/ReadVariableOp*^model_16/conv3d_441/Conv3D/ReadVariableOp+^model_16/conv3d_442/BiasAdd/ReadVariableOp*^model_16/conv3d_442/Conv3D/ReadVariableOp+^model_16/conv3d_443/BiasAdd/ReadVariableOp*^model_16/conv3d_443/Conv3D/ReadVariableOp+^model_16/conv3d_444/BiasAdd/ReadVariableOp*^model_16/conv3d_444/Conv3D/ReadVariableOp+^model_16/conv3d_445/BiasAdd/ReadVariableOp*^model_16/conv3d_445/Conv3D/ReadVariableOp+^model_16/conv3d_446/BiasAdd/ReadVariableOp*^model_16/conv3d_446/Conv3D/ReadVariableOp+^model_16/conv3d_447/BiasAdd/ReadVariableOp*^model_16/conv3d_447/Conv3D/ReadVariableOp+^model_16/conv3d_448/BiasAdd/ReadVariableOp*^model_16/conv3d_448/Conv3D/ReadVariableOp+^model_16/conv3d_449/BiasAdd/ReadVariableOp*^model_16/conv3d_449/Conv3D/ReadVariableOp+^model_16/conv3d_450/BiasAdd/ReadVariableOp*^model_16/conv3d_450/Conv3D/ReadVariableOp+^model_16/conv3d_451/BiasAdd/ReadVariableOp*^model_16/conv3d_451/Conv3D/ReadVariableOp+^model_16/conv3d_452/BiasAdd/ReadVariableOp*^model_16/conv3d_452/Conv3D/ReadVariableOp+^model_16/conv3d_453/BiasAdd/ReadVariableOp*^model_16/conv3d_453/Conv3D/ReadVariableOp+^model_16/conv3d_454/BiasAdd/ReadVariableOp*^model_16/conv3d_454/Conv3D/ReadVariableOp+^model_16/conv3d_455/BiasAdd/ReadVariableOp*^model_16/conv3d_455/Conv3D/ReadVariableOp+^model_16/conv3d_456/BiasAdd/ReadVariableOp*^model_16/conv3d_456/Conv3D/ReadVariableOp+^model_16/conv3d_457/BiasAdd/ReadVariableOp*^model_16/conv3d_457/Conv3D/ReadVariableOp+^model_16/conv3d_458/BiasAdd/ReadVariableOp*^model_16/conv3d_458/Conv3D/ReadVariableOp4^model_16/conv3d_transpose_64/BiasAdd/ReadVariableOp=^model_16/conv3d_transpose_64/conv3d_transpose/ReadVariableOp4^model_16/conv3d_transpose_65/BiasAdd/ReadVariableOp=^model_16/conv3d_transpose_65/conv3d_transpose/ReadVariableOp4^model_16/conv3d_transpose_66/BiasAdd/ReadVariableOp=^model_16/conv3d_transpose_66/conv3d_transpose/ReadVariableOp4^model_16/conv3d_transpose_67/BiasAdd/ReadVariableOp=^model_16/conv3d_transpose_67/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*model_16/conv3d_432/BiasAdd/ReadVariableOp*model_16/conv3d_432/BiasAdd/ReadVariableOp2V
)model_16/conv3d_432/Conv3D/ReadVariableOp)model_16/conv3d_432/Conv3D/ReadVariableOp2X
*model_16/conv3d_433/BiasAdd/ReadVariableOp*model_16/conv3d_433/BiasAdd/ReadVariableOp2V
)model_16/conv3d_433/Conv3D/ReadVariableOp)model_16/conv3d_433/Conv3D/ReadVariableOp2X
*model_16/conv3d_434/BiasAdd/ReadVariableOp*model_16/conv3d_434/BiasAdd/ReadVariableOp2V
)model_16/conv3d_434/Conv3D/ReadVariableOp)model_16/conv3d_434/Conv3D/ReadVariableOp2X
*model_16/conv3d_435/BiasAdd/ReadVariableOp*model_16/conv3d_435/BiasAdd/ReadVariableOp2V
)model_16/conv3d_435/Conv3D/ReadVariableOp)model_16/conv3d_435/Conv3D/ReadVariableOp2X
*model_16/conv3d_436/BiasAdd/ReadVariableOp*model_16/conv3d_436/BiasAdd/ReadVariableOp2V
)model_16/conv3d_436/Conv3D/ReadVariableOp)model_16/conv3d_436/Conv3D/ReadVariableOp2X
*model_16/conv3d_437/BiasAdd/ReadVariableOp*model_16/conv3d_437/BiasAdd/ReadVariableOp2V
)model_16/conv3d_437/Conv3D/ReadVariableOp)model_16/conv3d_437/Conv3D/ReadVariableOp2X
*model_16/conv3d_438/BiasAdd/ReadVariableOp*model_16/conv3d_438/BiasAdd/ReadVariableOp2V
)model_16/conv3d_438/Conv3D/ReadVariableOp)model_16/conv3d_438/Conv3D/ReadVariableOp2X
*model_16/conv3d_439/BiasAdd/ReadVariableOp*model_16/conv3d_439/BiasAdd/ReadVariableOp2V
)model_16/conv3d_439/Conv3D/ReadVariableOp)model_16/conv3d_439/Conv3D/ReadVariableOp2X
*model_16/conv3d_440/BiasAdd/ReadVariableOp*model_16/conv3d_440/BiasAdd/ReadVariableOp2V
)model_16/conv3d_440/Conv3D/ReadVariableOp)model_16/conv3d_440/Conv3D/ReadVariableOp2X
*model_16/conv3d_441/BiasAdd/ReadVariableOp*model_16/conv3d_441/BiasAdd/ReadVariableOp2V
)model_16/conv3d_441/Conv3D/ReadVariableOp)model_16/conv3d_441/Conv3D/ReadVariableOp2X
*model_16/conv3d_442/BiasAdd/ReadVariableOp*model_16/conv3d_442/BiasAdd/ReadVariableOp2V
)model_16/conv3d_442/Conv3D/ReadVariableOp)model_16/conv3d_442/Conv3D/ReadVariableOp2X
*model_16/conv3d_443/BiasAdd/ReadVariableOp*model_16/conv3d_443/BiasAdd/ReadVariableOp2V
)model_16/conv3d_443/Conv3D/ReadVariableOp)model_16/conv3d_443/Conv3D/ReadVariableOp2X
*model_16/conv3d_444/BiasAdd/ReadVariableOp*model_16/conv3d_444/BiasAdd/ReadVariableOp2V
)model_16/conv3d_444/Conv3D/ReadVariableOp)model_16/conv3d_444/Conv3D/ReadVariableOp2X
*model_16/conv3d_445/BiasAdd/ReadVariableOp*model_16/conv3d_445/BiasAdd/ReadVariableOp2V
)model_16/conv3d_445/Conv3D/ReadVariableOp)model_16/conv3d_445/Conv3D/ReadVariableOp2X
*model_16/conv3d_446/BiasAdd/ReadVariableOp*model_16/conv3d_446/BiasAdd/ReadVariableOp2V
)model_16/conv3d_446/Conv3D/ReadVariableOp)model_16/conv3d_446/Conv3D/ReadVariableOp2X
*model_16/conv3d_447/BiasAdd/ReadVariableOp*model_16/conv3d_447/BiasAdd/ReadVariableOp2V
)model_16/conv3d_447/Conv3D/ReadVariableOp)model_16/conv3d_447/Conv3D/ReadVariableOp2X
*model_16/conv3d_448/BiasAdd/ReadVariableOp*model_16/conv3d_448/BiasAdd/ReadVariableOp2V
)model_16/conv3d_448/Conv3D/ReadVariableOp)model_16/conv3d_448/Conv3D/ReadVariableOp2X
*model_16/conv3d_449/BiasAdd/ReadVariableOp*model_16/conv3d_449/BiasAdd/ReadVariableOp2V
)model_16/conv3d_449/Conv3D/ReadVariableOp)model_16/conv3d_449/Conv3D/ReadVariableOp2X
*model_16/conv3d_450/BiasAdd/ReadVariableOp*model_16/conv3d_450/BiasAdd/ReadVariableOp2V
)model_16/conv3d_450/Conv3D/ReadVariableOp)model_16/conv3d_450/Conv3D/ReadVariableOp2X
*model_16/conv3d_451/BiasAdd/ReadVariableOp*model_16/conv3d_451/BiasAdd/ReadVariableOp2V
)model_16/conv3d_451/Conv3D/ReadVariableOp)model_16/conv3d_451/Conv3D/ReadVariableOp2X
*model_16/conv3d_452/BiasAdd/ReadVariableOp*model_16/conv3d_452/BiasAdd/ReadVariableOp2V
)model_16/conv3d_452/Conv3D/ReadVariableOp)model_16/conv3d_452/Conv3D/ReadVariableOp2X
*model_16/conv3d_453/BiasAdd/ReadVariableOp*model_16/conv3d_453/BiasAdd/ReadVariableOp2V
)model_16/conv3d_453/Conv3D/ReadVariableOp)model_16/conv3d_453/Conv3D/ReadVariableOp2X
*model_16/conv3d_454/BiasAdd/ReadVariableOp*model_16/conv3d_454/BiasAdd/ReadVariableOp2V
)model_16/conv3d_454/Conv3D/ReadVariableOp)model_16/conv3d_454/Conv3D/ReadVariableOp2X
*model_16/conv3d_455/BiasAdd/ReadVariableOp*model_16/conv3d_455/BiasAdd/ReadVariableOp2V
)model_16/conv3d_455/Conv3D/ReadVariableOp)model_16/conv3d_455/Conv3D/ReadVariableOp2X
*model_16/conv3d_456/BiasAdd/ReadVariableOp*model_16/conv3d_456/BiasAdd/ReadVariableOp2V
)model_16/conv3d_456/Conv3D/ReadVariableOp)model_16/conv3d_456/Conv3D/ReadVariableOp2X
*model_16/conv3d_457/BiasAdd/ReadVariableOp*model_16/conv3d_457/BiasAdd/ReadVariableOp2V
)model_16/conv3d_457/Conv3D/ReadVariableOp)model_16/conv3d_457/Conv3D/ReadVariableOp2X
*model_16/conv3d_458/BiasAdd/ReadVariableOp*model_16/conv3d_458/BiasAdd/ReadVariableOp2V
)model_16/conv3d_458/Conv3D/ReadVariableOp)model_16/conv3d_458/Conv3D/ReadVariableOp2j
3model_16/conv3d_transpose_64/BiasAdd/ReadVariableOp3model_16/conv3d_transpose_64/BiasAdd/ReadVariableOp2|
<model_16/conv3d_transpose_64/conv3d_transpose/ReadVariableOp<model_16/conv3d_transpose_64/conv3d_transpose/ReadVariableOp2j
3model_16/conv3d_transpose_65/BiasAdd/ReadVariableOp3model_16/conv3d_transpose_65/BiasAdd/ReadVariableOp2|
<model_16/conv3d_transpose_65/conv3d_transpose/ReadVariableOp<model_16/conv3d_transpose_65/conv3d_transpose/ReadVariableOp2j
3model_16/conv3d_transpose_66/BiasAdd/ReadVariableOp3model_16/conv3d_transpose_66/BiasAdd/ReadVariableOp2|
<model_16/conv3d_transpose_66/conv3d_transpose/ReadVariableOp<model_16/conv3d_transpose_66/conv3d_transpose/ReadVariableOp2j
3model_16/conv3d_transpose_67/BiasAdd/ReadVariableOp3model_16/conv3d_transpose_67/BiasAdd/ReadVariableOp2|
<model_16/conv3d_transpose_67/conv3d_transpose/ReadVariableOp<model_16/conv3d_transpose_67/conv3d_transpose/ReadVariableOp:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_17
г

F__inference_conv3d_438_layer_call_and_return_conditional_losses_512828

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
к
h
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_515837

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
F__inference_conv3d_437_layer_call_and_return_conditional_losses_515777

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
+__inference_conv3d_440_layer_call_fn_515846

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
F__inference_conv3d_440_layer_call_and_return_conditional_losses_512863
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
Й 
Џ
)__inference_model_16_layer_call_fn_513359
input_17%
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
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_16_layer_call_and_return_conditional_losses_513232
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
input_17
ё
M
1__inference_max_pooling3d_66_layer_call_fn_515782

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
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_512484
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
J__inference_concatenate_66_layer_call_and_return_conditional_losses_516234
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
г

F__inference_conv3d_438_layer_call_and_return_conditional_losses_515807

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
ба
ж
D__inference_model_16_layer_call_and_return_conditional_losses_514382
input_17/
conv3d_432_514217:
conv3d_432_514219:/
conv3d_433_514222:
conv3d_433_514224:/
conv3d_434_514228: 
conv3d_434_514230: /
conv3d_435_514233:  
conv3d_435_514235: /
conv3d_436_514239: @
conv3d_436_514241:@/
conv3d_437_514244:@@
conv3d_437_514246:@0
conv3d_438_514250:@ 
conv3d_438_514252:	1
conv3d_439_514255: 
conv3d_439_514257:	1
conv3d_440_514261: 
conv3d_440_514263:	1
conv3d_441_514266: 
conv3d_441_514268:	:
conv3d_transpose_64_514271:)
conv3d_transpose_64_514273:	1
conv3d_442_514276: 
conv3d_442_514278:	1
conv3d_443_514282: 
conv3d_443_514284:	1
conv3d_444_514287: 
conv3d_444_514289:	1
conv3d_445_514292: 
conv3d_445_514294:	9
conv3d_transpose_65_514297:@(
conv3d_transpose_65_514299:@/
conv3d_446_514302:@@
conv3d_446_514304:@0
conv3d_447_514308:@
conv3d_447_514310:@/
conv3d_448_514313:@@
conv3d_448_514315:@/
conv3d_449_514318:@@
conv3d_449_514320:@8
conv3d_transpose_66_514323: @(
conv3d_transpose_66_514325: /
conv3d_450_514328:  
conv3d_450_514330: /
conv3d_451_514334:@ 
conv3d_451_514336: /
conv3d_452_514339:  
conv3d_452_514341: /
conv3d_453_514344:  
conv3d_453_514346: 8
conv3d_transpose_67_514349: (
conv3d_transpose_67_514351:/
conv3d_454_514354:
conv3d_454_514356:/
conv3d_455_514360: 
conv3d_455_514362:/
conv3d_456_514365:
conv3d_456_514367:/
conv3d_457_514370:
conv3d_457_514372:/
conv3d_458_514376:
conv3d_458_514378:
identityЂ"conv3d_432/StatefulPartitionedCallЂ"conv3d_433/StatefulPartitionedCallЂ"conv3d_434/StatefulPartitionedCallЂ"conv3d_435/StatefulPartitionedCallЂ"conv3d_436/StatefulPartitionedCallЂ"conv3d_437/StatefulPartitionedCallЂ"conv3d_438/StatefulPartitionedCallЂ"conv3d_439/StatefulPartitionedCallЂ"conv3d_440/StatefulPartitionedCallЂ"conv3d_441/StatefulPartitionedCallЂ"conv3d_442/StatefulPartitionedCallЂ"conv3d_443/StatefulPartitionedCallЂ"conv3d_444/StatefulPartitionedCallЂ"conv3d_445/StatefulPartitionedCallЂ"conv3d_446/StatefulPartitionedCallЂ"conv3d_447/StatefulPartitionedCallЂ"conv3d_448/StatefulPartitionedCallЂ"conv3d_449/StatefulPartitionedCallЂ"conv3d_450/StatefulPartitionedCallЂ"conv3d_451/StatefulPartitionedCallЂ"conv3d_452/StatefulPartitionedCallЂ"conv3d_453/StatefulPartitionedCallЂ"conv3d_454/StatefulPartitionedCallЂ"conv3d_455/StatefulPartitionedCallЂ"conv3d_456/StatefulPartitionedCallЂ"conv3d_457/StatefulPartitionedCallЂ"conv3d_458/StatefulPartitionedCallЂ+conv3d_transpose_64/StatefulPartitionedCallЂ+conv3d_transpose_65/StatefulPartitionedCallЂ+conv3d_transpose_66/StatefulPartitionedCallЂ+conv3d_transpose_67/StatefulPartitionedCallі
!zero_padding3d_16/PartitionedCallPartitionedCallinput_17*
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
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_512448Ц
"conv3d_432/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_16/PartitionedCall:output:0conv3d_432_514217conv3d_432_514219*
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
F__inference_conv3d_432_layer_call_and_return_conditional_losses_512723Ч
"conv3d_433/StatefulPartitionedCallStatefulPartitionedCall+conv3d_432/StatefulPartitionedCall:output:0conv3d_433_514222conv3d_433_514224*
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
F__inference_conv3d_433_layer_call_and_return_conditional_losses_512740
 max_pooling3d_64/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_512460Х
"conv3d_434/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_64/PartitionedCall:output:0conv3d_434_514228conv3d_434_514230*
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
F__inference_conv3d_434_layer_call_and_return_conditional_losses_512758Ч
"conv3d_435/StatefulPartitionedCallStatefulPartitionedCall+conv3d_434/StatefulPartitionedCall:output:0conv3d_435_514233conv3d_435_514235*
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
F__inference_conv3d_435_layer_call_and_return_conditional_losses_512775
 max_pooling3d_65/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_512472Х
"conv3d_436/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_65/PartitionedCall:output:0conv3d_436_514239conv3d_436_514241*
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
F__inference_conv3d_436_layer_call_and_return_conditional_losses_512793Ч
"conv3d_437/StatefulPartitionedCallStatefulPartitionedCall+conv3d_436/StatefulPartitionedCall:output:0conv3d_437_514244conv3d_437_514246*
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
F__inference_conv3d_437_layer_call_and_return_conditional_losses_512810
 max_pooling3d_66/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_512484Ц
"conv3d_438/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_66/PartitionedCall:output:0conv3d_438_514250conv3d_438_514252*
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
F__inference_conv3d_438_layer_call_and_return_conditional_losses_512828Ш
"conv3d_439/StatefulPartitionedCallStatefulPartitionedCall+conv3d_438/StatefulPartitionedCall:output:0conv3d_439_514255conv3d_439_514257*
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
F__inference_conv3d_439_layer_call_and_return_conditional_losses_512845
 max_pooling3d_67/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_512496Ц
"conv3d_440/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_67/PartitionedCall:output:0conv3d_440_514261conv3d_440_514263*
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
F__inference_conv3d_440_layer_call_and_return_conditional_losses_512863Ш
"conv3d_441/StatefulPartitionedCallStatefulPartitionedCall+conv3d_440/StatefulPartitionedCall:output:0conv3d_441_514266conv3d_441_514268*
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
F__inference_conv3d_441_layer_call_and_return_conditional_losses_512880ь
+conv3d_transpose_64/StatefulPartitionedCallStatefulPartitionedCall+conv3d_441/StatefulPartitionedCall:output:0conv3d_transpose_64_514271conv3d_transpose_64_514273*
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
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_512544б
"conv3d_442/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_64/StatefulPartitionedCall:output:0conv3d_442_514276conv3d_442_514278*
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
F__inference_conv3d_442_layer_call_and_return_conditional_losses_512902Т
concatenate_64/PartitionedCallPartitionedCall+conv3d_439/StatefulPartitionedCall:output:0+conv3d_442/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_64_layer_call_and_return_conditional_losses_512915Ф
"conv3d_443/StatefulPartitionedCallStatefulPartitionedCall'concatenate_64/PartitionedCall:output:0conv3d_443_514282conv3d_443_514284*
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
F__inference_conv3d_443_layer_call_and_return_conditional_losses_512928Ш
"conv3d_444/StatefulPartitionedCallStatefulPartitionedCall+conv3d_443/StatefulPartitionedCall:output:0conv3d_444_514287conv3d_444_514289*
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
F__inference_conv3d_444_layer_call_and_return_conditional_losses_512945Ш
"conv3d_445/StatefulPartitionedCallStatefulPartitionedCall+conv3d_444/StatefulPartitionedCall:output:0conv3d_445_514292conv3d_445_514294*
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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_512962ы
+conv3d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall+conv3d_445/StatefulPartitionedCall:output:0conv3d_transpose_65_514297conv3d_transpose_65_514299*
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
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_512590а
"conv3d_446/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_65/StatefulPartitionedCall:output:0conv3d_446_514302conv3d_446_514304*
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
F__inference_conv3d_446_layer_call_and_return_conditional_losses_512984Т
concatenate_65/PartitionedCallPartitionedCall+conv3d_437/StatefulPartitionedCall:output:0+conv3d_446/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_65_layer_call_and_return_conditional_losses_512997У
"conv3d_447/StatefulPartitionedCallStatefulPartitionedCall'concatenate_65/PartitionedCall:output:0conv3d_447_514308conv3d_447_514310*
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
F__inference_conv3d_447_layer_call_and_return_conditional_losses_513010Ч
"conv3d_448/StatefulPartitionedCallStatefulPartitionedCall+conv3d_447/StatefulPartitionedCall:output:0conv3d_448_514313conv3d_448_514315*
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
F__inference_conv3d_448_layer_call_and_return_conditional_losses_513027Ч
"conv3d_449/StatefulPartitionedCallStatefulPartitionedCall+conv3d_448/StatefulPartitionedCall:output:0conv3d_449_514318conv3d_449_514320*
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
F__inference_conv3d_449_layer_call_and_return_conditional_losses_513044ы
+conv3d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall+conv3d_449/StatefulPartitionedCall:output:0conv3d_transpose_66_514323conv3d_transpose_66_514325*
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
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_512636а
"conv3d_450/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_66/StatefulPartitionedCall:output:0conv3d_450_514328conv3d_450_514330*
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
F__inference_conv3d_450_layer_call_and_return_conditional_losses_513066С
concatenate_66/PartitionedCallPartitionedCall+conv3d_435/StatefulPartitionedCall:output:0+conv3d_450/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_66_layer_call_and_return_conditional_losses_513079У
"conv3d_451/StatefulPartitionedCallStatefulPartitionedCall'concatenate_66/PartitionedCall:output:0conv3d_451_514334conv3d_451_514336*
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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_513092Ч
"conv3d_452/StatefulPartitionedCallStatefulPartitionedCall+conv3d_451/StatefulPartitionedCall:output:0conv3d_452_514339conv3d_452_514341*
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
F__inference_conv3d_452_layer_call_and_return_conditional_losses_513109Ч
"conv3d_453/StatefulPartitionedCallStatefulPartitionedCall+conv3d_452/StatefulPartitionedCall:output:0conv3d_453_514344conv3d_453_514346*
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
F__inference_conv3d_453_layer_call_and_return_conditional_losses_513126ы
+conv3d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall+conv3d_453/StatefulPartitionedCall:output:0conv3d_transpose_67_514349conv3d_transpose_67_514351*
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
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_512682а
"conv3d_454/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_67/StatefulPartitionedCall:output:0conv3d_454_514354conv3d_454_514356*
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
F__inference_conv3d_454_layer_call_and_return_conditional_losses_513148С
concatenate_67/PartitionedCallPartitionedCall+conv3d_433/StatefulPartitionedCall:output:0+conv3d_454/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_67_layer_call_and_return_conditional_losses_513161У
"conv3d_455/StatefulPartitionedCallStatefulPartitionedCall'concatenate_67/PartitionedCall:output:0conv3d_455_514360conv3d_455_514362*
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
F__inference_conv3d_455_layer_call_and_return_conditional_losses_513174Ч
"conv3d_456/StatefulPartitionedCallStatefulPartitionedCall+conv3d_455/StatefulPartitionedCall:output:0conv3d_456_514365conv3d_456_514367*
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
F__inference_conv3d_456_layer_call_and_return_conditional_losses_513191Ч
"conv3d_457/StatefulPartitionedCallStatefulPartitionedCall+conv3d_456/StatefulPartitionedCall:output:0conv3d_457_514370conv3d_457_514372*
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
F__inference_conv3d_457_layer_call_and_return_conditional_losses_513208
cropping3d_16/PartitionedCallPartitionedCall+conv3d_457/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_512701Т
"conv3d_458/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_16/PartitionedCall:output:0conv3d_458_514376conv3d_458_514378*
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
F__inference_conv3d_458_layer_call_and_return_conditional_losses_513225Ё
IdentityIdentity+conv3d_458/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_432/StatefulPartitionedCall#^conv3d_433/StatefulPartitionedCall#^conv3d_434/StatefulPartitionedCall#^conv3d_435/StatefulPartitionedCall#^conv3d_436/StatefulPartitionedCall#^conv3d_437/StatefulPartitionedCall#^conv3d_438/StatefulPartitionedCall#^conv3d_439/StatefulPartitionedCall#^conv3d_440/StatefulPartitionedCall#^conv3d_441/StatefulPartitionedCall#^conv3d_442/StatefulPartitionedCall#^conv3d_443/StatefulPartitionedCall#^conv3d_444/StatefulPartitionedCall#^conv3d_445/StatefulPartitionedCall#^conv3d_446/StatefulPartitionedCall#^conv3d_447/StatefulPartitionedCall#^conv3d_448/StatefulPartitionedCall#^conv3d_449/StatefulPartitionedCall#^conv3d_450/StatefulPartitionedCall#^conv3d_451/StatefulPartitionedCall#^conv3d_452/StatefulPartitionedCall#^conv3d_453/StatefulPartitionedCall#^conv3d_454/StatefulPartitionedCall#^conv3d_455/StatefulPartitionedCall#^conv3d_456/StatefulPartitionedCall#^conv3d_457/StatefulPartitionedCall#^conv3d_458/StatefulPartitionedCall,^conv3d_transpose_64/StatefulPartitionedCall,^conv3d_transpose_65/StatefulPartitionedCall,^conv3d_transpose_66/StatefulPartitionedCall,^conv3d_transpose_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_432/StatefulPartitionedCall"conv3d_432/StatefulPartitionedCall2H
"conv3d_433/StatefulPartitionedCall"conv3d_433/StatefulPartitionedCall2H
"conv3d_434/StatefulPartitionedCall"conv3d_434/StatefulPartitionedCall2H
"conv3d_435/StatefulPartitionedCall"conv3d_435/StatefulPartitionedCall2H
"conv3d_436/StatefulPartitionedCall"conv3d_436/StatefulPartitionedCall2H
"conv3d_437/StatefulPartitionedCall"conv3d_437/StatefulPartitionedCall2H
"conv3d_438/StatefulPartitionedCall"conv3d_438/StatefulPartitionedCall2H
"conv3d_439/StatefulPartitionedCall"conv3d_439/StatefulPartitionedCall2H
"conv3d_440/StatefulPartitionedCall"conv3d_440/StatefulPartitionedCall2H
"conv3d_441/StatefulPartitionedCall"conv3d_441/StatefulPartitionedCall2H
"conv3d_442/StatefulPartitionedCall"conv3d_442/StatefulPartitionedCall2H
"conv3d_443/StatefulPartitionedCall"conv3d_443/StatefulPartitionedCall2H
"conv3d_444/StatefulPartitionedCall"conv3d_444/StatefulPartitionedCall2H
"conv3d_445/StatefulPartitionedCall"conv3d_445/StatefulPartitionedCall2H
"conv3d_446/StatefulPartitionedCall"conv3d_446/StatefulPartitionedCall2H
"conv3d_447/StatefulPartitionedCall"conv3d_447/StatefulPartitionedCall2H
"conv3d_448/StatefulPartitionedCall"conv3d_448/StatefulPartitionedCall2H
"conv3d_449/StatefulPartitionedCall"conv3d_449/StatefulPartitionedCall2H
"conv3d_450/StatefulPartitionedCall"conv3d_450/StatefulPartitionedCall2H
"conv3d_451/StatefulPartitionedCall"conv3d_451/StatefulPartitionedCall2H
"conv3d_452/StatefulPartitionedCall"conv3d_452/StatefulPartitionedCall2H
"conv3d_453/StatefulPartitionedCall"conv3d_453/StatefulPartitionedCall2H
"conv3d_454/StatefulPartitionedCall"conv3d_454/StatefulPartitionedCall2H
"conv3d_455/StatefulPartitionedCall"conv3d_455/StatefulPartitionedCall2H
"conv3d_456/StatefulPartitionedCall"conv3d_456/StatefulPartitionedCall2H
"conv3d_457/StatefulPartitionedCall"conv3d_457/StatefulPartitionedCall2H
"conv3d_458/StatefulPartitionedCall"conv3d_458/StatefulPartitionedCall2Z
+conv3d_transpose_64/StatefulPartitionedCall+conv3d_transpose_64/StatefulPartitionedCall2Z
+conv3d_transpose_65/StatefulPartitionedCall+conv3d_transpose_65/StatefulPartitionedCall2Z
+conv3d_transpose_66/StatefulPartitionedCall+conv3d_transpose_66/StatefulPartitionedCall2Z
+conv3d_transpose_67/StatefulPartitionedCall+conv3d_transpose_67/StatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_17
Ы

F__inference_conv3d_453_layer_call_and_return_conditional_losses_513126

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
к
h
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_515687

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
з

F__inference_conv3d_441_layer_call_and_return_conditional_losses_515877

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
+__inference_conv3d_448_layer_call_fn_516126

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
F__inference_conv3d_448_layer_call_and_return_conditional_losses_513027
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
Ы

F__inference_conv3d_446_layer_call_and_return_conditional_losses_512984

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
F__inference_conv3d_446_layer_call_and_return_conditional_losses_516084

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
Љи
е3
D__inference_model_16_layer_call_and_return_conditional_losses_515495

inputsG
)conv3d_432_conv3d_readvariableop_resource:8
*conv3d_432_biasadd_readvariableop_resource:G
)conv3d_433_conv3d_readvariableop_resource:8
*conv3d_433_biasadd_readvariableop_resource:G
)conv3d_434_conv3d_readvariableop_resource: 8
*conv3d_434_biasadd_readvariableop_resource: G
)conv3d_435_conv3d_readvariableop_resource:  8
*conv3d_435_biasadd_readvariableop_resource: G
)conv3d_436_conv3d_readvariableop_resource: @8
*conv3d_436_biasadd_readvariableop_resource:@G
)conv3d_437_conv3d_readvariableop_resource:@@8
*conv3d_437_biasadd_readvariableop_resource:@H
)conv3d_438_conv3d_readvariableop_resource:@9
*conv3d_438_biasadd_readvariableop_resource:	I
)conv3d_439_conv3d_readvariableop_resource:9
*conv3d_439_biasadd_readvariableop_resource:	I
)conv3d_440_conv3d_readvariableop_resource:9
*conv3d_440_biasadd_readvariableop_resource:	I
)conv3d_441_conv3d_readvariableop_resource:9
*conv3d_441_biasadd_readvariableop_resource:	\
<conv3d_transpose_64_conv3d_transpose_readvariableop_resource:B
3conv3d_transpose_64_biasadd_readvariableop_resource:	I
)conv3d_442_conv3d_readvariableop_resource:9
*conv3d_442_biasadd_readvariableop_resource:	I
)conv3d_443_conv3d_readvariableop_resource:9
*conv3d_443_biasadd_readvariableop_resource:	I
)conv3d_444_conv3d_readvariableop_resource:9
*conv3d_444_biasadd_readvariableop_resource:	I
)conv3d_445_conv3d_readvariableop_resource:9
*conv3d_445_biasadd_readvariableop_resource:	[
<conv3d_transpose_65_conv3d_transpose_readvariableop_resource:@A
3conv3d_transpose_65_biasadd_readvariableop_resource:@G
)conv3d_446_conv3d_readvariableop_resource:@@8
*conv3d_446_biasadd_readvariableop_resource:@H
)conv3d_447_conv3d_readvariableop_resource:@8
*conv3d_447_biasadd_readvariableop_resource:@G
)conv3d_448_conv3d_readvariableop_resource:@@8
*conv3d_448_biasadd_readvariableop_resource:@G
)conv3d_449_conv3d_readvariableop_resource:@@8
*conv3d_449_biasadd_readvariableop_resource:@Z
<conv3d_transpose_66_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_66_biasadd_readvariableop_resource: G
)conv3d_450_conv3d_readvariableop_resource:  8
*conv3d_450_biasadd_readvariableop_resource: G
)conv3d_451_conv3d_readvariableop_resource:@ 8
*conv3d_451_biasadd_readvariableop_resource: G
)conv3d_452_conv3d_readvariableop_resource:  8
*conv3d_452_biasadd_readvariableop_resource: G
)conv3d_453_conv3d_readvariableop_resource:  8
*conv3d_453_biasadd_readvariableop_resource: Z
<conv3d_transpose_67_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_67_biasadd_readvariableop_resource:G
)conv3d_454_conv3d_readvariableop_resource:8
*conv3d_454_biasadd_readvariableop_resource:G
)conv3d_455_conv3d_readvariableop_resource: 8
*conv3d_455_biasadd_readvariableop_resource:G
)conv3d_456_conv3d_readvariableop_resource:8
*conv3d_456_biasadd_readvariableop_resource:G
)conv3d_457_conv3d_readvariableop_resource:8
*conv3d_457_biasadd_readvariableop_resource:G
)conv3d_458_conv3d_readvariableop_resource:8
*conv3d_458_biasadd_readvariableop_resource:
identityЂ!conv3d_432/BiasAdd/ReadVariableOpЂ conv3d_432/Conv3D/ReadVariableOpЂ!conv3d_433/BiasAdd/ReadVariableOpЂ conv3d_433/Conv3D/ReadVariableOpЂ!conv3d_434/BiasAdd/ReadVariableOpЂ conv3d_434/Conv3D/ReadVariableOpЂ!conv3d_435/BiasAdd/ReadVariableOpЂ conv3d_435/Conv3D/ReadVariableOpЂ!conv3d_436/BiasAdd/ReadVariableOpЂ conv3d_436/Conv3D/ReadVariableOpЂ!conv3d_437/BiasAdd/ReadVariableOpЂ conv3d_437/Conv3D/ReadVariableOpЂ!conv3d_438/BiasAdd/ReadVariableOpЂ conv3d_438/Conv3D/ReadVariableOpЂ!conv3d_439/BiasAdd/ReadVariableOpЂ conv3d_439/Conv3D/ReadVariableOpЂ!conv3d_440/BiasAdd/ReadVariableOpЂ conv3d_440/Conv3D/ReadVariableOpЂ!conv3d_441/BiasAdd/ReadVariableOpЂ conv3d_441/Conv3D/ReadVariableOpЂ!conv3d_442/BiasAdd/ReadVariableOpЂ conv3d_442/Conv3D/ReadVariableOpЂ!conv3d_443/BiasAdd/ReadVariableOpЂ conv3d_443/Conv3D/ReadVariableOpЂ!conv3d_444/BiasAdd/ReadVariableOpЂ conv3d_444/Conv3D/ReadVariableOpЂ!conv3d_445/BiasAdd/ReadVariableOpЂ conv3d_445/Conv3D/ReadVariableOpЂ!conv3d_446/BiasAdd/ReadVariableOpЂ conv3d_446/Conv3D/ReadVariableOpЂ!conv3d_447/BiasAdd/ReadVariableOpЂ conv3d_447/Conv3D/ReadVariableOpЂ!conv3d_448/BiasAdd/ReadVariableOpЂ conv3d_448/Conv3D/ReadVariableOpЂ!conv3d_449/BiasAdd/ReadVariableOpЂ conv3d_449/Conv3D/ReadVariableOpЂ!conv3d_450/BiasAdd/ReadVariableOpЂ conv3d_450/Conv3D/ReadVariableOpЂ!conv3d_451/BiasAdd/ReadVariableOpЂ conv3d_451/Conv3D/ReadVariableOpЂ!conv3d_452/BiasAdd/ReadVariableOpЂ conv3d_452/Conv3D/ReadVariableOpЂ!conv3d_453/BiasAdd/ReadVariableOpЂ conv3d_453/Conv3D/ReadVariableOpЂ!conv3d_454/BiasAdd/ReadVariableOpЂ conv3d_454/Conv3D/ReadVariableOpЂ!conv3d_455/BiasAdd/ReadVariableOpЂ conv3d_455/Conv3D/ReadVariableOpЂ!conv3d_456/BiasAdd/ReadVariableOpЂ conv3d_456/Conv3D/ReadVariableOpЂ!conv3d_457/BiasAdd/ReadVariableOpЂ conv3d_457/Conv3D/ReadVariableOpЂ!conv3d_458/BiasAdd/ReadVariableOpЂ conv3d_458/Conv3D/ReadVariableOpЂ*conv3d_transpose_64/BiasAdd/ReadVariableOpЂ3conv3d_transpose_64/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_65/BiasAdd/ReadVariableOpЂ3conv3d_transpose_65/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_66/BiasAdd/ReadVariableOpЂ3conv3d_transpose_66/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_67/BiasAdd/ReadVariableOpЂ3conv3d_transpose_67/conv3d_transpose/ReadVariableOp
zero_padding3d_16/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_16/PadPadinputs'zero_padding3d_16/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_432/Conv3D/ReadVariableOpReadVariableOp)conv3d_432_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ч
conv3d_432/Conv3DConv3Dzero_padding3d_16/Pad:output:0(conv3d_432/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_432/BiasAdd/ReadVariableOpReadVariableOp*conv3d_432_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_432/BiasAddBiasAddconv3d_432/Conv3D:output:0)conv3d_432/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_432/ReluReluconv3d_432/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_433/Conv3D/ReadVariableOpReadVariableOp)conv3d_433_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_433/Conv3DConv3Dconv3d_432/Relu:activations:0(conv3d_433/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_433/BiasAdd/ReadVariableOpReadVariableOp*conv3d_433_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_433/BiasAddBiasAddconv3d_433/Conv3D:output:0)conv3d_433/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_433/ReluReluconv3d_433/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџн
max_pooling3d_64/MaxPool3D	MaxPool3Dconv3d_433/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_434/Conv3D/ReadVariableOpReadVariableOp)conv3d_434_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_434/Conv3DConv3D#max_pooling3d_64/MaxPool3D:output:0(conv3d_434/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_434/BiasAdd/ReadVariableOpReadVariableOp*conv3d_434_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_434/BiasAddBiasAddconv3d_434/Conv3D:output:0)conv3d_434/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_434/ReluReluconv3d_434/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_435/Conv3D/ReadVariableOpReadVariableOp)conv3d_435_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_435/Conv3DConv3Dconv3d_434/Relu:activations:0(conv3d_435/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_435/BiasAdd/ReadVariableOpReadVariableOp*conv3d_435_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_435/BiasAddBiasAddconv3d_435/Conv3D:output:0)conv3d_435/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_435/ReluReluconv3d_435/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ н
max_pooling3d_65/MaxPool3D	MaxPool3Dconv3d_435/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	

 conv3d_436/Conv3D/ReadVariableOpReadVariableOp)conv3d_436_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_436/Conv3DConv3D#max_pooling3d_65/MaxPool3D:output:0(conv3d_436/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_436/BiasAdd/ReadVariableOpReadVariableOp*conv3d_436_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_436/BiasAddBiasAddconv3d_436/Conv3D:output:0)conv3d_436/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_436/ReluReluconv3d_436/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_437/Conv3D/ReadVariableOpReadVariableOp)conv3d_437_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_437/Conv3DConv3Dconv3d_436/Relu:activations:0(conv3d_437/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_437/BiasAdd/ReadVariableOpReadVariableOp*conv3d_437_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_437/BiasAddBiasAddconv3d_437/Conv3D:output:0)conv3d_437/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_437/ReluReluconv3d_437/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@н
max_pooling3d_66/MaxPool3D	MaxPool3Dconv3d_437/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	

 conv3d_438/Conv3D/ReadVariableOpReadVariableOp)conv3d_438_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0э
conv3d_438/Conv3DConv3D#max_pooling3d_66/MaxPool3D:output:0(conv3d_438/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_438/BiasAdd/ReadVariableOpReadVariableOp*conv3d_438_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_438/BiasAddBiasAddconv3d_438/Conv3D:output:0)conv3d_438/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_438/ReluReluconv3d_438/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_439/Conv3D/ReadVariableOpReadVariableOp)conv3d_439_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_439/Conv3DConv3Dconv3d_438/Relu:activations:0(conv3d_439/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_439/BiasAdd/ReadVariableOpReadVariableOp*conv3d_439_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_439/BiasAddBiasAddconv3d_439/Conv3D:output:0)conv3d_439/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_439/ReluReluconv3d_439/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџо
max_pooling3d_67/MaxPool3D	MaxPool3Dconv3d_439/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_440/Conv3D/ReadVariableOpReadVariableOp)conv3d_440_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0э
conv3d_440/Conv3DConv3D#max_pooling3d_67/MaxPool3D:output:0(conv3d_440/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_440/BiasAdd/ReadVariableOpReadVariableOp*conv3d_440_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_440/BiasAddBiasAddconv3d_440/Conv3D:output:0)conv3d_440/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_440/ReluReluconv3d_440/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_441/Conv3D/ReadVariableOpReadVariableOp)conv3d_441_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_441/Conv3DConv3Dconv3d_440/Relu:activations:0(conv3d_441/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_441/BiasAdd/ReadVariableOpReadVariableOp*conv3d_441_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_441/BiasAddBiasAddconv3d_441/Conv3D:output:0)conv3d_441/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_441/ReluReluconv3d_441/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_64/ShapeShapeconv3d_441/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_64/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_64/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_64/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_64/strided_sliceStridedSlice"conv3d_transpose_64/Shape:output:00conv3d_transpose_64/strided_slice/stack:output:02conv3d_transpose_64/strided_slice/stack_1:output:02conv3d_transpose_64/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_64/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_64/strided_slice_1StridedSlice"conv3d_transpose_64/Shape:output:02conv3d_transpose_64/strided_slice_1/stack:output:04conv3d_transpose_64/strided_slice_1/stack_1:output:04conv3d_transpose_64/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_64/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_64/strided_slice_2StridedSlice"conv3d_transpose_64/Shape:output:02conv3d_transpose_64/strided_slice_2/stack:output:04conv3d_transpose_64/strided_slice_2/stack_1:output:04conv3d_transpose_64/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_64/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_64/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_64/strided_slice_3StridedSlice"conv3d_transpose_64/Shape:output:02conv3d_transpose_64/strided_slice_3/stack:output:04conv3d_transpose_64/strided_slice_3/stack_1:output:04conv3d_transpose_64/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_64/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_64/mulMul,conv3d_transpose_64/strided_slice_1:output:0"conv3d_transpose_64/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_64/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_64/addAddV2conv3d_transpose_64/mul:z:0"conv3d_transpose_64/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_64/mul_1Mul,conv3d_transpose_64/strided_slice_2:output:0$conv3d_transpose_64/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_64/add_1AddV2conv3d_transpose_64/mul_1:z:0$conv3d_transpose_64/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_64/mul_2Mul,conv3d_transpose_64/strided_slice_3:output:0$conv3d_transpose_64/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_64/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_64/add_2AddV2conv3d_transpose_64/mul_2:z:0$conv3d_transpose_64/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_64/stack/4Const*
_output_shapes
: *
dtype0*
value
B :ќ
conv3d_transpose_64/stackPack*conv3d_transpose_64/strided_slice:output:0conv3d_transpose_64/add:z:0conv3d_transpose_64/add_1:z:0conv3d_transpose_64/add_2:z:0$conv3d_transpose_64/stack/4:output:0*
N*
T0*
_output_shapes
:О
3conv3d_transpose_64/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_64_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0С
$conv3d_transpose_64/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_64/stack:output:0;conv3d_transpose_64/conv3d_transpose/ReadVariableOp:value:0conv3d_441/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	

*conv3d_transpose_64/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0у
conv3d_transpose_64/BiasAddBiasAdd-conv3d_transpose_64/conv3d_transpose:output:02conv3d_transpose_64/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_442/Conv3D/ReadVariableOpReadVariableOp)conv3d_442_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_442/Conv3DConv3D$conv3d_transpose_64/BiasAdd:output:0(conv3d_442/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_442/BiasAdd/ReadVariableOpReadVariableOp*conv3d_442_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_442/BiasAddBiasAddconv3d_442/Conv3D:output:0)conv3d_442/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_442/ReluReluconv3d_442/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_64/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_64/concatConcatV2conv3d_439/Relu:activations:0conv3d_442/Relu:activations:0#concatenate_64/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_443/Conv3D/ReadVariableOpReadVariableOp)conv3d_443_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ш
conv3d_443/Conv3DConv3Dconcatenate_64/concat:output:0(conv3d_443/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_443/BiasAdd/ReadVariableOpReadVariableOp*conv3d_443_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_443/BiasAddBiasAddconv3d_443/Conv3D:output:0)conv3d_443/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_443/ReluReluconv3d_443/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_444/Conv3D/ReadVariableOpReadVariableOp)conv3d_444_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_444/Conv3DConv3Dconv3d_443/Relu:activations:0(conv3d_444/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_444/BiasAdd/ReadVariableOpReadVariableOp*conv3d_444_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_444/BiasAddBiasAddconv3d_444/Conv3D:output:0)conv3d_444/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_444/ReluReluconv3d_444/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_445/Conv3D/ReadVariableOpReadVariableOp)conv3d_445_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_445/Conv3DConv3Dconv3d_444/Relu:activations:0(conv3d_445/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_445/BiasAdd/ReadVariableOpReadVariableOp*conv3d_445_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_445/BiasAddBiasAddconv3d_445/Conv3D:output:0)conv3d_445/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_445/ReluReluconv3d_445/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_65/ShapeShapeconv3d_445/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_65/strided_sliceStridedSlice"conv3d_transpose_65/Shape:output:00conv3d_transpose_65/strided_slice/stack:output:02conv3d_transpose_65/strided_slice/stack_1:output:02conv3d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_65/strided_slice_1StridedSlice"conv3d_transpose_65/Shape:output:02conv3d_transpose_65/strided_slice_1/stack:output:04conv3d_transpose_65/strided_slice_1/stack_1:output:04conv3d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_65/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_65/strided_slice_2StridedSlice"conv3d_transpose_65/Shape:output:02conv3d_transpose_65/strided_slice_2/stack:output:04conv3d_transpose_65/strided_slice_2/stack_1:output:04conv3d_transpose_65/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_65/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_65/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_65/strided_slice_3StridedSlice"conv3d_transpose_65/Shape:output:02conv3d_transpose_65/strided_slice_3/stack:output:04conv3d_transpose_65/strided_slice_3/stack_1:output:04conv3d_transpose_65/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_65/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_65/mulMul,conv3d_transpose_65/strided_slice_1:output:0"conv3d_transpose_65/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_65/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_65/mul_1Mul,conv3d_transpose_65/strided_slice_2:output:0$conv3d_transpose_65/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_65/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_65/mul_2Mul,conv3d_transpose_65/strided_slice_3:output:0$conv3d_transpose_65/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_65/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@ќ
conv3d_transpose_65/stackPack*conv3d_transpose_65/strided_slice:output:0conv3d_transpose_65/mul:z:0conv3d_transpose_65/mul_1:z:0conv3d_transpose_65/mul_2:z:0$conv3d_transpose_65/stack/4:output:0*
N*
T0*
_output_shapes
:Н
3conv3d_transpose_65/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_65_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0П
$conv3d_transpose_65/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_65/stack:output:0;conv3d_transpose_65/conv3d_transpose/ReadVariableOp:value:0conv3d_445/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*conv3d_transpose_65/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0т
conv3d_transpose_65/BiasAddBiasAdd-conv3d_transpose_65/conv3d_transpose:output:02conv3d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_446/Conv3D/ReadVariableOpReadVariableOp)conv3d_446_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0э
conv3d_446/Conv3DConv3D$conv3d_transpose_65/BiasAdd:output:0(conv3d_446/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_446/BiasAdd/ReadVariableOpReadVariableOp*conv3d_446_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_446/BiasAddBiasAddconv3d_446/Conv3D:output:0)conv3d_446/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_446/ReluReluconv3d_446/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@\
concatenate_65/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_65/concatConcatV2conv3d_437/Relu:activations:0conv3d_446/Relu:activations:0#concatenate_65/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_447/Conv3D/ReadVariableOpReadVariableOp)conv3d_447_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ч
conv3d_447/Conv3DConv3Dconcatenate_65/concat:output:0(conv3d_447/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_447/BiasAdd/ReadVariableOpReadVariableOp*conv3d_447_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_447/BiasAddBiasAddconv3d_447/Conv3D:output:0)conv3d_447/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_447/ReluReluconv3d_447/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_448/Conv3D/ReadVariableOpReadVariableOp)conv3d_448_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_448/Conv3DConv3Dconv3d_447/Relu:activations:0(conv3d_448/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_448/BiasAdd/ReadVariableOpReadVariableOp*conv3d_448_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_448/BiasAddBiasAddconv3d_448/Conv3D:output:0)conv3d_448/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_448/ReluReluconv3d_448/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_449/Conv3D/ReadVariableOpReadVariableOp)conv3d_449_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_449/Conv3DConv3Dconv3d_448/Relu:activations:0(conv3d_449/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_449/BiasAdd/ReadVariableOpReadVariableOp*conv3d_449_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_449/BiasAddBiasAddconv3d_449/Conv3D:output:0)conv3d_449/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_449/ReluReluconv3d_449/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@f
conv3d_transpose_66/ShapeShapeconv3d_449/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_66/strided_sliceStridedSlice"conv3d_transpose_66/Shape:output:00conv3d_transpose_66/strided_slice/stack:output:02conv3d_transpose_66/strided_slice/stack_1:output:02conv3d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_66/strided_slice_1StridedSlice"conv3d_transpose_66/Shape:output:02conv3d_transpose_66/strided_slice_1/stack:output:04conv3d_transpose_66/strided_slice_1/stack_1:output:04conv3d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_66/strided_slice_2StridedSlice"conv3d_transpose_66/Shape:output:02conv3d_transpose_66/strided_slice_2/stack:output:04conv3d_transpose_66/strided_slice_2/stack_1:output:04conv3d_transpose_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_66/strided_slice_3StridedSlice"conv3d_transpose_66/Shape:output:02conv3d_transpose_66/strided_slice_3/stack:output:04conv3d_transpose_66/strided_slice_3/stack_1:output:04conv3d_transpose_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_66/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_66/mulMul,conv3d_transpose_66/strided_slice_1:output:0"conv3d_transpose_66/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_66/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_66/mul_1Mul,conv3d_transpose_66/strided_slice_2:output:0$conv3d_transpose_66/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_66/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_66/mul_2Mul,conv3d_transpose_66/strided_slice_3:output:0$conv3d_transpose_66/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_66/stack/4Const*
_output_shapes
: *
dtype0*
value	B : ќ
conv3d_transpose_66/stackPack*conv3d_transpose_66/strided_slice:output:0conv3d_transpose_66/mul:z:0conv3d_transpose_66/mul_1:z:0conv3d_transpose_66/mul_2:z:0$conv3d_transpose_66/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_66/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_66_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0П
$conv3d_transpose_66/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_66/stack:output:0;conv3d_transpose_66/conv3d_transpose/ReadVariableOp:value:0conv3d_449/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*conv3d_transpose_66/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_66_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0т
conv3d_transpose_66/BiasAddBiasAdd-conv3d_transpose_66/conv3d_transpose:output:02conv3d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_450/Conv3D/ReadVariableOpReadVariableOp)conv3d_450_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0э
conv3d_450/Conv3DConv3D$conv3d_transpose_66/BiasAdd:output:0(conv3d_450/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_450/BiasAdd/ReadVariableOpReadVariableOp*conv3d_450_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_450/BiasAddBiasAddconv3d_450/Conv3D:output:0)conv3d_450/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_450/ReluReluconv3d_450/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ \
concatenate_66/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_66/concatConcatV2conv3d_435/Relu:activations:0conv3d_450/Relu:activations:0#concatenate_66/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_451/Conv3D/ReadVariableOpReadVariableOp)conv3d_451_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0ч
conv3d_451/Conv3DConv3Dconcatenate_66/concat:output:0(conv3d_451/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_451/BiasAdd/ReadVariableOpReadVariableOp*conv3d_451_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_451/BiasAddBiasAddconv3d_451/Conv3D:output:0)conv3d_451/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_451/ReluReluconv3d_451/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_452/Conv3D/ReadVariableOpReadVariableOp)conv3d_452_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_452/Conv3DConv3Dconv3d_451/Relu:activations:0(conv3d_452/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_452/BiasAdd/ReadVariableOpReadVariableOp*conv3d_452_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_452/BiasAddBiasAddconv3d_452/Conv3D:output:0)conv3d_452/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_452/ReluReluconv3d_452/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_453/Conv3D/ReadVariableOpReadVariableOp)conv3d_453_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_453/Conv3DConv3Dconv3d_452/Relu:activations:0(conv3d_453/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_453/BiasAdd/ReadVariableOpReadVariableOp*conv3d_453_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_453/BiasAddBiasAddconv3d_453/Conv3D:output:0)conv3d_453/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_453/ReluReluconv3d_453/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ f
conv3d_transpose_67/ShapeShapeconv3d_453/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_67/strided_sliceStridedSlice"conv3d_transpose_67/Shape:output:00conv3d_transpose_67/strided_slice/stack:output:02conv3d_transpose_67/strided_slice/stack_1:output:02conv3d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_67/strided_slice_1StridedSlice"conv3d_transpose_67/Shape:output:02conv3d_transpose_67/strided_slice_1/stack:output:04conv3d_transpose_67/strided_slice_1/stack_1:output:04conv3d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_67/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_67/strided_slice_2StridedSlice"conv3d_transpose_67/Shape:output:02conv3d_transpose_67/strided_slice_2/stack:output:04conv3d_transpose_67/strided_slice_2/stack_1:output:04conv3d_transpose_67/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_67/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_67/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_67/strided_slice_3StridedSlice"conv3d_transpose_67/Shape:output:02conv3d_transpose_67/strided_slice_3/stack:output:04conv3d_transpose_67/strided_slice_3/stack_1:output:04conv3d_transpose_67/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_67/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_67/mulMul,conv3d_transpose_67/strided_slice_1:output:0"conv3d_transpose_67/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_67/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_67/mul_1Mul,conv3d_transpose_67/strided_slice_2:output:0$conv3d_transpose_67/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_67/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_67/mul_2Mul,conv3d_transpose_67/strided_slice_3:output:0$conv3d_transpose_67/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_67/stack/4Const*
_output_shapes
: *
dtype0*
value	B :ќ
conv3d_transpose_67/stackPack*conv3d_transpose_67/strided_slice:output:0conv3d_transpose_67/mul:z:0conv3d_transpose_67/mul_1:z:0conv3d_transpose_67/mul_2:z:0$conv3d_transpose_67/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_67/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_67_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0П
$conv3d_transpose_67/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_67/stack:output:0;conv3d_transpose_67/conv3d_transpose/ReadVariableOp:value:0conv3d_453/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*conv3d_transpose_67/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0т
conv3d_transpose_67/BiasAddBiasAdd-conv3d_transpose_67/conv3d_transpose:output:02conv3d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_454/Conv3D/ReadVariableOpReadVariableOp)conv3d_454_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_454/Conv3DConv3D$conv3d_transpose_67/BiasAdd:output:0(conv3d_454/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_454/BiasAdd/ReadVariableOpReadVariableOp*conv3d_454_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_454/BiasAddBiasAddconv3d_454/Conv3D:output:0)conv3d_454/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_454/ReluReluconv3d_454/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_67/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_67/concatConcatV2conv3d_433/Relu:activations:0conv3d_454/Relu:activations:0#concatenate_67/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_455/Conv3D/ReadVariableOpReadVariableOp)conv3d_455_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ч
conv3d_455/Conv3DConv3Dconcatenate_67/concat:output:0(conv3d_455/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_455/BiasAdd/ReadVariableOpReadVariableOp*conv3d_455_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_455/BiasAddBiasAddconv3d_455/Conv3D:output:0)conv3d_455/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_455/ReluReluconv3d_455/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_456/Conv3D/ReadVariableOpReadVariableOp)conv3d_456_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_456/Conv3DConv3Dconv3d_455/Relu:activations:0(conv3d_456/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_456/BiasAdd/ReadVariableOpReadVariableOp*conv3d_456_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_456/BiasAddBiasAddconv3d_456/Conv3D:output:0)conv3d_456/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_456/ReluReluconv3d_456/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_457/Conv3D/ReadVariableOpReadVariableOp)conv3d_457_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_457/Conv3DConv3Dconv3d_456/Relu:activations:0(conv3d_457/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_457/BiasAdd/ReadVariableOpReadVariableOp*conv3d_457_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_457/BiasAddBiasAddconv3d_457/Conv3D:output:0)conv3d_457/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_457/ReluReluconv3d_457/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ~
!cropping3d_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
#cropping3d_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
#cropping3d_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               к
cropping3d_16/strided_sliceStridedSliceconv3d_457/Relu:activations:0*cropping3d_16/strided_slice/stack:output:0,cropping3d_16/strided_slice/stack_1:output:0,cropping3d_16/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
 conv3d_458/Conv3D/ReadVariableOpReadVariableOp)conv3d_458_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_458/Conv3DConv3D$cropping3d_16/strided_slice:output:0(conv3d_458/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_458/BiasAdd/ReadVariableOpReadVariableOp*conv3d_458_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_458/BiasAddBiasAddconv3d_458/Conv3D:output:0)conv3d_458/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconv3d_458/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЯ
NoOpNoOp"^conv3d_432/BiasAdd/ReadVariableOp!^conv3d_432/Conv3D/ReadVariableOp"^conv3d_433/BiasAdd/ReadVariableOp!^conv3d_433/Conv3D/ReadVariableOp"^conv3d_434/BiasAdd/ReadVariableOp!^conv3d_434/Conv3D/ReadVariableOp"^conv3d_435/BiasAdd/ReadVariableOp!^conv3d_435/Conv3D/ReadVariableOp"^conv3d_436/BiasAdd/ReadVariableOp!^conv3d_436/Conv3D/ReadVariableOp"^conv3d_437/BiasAdd/ReadVariableOp!^conv3d_437/Conv3D/ReadVariableOp"^conv3d_438/BiasAdd/ReadVariableOp!^conv3d_438/Conv3D/ReadVariableOp"^conv3d_439/BiasAdd/ReadVariableOp!^conv3d_439/Conv3D/ReadVariableOp"^conv3d_440/BiasAdd/ReadVariableOp!^conv3d_440/Conv3D/ReadVariableOp"^conv3d_441/BiasAdd/ReadVariableOp!^conv3d_441/Conv3D/ReadVariableOp"^conv3d_442/BiasAdd/ReadVariableOp!^conv3d_442/Conv3D/ReadVariableOp"^conv3d_443/BiasAdd/ReadVariableOp!^conv3d_443/Conv3D/ReadVariableOp"^conv3d_444/BiasAdd/ReadVariableOp!^conv3d_444/Conv3D/ReadVariableOp"^conv3d_445/BiasAdd/ReadVariableOp!^conv3d_445/Conv3D/ReadVariableOp"^conv3d_446/BiasAdd/ReadVariableOp!^conv3d_446/Conv3D/ReadVariableOp"^conv3d_447/BiasAdd/ReadVariableOp!^conv3d_447/Conv3D/ReadVariableOp"^conv3d_448/BiasAdd/ReadVariableOp!^conv3d_448/Conv3D/ReadVariableOp"^conv3d_449/BiasAdd/ReadVariableOp!^conv3d_449/Conv3D/ReadVariableOp"^conv3d_450/BiasAdd/ReadVariableOp!^conv3d_450/Conv3D/ReadVariableOp"^conv3d_451/BiasAdd/ReadVariableOp!^conv3d_451/Conv3D/ReadVariableOp"^conv3d_452/BiasAdd/ReadVariableOp!^conv3d_452/Conv3D/ReadVariableOp"^conv3d_453/BiasAdd/ReadVariableOp!^conv3d_453/Conv3D/ReadVariableOp"^conv3d_454/BiasAdd/ReadVariableOp!^conv3d_454/Conv3D/ReadVariableOp"^conv3d_455/BiasAdd/ReadVariableOp!^conv3d_455/Conv3D/ReadVariableOp"^conv3d_456/BiasAdd/ReadVariableOp!^conv3d_456/Conv3D/ReadVariableOp"^conv3d_457/BiasAdd/ReadVariableOp!^conv3d_457/Conv3D/ReadVariableOp"^conv3d_458/BiasAdd/ReadVariableOp!^conv3d_458/Conv3D/ReadVariableOp+^conv3d_transpose_64/BiasAdd/ReadVariableOp4^conv3d_transpose_64/conv3d_transpose/ReadVariableOp+^conv3d_transpose_65/BiasAdd/ReadVariableOp4^conv3d_transpose_65/conv3d_transpose/ReadVariableOp+^conv3d_transpose_66/BiasAdd/ReadVariableOp4^conv3d_transpose_66/conv3d_transpose/ReadVariableOp+^conv3d_transpose_67/BiasAdd/ReadVariableOp4^conv3d_transpose_67/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_432/BiasAdd/ReadVariableOp!conv3d_432/BiasAdd/ReadVariableOp2D
 conv3d_432/Conv3D/ReadVariableOp conv3d_432/Conv3D/ReadVariableOp2F
!conv3d_433/BiasAdd/ReadVariableOp!conv3d_433/BiasAdd/ReadVariableOp2D
 conv3d_433/Conv3D/ReadVariableOp conv3d_433/Conv3D/ReadVariableOp2F
!conv3d_434/BiasAdd/ReadVariableOp!conv3d_434/BiasAdd/ReadVariableOp2D
 conv3d_434/Conv3D/ReadVariableOp conv3d_434/Conv3D/ReadVariableOp2F
!conv3d_435/BiasAdd/ReadVariableOp!conv3d_435/BiasAdd/ReadVariableOp2D
 conv3d_435/Conv3D/ReadVariableOp conv3d_435/Conv3D/ReadVariableOp2F
!conv3d_436/BiasAdd/ReadVariableOp!conv3d_436/BiasAdd/ReadVariableOp2D
 conv3d_436/Conv3D/ReadVariableOp conv3d_436/Conv3D/ReadVariableOp2F
!conv3d_437/BiasAdd/ReadVariableOp!conv3d_437/BiasAdd/ReadVariableOp2D
 conv3d_437/Conv3D/ReadVariableOp conv3d_437/Conv3D/ReadVariableOp2F
!conv3d_438/BiasAdd/ReadVariableOp!conv3d_438/BiasAdd/ReadVariableOp2D
 conv3d_438/Conv3D/ReadVariableOp conv3d_438/Conv3D/ReadVariableOp2F
!conv3d_439/BiasAdd/ReadVariableOp!conv3d_439/BiasAdd/ReadVariableOp2D
 conv3d_439/Conv3D/ReadVariableOp conv3d_439/Conv3D/ReadVariableOp2F
!conv3d_440/BiasAdd/ReadVariableOp!conv3d_440/BiasAdd/ReadVariableOp2D
 conv3d_440/Conv3D/ReadVariableOp conv3d_440/Conv3D/ReadVariableOp2F
!conv3d_441/BiasAdd/ReadVariableOp!conv3d_441/BiasAdd/ReadVariableOp2D
 conv3d_441/Conv3D/ReadVariableOp conv3d_441/Conv3D/ReadVariableOp2F
!conv3d_442/BiasAdd/ReadVariableOp!conv3d_442/BiasAdd/ReadVariableOp2D
 conv3d_442/Conv3D/ReadVariableOp conv3d_442/Conv3D/ReadVariableOp2F
!conv3d_443/BiasAdd/ReadVariableOp!conv3d_443/BiasAdd/ReadVariableOp2D
 conv3d_443/Conv3D/ReadVariableOp conv3d_443/Conv3D/ReadVariableOp2F
!conv3d_444/BiasAdd/ReadVariableOp!conv3d_444/BiasAdd/ReadVariableOp2D
 conv3d_444/Conv3D/ReadVariableOp conv3d_444/Conv3D/ReadVariableOp2F
!conv3d_445/BiasAdd/ReadVariableOp!conv3d_445/BiasAdd/ReadVariableOp2D
 conv3d_445/Conv3D/ReadVariableOp conv3d_445/Conv3D/ReadVariableOp2F
!conv3d_446/BiasAdd/ReadVariableOp!conv3d_446/BiasAdd/ReadVariableOp2D
 conv3d_446/Conv3D/ReadVariableOp conv3d_446/Conv3D/ReadVariableOp2F
!conv3d_447/BiasAdd/ReadVariableOp!conv3d_447/BiasAdd/ReadVariableOp2D
 conv3d_447/Conv3D/ReadVariableOp conv3d_447/Conv3D/ReadVariableOp2F
!conv3d_448/BiasAdd/ReadVariableOp!conv3d_448/BiasAdd/ReadVariableOp2D
 conv3d_448/Conv3D/ReadVariableOp conv3d_448/Conv3D/ReadVariableOp2F
!conv3d_449/BiasAdd/ReadVariableOp!conv3d_449/BiasAdd/ReadVariableOp2D
 conv3d_449/Conv3D/ReadVariableOp conv3d_449/Conv3D/ReadVariableOp2F
!conv3d_450/BiasAdd/ReadVariableOp!conv3d_450/BiasAdd/ReadVariableOp2D
 conv3d_450/Conv3D/ReadVariableOp conv3d_450/Conv3D/ReadVariableOp2F
!conv3d_451/BiasAdd/ReadVariableOp!conv3d_451/BiasAdd/ReadVariableOp2D
 conv3d_451/Conv3D/ReadVariableOp conv3d_451/Conv3D/ReadVariableOp2F
!conv3d_452/BiasAdd/ReadVariableOp!conv3d_452/BiasAdd/ReadVariableOp2D
 conv3d_452/Conv3D/ReadVariableOp conv3d_452/Conv3D/ReadVariableOp2F
!conv3d_453/BiasAdd/ReadVariableOp!conv3d_453/BiasAdd/ReadVariableOp2D
 conv3d_453/Conv3D/ReadVariableOp conv3d_453/Conv3D/ReadVariableOp2F
!conv3d_454/BiasAdd/ReadVariableOp!conv3d_454/BiasAdd/ReadVariableOp2D
 conv3d_454/Conv3D/ReadVariableOp conv3d_454/Conv3D/ReadVariableOp2F
!conv3d_455/BiasAdd/ReadVariableOp!conv3d_455/BiasAdd/ReadVariableOp2D
 conv3d_455/Conv3D/ReadVariableOp conv3d_455/Conv3D/ReadVariableOp2F
!conv3d_456/BiasAdd/ReadVariableOp!conv3d_456/BiasAdd/ReadVariableOp2D
 conv3d_456/Conv3D/ReadVariableOp conv3d_456/Conv3D/ReadVariableOp2F
!conv3d_457/BiasAdd/ReadVariableOp!conv3d_457/BiasAdd/ReadVariableOp2D
 conv3d_457/Conv3D/ReadVariableOp conv3d_457/Conv3D/ReadVariableOp2F
!conv3d_458/BiasAdd/ReadVariableOp!conv3d_458/BiasAdd/ReadVariableOp2D
 conv3d_458/Conv3D/ReadVariableOp conv3d_458/Conv3D/ReadVariableOp2X
*conv3d_transpose_64/BiasAdd/ReadVariableOp*conv3d_transpose_64/BiasAdd/ReadVariableOp2j
3conv3d_transpose_64/conv3d_transpose/ReadVariableOp3conv3d_transpose_64/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_65/BiasAdd/ReadVariableOp*conv3d_transpose_65/BiasAdd/ReadVariableOp2j
3conv3d_transpose_65/conv3d_transpose/ReadVariableOp3conv3d_transpose_65/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_66/BiasAdd/ReadVariableOp*conv3d_transpose_66/BiasAdd/ReadVariableOp2j
3conv3d_transpose_66/conv3d_transpose/ReadVariableOp3conv3d_transpose_66/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_67/BiasAdd/ReadVariableOp*conv3d_transpose_67/BiasAdd/ReadVariableOp2j
3conv3d_transpose_67/conv3d_transpose/ReadVariableOp3conv3d_transpose_67/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ё
M
1__inference_max_pooling3d_64_layer_call_fn_515682

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
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_512460
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
F__inference_conv3d_449_layer_call_and_return_conditional_losses_513044

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
а

F__inference_conv3d_458_layer_call_and_return_conditional_losses_513225

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
ђ
Є
+__inference_conv3d_453_layer_call_fn_516283

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
F__inference_conv3d_453_layer_call_and_return_conditional_losses_513126
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
љ
Ї
+__inference_conv3d_442_layer_call_fn_515936

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
F__inference_conv3d_442_layer_call_and_return_conditional_losses_512902
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
input_17X
serving_default_input_17:08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe

conv3d_458W
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
)__inference_model_16_layer_call_fn_513359
)__inference_model_16_layer_call_fn_514686
)__inference_model_16_layer_call_fn_514815
)__inference_model_16_layer_call_fn_514213Р
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
D__inference_model_16_layer_call_and_return_conditional_losses_515155
D__inference_model_16_layer_call_and_return_conditional_losses_515495
D__inference_model_16_layer_call_and_return_conditional_losses_514382
D__inference_model_16_layer_call_and_return_conditional_losses_514551Р
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
!__inference__wrapped_model_512438input_17"
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
2__inference_zero_padding3d_16_layer_call_fn_515631Ђ
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
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_515637Ђ
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
/:-2conv3d_432/kernel
:2conv3d_432/bias
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
+__inference_conv3d_432_layer_call_fn_515646Ђ
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
F__inference_conv3d_432_layer_call_and_return_conditional_losses_515657Ђ
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
/:-2conv3d_433/kernel
:2conv3d_433/bias
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
+__inference_conv3d_433_layer_call_fn_515666Ђ
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
F__inference_conv3d_433_layer_call_and_return_conditional_losses_515677Ђ
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
1__inference_max_pooling3d_64_layer_call_fn_515682Ђ
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
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_515687Ђ
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
/:- 2conv3d_434/kernel
: 2conv3d_434/bias
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
+__inference_conv3d_434_layer_call_fn_515696Ђ
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
F__inference_conv3d_434_layer_call_and_return_conditional_losses_515707Ђ
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
/:-  2conv3d_435/kernel
: 2conv3d_435/bias
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
+__inference_conv3d_435_layer_call_fn_515716Ђ
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
F__inference_conv3d_435_layer_call_and_return_conditional_losses_515727Ђ
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
1__inference_max_pooling3d_65_layer_call_fn_515732Ђ
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
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_515737Ђ
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
/:- @2conv3d_436/kernel
:@2conv3d_436/bias
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
+__inference_conv3d_436_layer_call_fn_515746Ђ
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
F__inference_conv3d_436_layer_call_and_return_conditional_losses_515757Ђ
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
/:-@@2conv3d_437/kernel
:@2conv3d_437/bias
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
+__inference_conv3d_437_layer_call_fn_515766Ђ
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
F__inference_conv3d_437_layer_call_and_return_conditional_losses_515777Ђ
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
1__inference_max_pooling3d_66_layer_call_fn_515782Ђ
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
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_515787Ђ
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
0:.@2conv3d_438/kernel
:2conv3d_438/bias
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
+__inference_conv3d_438_layer_call_fn_515796Ђ
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
F__inference_conv3d_438_layer_call_and_return_conditional_losses_515807Ђ
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
1:/2conv3d_439/kernel
:2conv3d_439/bias
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
+__inference_conv3d_439_layer_call_fn_515816Ђ
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
F__inference_conv3d_439_layer_call_and_return_conditional_losses_515827Ђ
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
1__inference_max_pooling3d_67_layer_call_fn_515832Ђ
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
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_515837Ђ
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
1:/2conv3d_440/kernel
:2conv3d_440/bias
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
+__inference_conv3d_440_layer_call_fn_515846Ђ
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
F__inference_conv3d_440_layer_call_and_return_conditional_losses_515857Ђ
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
1:/2conv3d_441/kernel
:2conv3d_441/bias
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
+__inference_conv3d_441_layer_call_fn_515866Ђ
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
F__inference_conv3d_441_layer_call_and_return_conditional_losses_515877Ђ
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
::82conv3d_transpose_64/kernel
':%2conv3d_transpose_64/bias
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
4__inference_conv3d_transpose_64_layer_call_fn_515886Ђ
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
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_515927Ђ
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
1:/2conv3d_442/kernel
:2conv3d_442/bias
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
+__inference_conv3d_442_layer_call_fn_515936Ђ
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
F__inference_conv3d_442_layer_call_and_return_conditional_losses_515947Ђ
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
/__inference_concatenate_64_layer_call_fn_515953Ђ
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
J__inference_concatenate_64_layer_call_and_return_conditional_losses_515960Ђ
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
1:/2conv3d_443/kernel
:2conv3d_443/bias
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
+__inference_conv3d_443_layer_call_fn_515969Ђ
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
F__inference_conv3d_443_layer_call_and_return_conditional_losses_515980Ђ
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
1:/2conv3d_444/kernel
:2conv3d_444/bias
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
+__inference_conv3d_444_layer_call_fn_515989Ђ
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
F__inference_conv3d_444_layer_call_and_return_conditional_losses_516000Ђ
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
1:/2conv3d_445/kernel
:2conv3d_445/bias
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
+__inference_conv3d_445_layer_call_fn_516009Ђ
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
F__inference_conv3d_445_layer_call_and_return_conditional_losses_516020Ђ
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
9:7@2conv3d_transpose_65/kernel
&:$@2conv3d_transpose_65/bias
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
4__inference_conv3d_transpose_65_layer_call_fn_516029Ђ
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
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_516064Ђ
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
/:-@@2conv3d_446/kernel
:@2conv3d_446/bias
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
+__inference_conv3d_446_layer_call_fn_516073Ђ
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
F__inference_conv3d_446_layer_call_and_return_conditional_losses_516084Ђ
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
/__inference_concatenate_65_layer_call_fn_516090Ђ
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
J__inference_concatenate_65_layer_call_and_return_conditional_losses_516097Ђ
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
0:.@2conv3d_447/kernel
:@2conv3d_447/bias
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
+__inference_conv3d_447_layer_call_fn_516106Ђ
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
F__inference_conv3d_447_layer_call_and_return_conditional_losses_516117Ђ
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
/:-@@2conv3d_448/kernel
:@2conv3d_448/bias
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
+__inference_conv3d_448_layer_call_fn_516126Ђ
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
F__inference_conv3d_448_layer_call_and_return_conditional_losses_516137Ђ
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
/:-@@2conv3d_449/kernel
:@2conv3d_449/bias
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
+__inference_conv3d_449_layer_call_fn_516146Ђ
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
F__inference_conv3d_449_layer_call_and_return_conditional_losses_516157Ђ
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
8:6 @2conv3d_transpose_66/kernel
&:$ 2conv3d_transpose_66/bias
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
4__inference_conv3d_transpose_66_layer_call_fn_516166Ђ
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
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_516201Ђ
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
/:-  2conv3d_450/kernel
: 2conv3d_450/bias
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
+__inference_conv3d_450_layer_call_fn_516210Ђ
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
F__inference_conv3d_450_layer_call_and_return_conditional_losses_516221Ђ
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
/__inference_concatenate_66_layer_call_fn_516227Ђ
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
J__inference_concatenate_66_layer_call_and_return_conditional_losses_516234Ђ
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
/:-@ 2conv3d_451/kernel
: 2conv3d_451/bias
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
+__inference_conv3d_451_layer_call_fn_516243Ђ
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
F__inference_conv3d_451_layer_call_and_return_conditional_losses_516254Ђ
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
/:-  2conv3d_452/kernel
: 2conv3d_452/bias
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
+__inference_conv3d_452_layer_call_fn_516263Ђ
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
F__inference_conv3d_452_layer_call_and_return_conditional_losses_516274Ђ
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
/:-  2conv3d_453/kernel
: 2conv3d_453/bias
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
+__inference_conv3d_453_layer_call_fn_516283Ђ
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
F__inference_conv3d_453_layer_call_and_return_conditional_losses_516294Ђ
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
8:6 2conv3d_transpose_67/kernel
&:$2conv3d_transpose_67/bias
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
4__inference_conv3d_transpose_67_layer_call_fn_516303Ђ
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
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_516338Ђ
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
/:-2conv3d_454/kernel
:2conv3d_454/bias
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
+__inference_conv3d_454_layer_call_fn_516347Ђ
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
F__inference_conv3d_454_layer_call_and_return_conditional_losses_516358Ђ
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
/__inference_concatenate_67_layer_call_fn_516364Ђ
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
J__inference_concatenate_67_layer_call_and_return_conditional_losses_516371Ђ
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
/:- 2conv3d_455/kernel
:2conv3d_455/bias
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
+__inference_conv3d_455_layer_call_fn_516380Ђ
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
F__inference_conv3d_455_layer_call_and_return_conditional_losses_516391Ђ
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
/:-2conv3d_456/kernel
:2conv3d_456/bias
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
+__inference_conv3d_456_layer_call_fn_516400Ђ
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
F__inference_conv3d_456_layer_call_and_return_conditional_losses_516411Ђ
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
/:-2conv3d_457/kernel
:2conv3d_457/bias
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
+__inference_conv3d_457_layer_call_fn_516420Ђ
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
F__inference_conv3d_457_layer_call_and_return_conditional_losses_516431Ђ
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
.__inference_cropping3d_16_layer_call_fn_516436Ђ
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
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_516444Ђ
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
/:-2conv3d_458/kernel
:2conv3d_458/bias
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
+__inference_conv3d_458_layer_call_fn_516453Ђ
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
F__inference_conv3d_458_layer_call_and_return_conditional_losses_516463Ђ
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
$__inference_signature_wrapper_515626input_17"
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
4:22Adam/conv3d_432/kernel/m
": 2Adam/conv3d_432/bias/m
4:22Adam/conv3d_433/kernel/m
": 2Adam/conv3d_433/bias/m
4:2 2Adam/conv3d_434/kernel/m
":  2Adam/conv3d_434/bias/m
4:2  2Adam/conv3d_435/kernel/m
":  2Adam/conv3d_435/bias/m
4:2 @2Adam/conv3d_436/kernel/m
": @2Adam/conv3d_436/bias/m
4:2@@2Adam/conv3d_437/kernel/m
": @2Adam/conv3d_437/bias/m
5:3@2Adam/conv3d_438/kernel/m
#:!2Adam/conv3d_438/bias/m
6:42Adam/conv3d_439/kernel/m
#:!2Adam/conv3d_439/bias/m
6:42Adam/conv3d_440/kernel/m
#:!2Adam/conv3d_440/bias/m
6:42Adam/conv3d_441/kernel/m
#:!2Adam/conv3d_441/bias/m
?:=2!Adam/conv3d_transpose_64/kernel/m
,:*2Adam/conv3d_transpose_64/bias/m
6:42Adam/conv3d_442/kernel/m
#:!2Adam/conv3d_442/bias/m
6:42Adam/conv3d_443/kernel/m
#:!2Adam/conv3d_443/bias/m
6:42Adam/conv3d_444/kernel/m
#:!2Adam/conv3d_444/bias/m
6:42Adam/conv3d_445/kernel/m
#:!2Adam/conv3d_445/bias/m
>:<@2!Adam/conv3d_transpose_65/kernel/m
+:)@2Adam/conv3d_transpose_65/bias/m
4:2@@2Adam/conv3d_446/kernel/m
": @2Adam/conv3d_446/bias/m
5:3@2Adam/conv3d_447/kernel/m
": @2Adam/conv3d_447/bias/m
4:2@@2Adam/conv3d_448/kernel/m
": @2Adam/conv3d_448/bias/m
4:2@@2Adam/conv3d_449/kernel/m
": @2Adam/conv3d_449/bias/m
=:; @2!Adam/conv3d_transpose_66/kernel/m
+:) 2Adam/conv3d_transpose_66/bias/m
4:2  2Adam/conv3d_450/kernel/m
":  2Adam/conv3d_450/bias/m
4:2@ 2Adam/conv3d_451/kernel/m
":  2Adam/conv3d_451/bias/m
4:2  2Adam/conv3d_452/kernel/m
":  2Adam/conv3d_452/bias/m
4:2  2Adam/conv3d_453/kernel/m
":  2Adam/conv3d_453/bias/m
=:; 2!Adam/conv3d_transpose_67/kernel/m
+:)2Adam/conv3d_transpose_67/bias/m
4:22Adam/conv3d_454/kernel/m
": 2Adam/conv3d_454/bias/m
4:2 2Adam/conv3d_455/kernel/m
": 2Adam/conv3d_455/bias/m
4:22Adam/conv3d_456/kernel/m
": 2Adam/conv3d_456/bias/m
4:22Adam/conv3d_457/kernel/m
": 2Adam/conv3d_457/bias/m
4:22Adam/conv3d_458/kernel/m
": 2Adam/conv3d_458/bias/m
4:22Adam/conv3d_432/kernel/v
": 2Adam/conv3d_432/bias/v
4:22Adam/conv3d_433/kernel/v
": 2Adam/conv3d_433/bias/v
4:2 2Adam/conv3d_434/kernel/v
":  2Adam/conv3d_434/bias/v
4:2  2Adam/conv3d_435/kernel/v
":  2Adam/conv3d_435/bias/v
4:2 @2Adam/conv3d_436/kernel/v
": @2Adam/conv3d_436/bias/v
4:2@@2Adam/conv3d_437/kernel/v
": @2Adam/conv3d_437/bias/v
5:3@2Adam/conv3d_438/kernel/v
#:!2Adam/conv3d_438/bias/v
6:42Adam/conv3d_439/kernel/v
#:!2Adam/conv3d_439/bias/v
6:42Adam/conv3d_440/kernel/v
#:!2Adam/conv3d_440/bias/v
6:42Adam/conv3d_441/kernel/v
#:!2Adam/conv3d_441/bias/v
?:=2!Adam/conv3d_transpose_64/kernel/v
,:*2Adam/conv3d_transpose_64/bias/v
6:42Adam/conv3d_442/kernel/v
#:!2Adam/conv3d_442/bias/v
6:42Adam/conv3d_443/kernel/v
#:!2Adam/conv3d_443/bias/v
6:42Adam/conv3d_444/kernel/v
#:!2Adam/conv3d_444/bias/v
6:42Adam/conv3d_445/kernel/v
#:!2Adam/conv3d_445/bias/v
>:<@2!Adam/conv3d_transpose_65/kernel/v
+:)@2Adam/conv3d_transpose_65/bias/v
4:2@@2Adam/conv3d_446/kernel/v
": @2Adam/conv3d_446/bias/v
5:3@2Adam/conv3d_447/kernel/v
": @2Adam/conv3d_447/bias/v
4:2@@2Adam/conv3d_448/kernel/v
": @2Adam/conv3d_448/bias/v
4:2@@2Adam/conv3d_449/kernel/v
": @2Adam/conv3d_449/bias/v
=:; @2!Adam/conv3d_transpose_66/kernel/v
+:) 2Adam/conv3d_transpose_66/bias/v
4:2  2Adam/conv3d_450/kernel/v
":  2Adam/conv3d_450/bias/v
4:2@ 2Adam/conv3d_451/kernel/v
":  2Adam/conv3d_451/bias/v
4:2  2Adam/conv3d_452/kernel/v
":  2Adam/conv3d_452/bias/v
4:2  2Adam/conv3d_453/kernel/v
":  2Adam/conv3d_453/bias/v
=:; 2!Adam/conv3d_transpose_67/kernel/v
+:)2Adam/conv3d_transpose_67/bias/v
4:22Adam/conv3d_454/kernel/v
": 2Adam/conv3d_454/bias/v
4:2 2Adam/conv3d_455/kernel/v
": 2Adam/conv3d_455/bias/v
4:22Adam/conv3d_456/kernel/v
": 2Adam/conv3d_456/bias/v
4:22Adam/conv3d_457/kernel/v
": 2Adam/conv3d_457/bias/v
4:22Adam/conv3d_458/kernel/v
": 2Adam/conv3d_458/bias/vа
!__inference__wrapped_model_512438Њn;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдстXЂU
NЂK
IF
input_178џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "^Њ[
Y

conv3d_458KH

conv3d_4588џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџа
J__inference_concatenate_64_layer_call_and_return_conditional_losses_515960ЏЂЋ
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
/__inference_concatenate_64_layer_call_fn_515953єЏЂЋ
ЃЂ

JG
inputs/09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
JG
inputs/19џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЮ
J__inference_concatenate_65_layer_call_and_return_conditional_losses_516097џ­ЂЉ
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
/__inference_concatenate_65_layer_call_fn_516090ђ­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЭ
J__inference_concatenate_66_layer_call_and_return_conditional_losses_516234ў­ЂЉ
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
/__inference_concatenate_66_layer_call_fn_516227ё­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Э
J__inference_concatenate_67_layer_call_and_return_conditional_losses_516371ў­ЂЉ
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
/__inference_concatenate_67_layer_call_fn_516364ё­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_432_layer_call_and_return_conditional_losses_515657Њ;<VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
+__inference_conv3d_432_layer_call_fn_515646;<VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
F__inference_conv3d_433_layer_call_and_return_conditional_losses_515677ЊCDVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
+__inference_conv3d_433_layer_call_fn_515666CDVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
F__inference_conv3d_434_layer_call_and_return_conditional_losses_515707ЊQRVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Э
+__inference_conv3d_434_layer_call_fn_515696QRVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_435_layer_call_and_return_conditional_losses_515727ЊYZVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Э
+__inference_conv3d_435_layer_call_fn_515716YZVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_436_layer_call_and_return_conditional_losses_515757ЊghVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Э
+__inference_conv3d_436_layer_call_fn_515746ghVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ѕ
F__inference_conv3d_437_layer_call_and_return_conditional_losses_515777ЊopVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Э
+__inference_conv3d_437_layer_call_fn_515766opVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@і
F__inference_conv3d_438_layer_call_and_return_conditional_losses_515807Ћ}~VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
+__inference_conv3d_438_layer_call_fn_515796}~VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_439_layer_call_and_return_conditional_losses_515827ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_439_layer_call_fn_515816ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_440_layer_call_and_return_conditional_losses_515857ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_440_layer_call_fn_515846ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_441_layer_call_and_return_conditional_losses_515877ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_441_layer_call_fn_515866ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_442_layer_call_and_return_conditional_losses_515947ЎЋЌWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_442_layer_call_fn_515936ЁЋЌWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_443_layer_call_and_return_conditional_losses_515980ЎЙКWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_443_layer_call_fn_515969ЁЙКWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_444_layer_call_and_return_conditional_losses_516000ЎСТWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_444_layer_call_fn_515989ЁСТWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_445_layer_call_and_return_conditional_losses_516020ЎЩЪWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_445_layer_call_fn_516009ЁЩЪWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_446_layer_call_and_return_conditional_losses_516084ЌйкVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_446_layer_call_fn_516073йкVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ј
F__inference_conv3d_447_layer_call_and_return_conditional_losses_516117­чшWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 а
+__inference_conv3d_447_layer_call_fn_516106 чшWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_448_layer_call_and_return_conditional_losses_516137Ќя№VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_448_layer_call_fn_516126я№VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_449_layer_call_and_return_conditional_losses_516157ЌїјVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_449_layer_call_fn_516146їјVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_450_layer_call_and_return_conditional_losses_516221ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_450_layer_call_fn_516210VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_451_layer_call_and_return_conditional_losses_516254ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_451_layer_call_fn_516243VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_452_layer_call_and_return_conditional_losses_516274ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_452_layer_call_fn_516263VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_453_layer_call_and_return_conditional_losses_516294ЌЅІVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_453_layer_call_fn_516283ЅІVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_454_layer_call_and_return_conditional_losses_516358ЌЕЖVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_454_layer_call_fn_516347ЕЖVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_455_layer_call_and_return_conditional_losses_516391ЌУФVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_455_layer_call_fn_516380УФVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_456_layer_call_and_return_conditional_losses_516411ЌЫЬVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_456_layer_call_fn_516400ЫЬVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_457_layer_call_and_return_conditional_losses_516431ЌгдVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_457_layer_call_fn_516420гдVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_458_layer_call_and_return_conditional_losses_516463ЌстVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_458_layer_call_fn_516453стVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
O__inference_conv3d_transpose_64_layer_call_and_return_conditional_losses_515927ЎЃЄWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 к
4__inference_conv3d_transpose_64_layer_call_fn_515886ЁЃЄWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
O__inference_conv3d_transpose_65_layer_call_and_return_conditional_losses_516064­бвWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 й
4__inference_conv3d_transpose_65_layer_call_fn_516029 бвWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
O__inference_conv3d_transpose_66_layer_call_and_return_conditional_losses_516201ЌџVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 и
4__inference_conv3d_transpose_66_layer_call_fn_516166џVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
O__inference_conv3d_transpose_67_layer_call_and_return_conditional_losses_516338Ќ­ЎVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 и
4__inference_conv3d_transpose_67_layer_call_fn_516303­ЎVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
I__inference_cropping3d_16_layer_call_and_return_conditional_losses_516444И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 о
.__inference_cropping3d_16_layer_call_fn_516436Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_64_layer_call_and_return_conditional_losses_515687И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_64_layer_call_fn_515682Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_65_layer_call_and_return_conditional_losses_515737И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_65_layer_call_fn_515732Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_66_layer_call_and_return_conditional_losses_515787И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_66_layer_call_fn_515782Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_67_layer_call_and_return_conditional_losses_515837И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_67_layer_call_fn_515832Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџщ
D__inference_model_16_layer_call_and_return_conditional_losses_514382 n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_178џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 щ
D__inference_model_16_layer_call_and_return_conditional_losses_514551 n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_178џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ч
D__inference_model_16_layer_call_and_return_conditional_losses_515155n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
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
D__inference_model_16_layer_call_and_return_conditional_losses_515495n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
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
)__inference_model_16_layer_call_fn_513359n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_178џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџС
)__inference_model_16_layer_call_fn_514213n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_178џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџП
)__inference_model_16_layer_call_fn_514686n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџП
)__inference_model_16_layer_call_fn_514815n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџп
$__inference_signature_wrapper_515626Жn;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдстdЂa
Ђ 
ZЊW
U
input_17IF
input_178џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"^Њ[
Y

conv3d_458KH

conv3d_4588џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
M__inference_zero_padding3d_16_layer_call_and_return_conditional_losses_515637И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 т
2__inference_zero_padding3d_16_layer_call_fn_515631Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ