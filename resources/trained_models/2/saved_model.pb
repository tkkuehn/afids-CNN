��4
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
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
�
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
�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��.
�
conv3d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_27/kernel
�
$conv3d_27/kernel/Read/ReadVariableOpReadVariableOpconv3d_27/kernel**
_output_shapes
:*
dtype0
t
conv3d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_27/bias
m
"conv3d_27/bias/Read/ReadVariableOpReadVariableOpconv3d_27/bias*
_output_shapes
:*
dtype0
�
conv3d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_28/kernel
�
$conv3d_28/kernel/Read/ReadVariableOpReadVariableOpconv3d_28/kernel**
_output_shapes
:*
dtype0
t
conv3d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_28/bias
m
"conv3d_28/bias/Read/ReadVariableOpReadVariableOpconv3d_28/bias*
_output_shapes
:*
dtype0
�
conv3d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv3d_29/kernel
�
$conv3d_29/kernel/Read/ReadVariableOpReadVariableOpconv3d_29/kernel**
_output_shapes
: *
dtype0
t
conv3d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_29/bias
m
"conv3d_29/bias/Read/ReadVariableOpReadVariableOpconv3d_29/bias*
_output_shapes
: *
dtype0
�
conv3d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv3d_30/kernel
�
$conv3d_30/kernel/Read/ReadVariableOpReadVariableOpconv3d_30/kernel**
_output_shapes
:  *
dtype0
t
conv3d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_30/bias
m
"conv3d_30/bias/Read/ReadVariableOpReadVariableOpconv3d_30/bias*
_output_shapes
: *
dtype0
�
conv3d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv3d_31/kernel
�
$conv3d_31/kernel/Read/ReadVariableOpReadVariableOpconv3d_31/kernel**
_output_shapes
: @*
dtype0
t
conv3d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_31/bias
m
"conv3d_31/bias/Read/ReadVariableOpReadVariableOpconv3d_31/bias*
_output_shapes
:@*
dtype0
�
conv3d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv3d_32/kernel
�
$conv3d_32/kernel/Read/ReadVariableOpReadVariableOpconv3d_32/kernel**
_output_shapes
:@@*
dtype0
t
conv3d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_32/bias
m
"conv3d_32/bias/Read/ReadVariableOpReadVariableOpconv3d_32/bias*
_output_shapes
:@*
dtype0
�
conv3d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*!
shared_nameconv3d_33/kernel
�
$conv3d_33/kernel/Read/ReadVariableOpReadVariableOpconv3d_33/kernel*+
_output_shapes
:@�*
dtype0
u
conv3d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_33/bias
n
"conv3d_33/bias/Read/ReadVariableOpReadVariableOpconv3d_33/bias*
_output_shapes	
:�*
dtype0
�
conv3d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*!
shared_nameconv3d_34/kernel
�
$conv3d_34/kernel/Read/ReadVariableOpReadVariableOpconv3d_34/kernel*,
_output_shapes
:��*
dtype0
u
conv3d_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_34/bias
n
"conv3d_34/bias/Read/ReadVariableOpReadVariableOpconv3d_34/bias*
_output_shapes	
:�*
dtype0
�
conv3d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*!
shared_nameconv3d_35/kernel
�
$conv3d_35/kernel/Read/ReadVariableOpReadVariableOpconv3d_35/kernel*,
_output_shapes
:��*
dtype0
u
conv3d_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_35/bias
n
"conv3d_35/bias/Read/ReadVariableOpReadVariableOpconv3d_35/bias*
_output_shapes	
:�*
dtype0
�
conv3d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*!
shared_nameconv3d_36/kernel
�
$conv3d_36/kernel/Read/ReadVariableOpReadVariableOpconv3d_36/kernel*,
_output_shapes
:��*
dtype0
u
conv3d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_36/bias
n
"conv3d_36/bias/Read/ReadVariableOpReadVariableOpconv3d_36/bias*
_output_shapes	
:�*
dtype0
�
conv3d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��**
shared_nameconv3d_transpose_4/kernel
�
-conv3d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_4/kernel*,
_output_shapes
:��*
dtype0
�
conv3d_transpose_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameconv3d_transpose_4/bias
�
+conv3d_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_4/bias*
_output_shapes	
:�*
dtype0
�
conv3d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*!
shared_nameconv3d_37/kernel
�
$conv3d_37/kernel/Read/ReadVariableOpReadVariableOpconv3d_37/kernel*,
_output_shapes
:��*
dtype0
u
conv3d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_37/bias
n
"conv3d_37/bias/Read/ReadVariableOpReadVariableOpconv3d_37/bias*
_output_shapes	
:�*
dtype0
�
conv3d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*!
shared_nameconv3d_38/kernel
�
$conv3d_38/kernel/Read/ReadVariableOpReadVariableOpconv3d_38/kernel*,
_output_shapes
:��*
dtype0
u
conv3d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_38/bias
n
"conv3d_38/bias/Read/ReadVariableOpReadVariableOpconv3d_38/bias*
_output_shapes	
:�*
dtype0
�
conv3d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*!
shared_nameconv3d_39/kernel
�
$conv3d_39/kernel/Read/ReadVariableOpReadVariableOpconv3d_39/kernel*,
_output_shapes
:��*
dtype0
u
conv3d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_39/bias
n
"conv3d_39/bias/Read/ReadVariableOpReadVariableOpconv3d_39/bias*
_output_shapes	
:�*
dtype0
�
conv3d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*!
shared_nameconv3d_40/kernel
�
$conv3d_40/kernel/Read/ReadVariableOpReadVariableOpconv3d_40/kernel*,
_output_shapes
:��*
dtype0
u
conv3d_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_40/bias
n
"conv3d_40/bias/Read/ReadVariableOpReadVariableOpconv3d_40/bias*
_output_shapes	
:�*
dtype0
�
conv3d_transpose_5/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�**
shared_nameconv3d_transpose_5/kernel
�
-conv3d_transpose_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_5/kernel*+
_output_shapes
:@�*
dtype0
�
conv3d_transpose_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv3d_transpose_5/bias

+conv3d_transpose_5/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_5/bias*
_output_shapes
:@*
dtype0
�
conv3d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv3d_41/kernel
�
$conv3d_41/kernel/Read/ReadVariableOpReadVariableOpconv3d_41/kernel**
_output_shapes
:@@*
dtype0
t
conv3d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_41/bias
m
"conv3d_41/bias/Read/ReadVariableOpReadVariableOpconv3d_41/bias*
_output_shapes
:@*
dtype0
�
conv3d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:�@*!
shared_nameconv3d_42/kernel
�
$conv3d_42/kernel/Read/ReadVariableOpReadVariableOpconv3d_42/kernel*+
_output_shapes
:�@*
dtype0
t
conv3d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_42/bias
m
"conv3d_42/bias/Read/ReadVariableOpReadVariableOpconv3d_42/bias*
_output_shapes
:@*
dtype0
�
conv3d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv3d_43/kernel
�
$conv3d_43/kernel/Read/ReadVariableOpReadVariableOpconv3d_43/kernel**
_output_shapes
:@@*
dtype0
t
conv3d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_43/bias
m
"conv3d_43/bias/Read/ReadVariableOpReadVariableOpconv3d_43/bias*
_output_shapes
:@*
dtype0
�
conv3d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv3d_44/kernel
�
$conv3d_44/kernel/Read/ReadVariableOpReadVariableOpconv3d_44/kernel**
_output_shapes
:@@*
dtype0
t
conv3d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_44/bias
m
"conv3d_44/bias/Read/ReadVariableOpReadVariableOpconv3d_44/bias*
_output_shapes
:@*
dtype0
�
conv3d_transpose_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameconv3d_transpose_6/kernel
�
-conv3d_transpose_6/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_6/kernel**
_output_shapes
: @*
dtype0
�
conv3d_transpose_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv3d_transpose_6/bias

+conv3d_transpose_6/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_6/bias*
_output_shapes
: *
dtype0
�
conv3d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv3d_45/kernel
�
$conv3d_45/kernel/Read/ReadVariableOpReadVariableOpconv3d_45/kernel**
_output_shapes
:  *
dtype0
t
conv3d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_45/bias
m
"conv3d_45/bias/Read/ReadVariableOpReadVariableOpconv3d_45/bias*
_output_shapes
: *
dtype0
�
conv3d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv3d_46/kernel
�
$conv3d_46/kernel/Read/ReadVariableOpReadVariableOpconv3d_46/kernel**
_output_shapes
:@ *
dtype0
t
conv3d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_46/bias
m
"conv3d_46/bias/Read/ReadVariableOpReadVariableOpconv3d_46/bias*
_output_shapes
: *
dtype0
�
conv3d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv3d_47/kernel
�
$conv3d_47/kernel/Read/ReadVariableOpReadVariableOpconv3d_47/kernel**
_output_shapes
:  *
dtype0
t
conv3d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_47/bias
m
"conv3d_47/bias/Read/ReadVariableOpReadVariableOpconv3d_47/bias*
_output_shapes
: *
dtype0
�
conv3d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv3d_48/kernel
�
$conv3d_48/kernel/Read/ReadVariableOpReadVariableOpconv3d_48/kernel**
_output_shapes
:  *
dtype0
t
conv3d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_48/bias
m
"conv3d_48/bias/Read/ReadVariableOpReadVariableOpconv3d_48/bias*
_output_shapes
: *
dtype0
�
conv3d_transpose_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv3d_transpose_7/kernel
�
-conv3d_transpose_7/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_7/kernel**
_output_shapes
: *
dtype0
�
conv3d_transpose_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv3d_transpose_7/bias

+conv3d_transpose_7/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_7/bias*
_output_shapes
:*
dtype0
�
conv3d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_49/kernel
�
$conv3d_49/kernel/Read/ReadVariableOpReadVariableOpconv3d_49/kernel**
_output_shapes
:*
dtype0
t
conv3d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_49/bias
m
"conv3d_49/bias/Read/ReadVariableOpReadVariableOpconv3d_49/bias*
_output_shapes
:*
dtype0
�
conv3d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv3d_50/kernel
�
$conv3d_50/kernel/Read/ReadVariableOpReadVariableOpconv3d_50/kernel**
_output_shapes
: *
dtype0
t
conv3d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_50/bias
m
"conv3d_50/bias/Read/ReadVariableOpReadVariableOpconv3d_50/bias*
_output_shapes
:*
dtype0
�
conv3d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_51/kernel
�
$conv3d_51/kernel/Read/ReadVariableOpReadVariableOpconv3d_51/kernel**
_output_shapes
:*
dtype0
t
conv3d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_51/bias
m
"conv3d_51/bias/Read/ReadVariableOpReadVariableOpconv3d_51/bias*
_output_shapes
:*
dtype0
�
conv3d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_52/kernel
�
$conv3d_52/kernel/Read/ReadVariableOpReadVariableOpconv3d_52/kernel**
_output_shapes
:*
dtype0
t
conv3d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_52/bias
m
"conv3d_52/bias/Read/ReadVariableOpReadVariableOpconv3d_52/bias*
_output_shapes
:*
dtype0
�
conv3d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_53/kernel
�
$conv3d_53/kernel/Read/ReadVariableOpReadVariableOpconv3d_53/kernel**
_output_shapes
:*
dtype0
t
conv3d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_53/bias
m
"conv3d_53/bias/Read/ReadVariableOpReadVariableOpconv3d_53/bias*
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
�
Adam/conv3d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_27/kernel/m
�
+Adam/conv3d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_27/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_27/bias/m
{
)Adam/conv3d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_27/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_28/kernel/m
�
+Adam/conv3d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_28/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_28/bias/m
{
)Adam/conv3d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_28/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv3d_29/kernel/m
�
+Adam/conv3d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_29/kernel/m**
_output_shapes
: *
dtype0
�
Adam/conv3d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_29/bias/m
{
)Adam/conv3d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_29/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_30/kernel/m
�
+Adam/conv3d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_30/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_30/bias/m
{
)Adam/conv3d_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_30/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv3d_31/kernel/m
�
+Adam/conv3d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_31/kernel/m**
_output_shapes
: @*
dtype0
�
Adam/conv3d_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_31/bias/m
{
)Adam/conv3d_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_31/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_32/kernel/m
�
+Adam/conv3d_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_32/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_32/bias/m
{
)Adam/conv3d_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_32/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*(
shared_nameAdam/conv3d_33/kernel/m
�
+Adam/conv3d_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_33/kernel/m*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_33/bias/m
|
)Adam/conv3d_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_33/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_34/kernel/m
�
+Adam/conv3d_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_34/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_34/bias/m
|
)Adam/conv3d_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_34/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_35/kernel/m
�
+Adam/conv3d_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_35/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_35/bias/m
|
)Adam/conv3d_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_35/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_36/kernel/m
�
+Adam/conv3d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_36/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_36/bias/m
|
)Adam/conv3d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_36/bias/m*
_output_shapes	
:�*
dtype0
�
 Adam/conv3d_transpose_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*1
shared_name" Adam/conv3d_transpose_4/kernel/m
�
4Adam/conv3d_transpose_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_4/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_transpose_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/conv3d_transpose_4/bias/m
�
2Adam/conv3d_transpose_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_4/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_37/kernel/m
�
+Adam/conv3d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_37/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_37/bias/m
|
)Adam/conv3d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_37/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_38/kernel/m
�
+Adam/conv3d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_38/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_38/bias/m
|
)Adam/conv3d_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_38/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_39/kernel/m
�
+Adam/conv3d_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_39/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_39/bias/m
|
)Adam/conv3d_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_39/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_40/kernel/m
�
+Adam/conv3d_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_40/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_40/bias/m
|
)Adam/conv3d_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_40/bias/m*
_output_shapes	
:�*
dtype0
�
 Adam/conv3d_transpose_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*1
shared_name" Adam/conv3d_transpose_5/kernel/m
�
4Adam/conv3d_transpose_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_5/kernel/m*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_transpose_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv3d_transpose_5/bias/m
�
2Adam/conv3d_transpose_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_5/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_41/kernel/m
�
+Adam/conv3d_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_41/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_41/bias/m
{
)Adam/conv3d_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_41/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:�@*(
shared_nameAdam/conv3d_42/kernel/m
�
+Adam/conv3d_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_42/kernel/m*+
_output_shapes
:�@*
dtype0
�
Adam/conv3d_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_42/bias/m
{
)Adam/conv3d_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_42/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_43/kernel/m
�
+Adam/conv3d_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_43/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_43/bias/m
{
)Adam/conv3d_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_43/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_44/kernel/m
�
+Adam/conv3d_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_44/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_44/bias/m
{
)Adam/conv3d_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_44/bias/m*
_output_shapes
:@*
dtype0
�
 Adam/conv3d_transpose_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv3d_transpose_6/kernel/m
�
4Adam/conv3d_transpose_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_6/kernel/m**
_output_shapes
: @*
dtype0
�
Adam/conv3d_transpose_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv3d_transpose_6/bias/m
�
2Adam/conv3d_transpose_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_6/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_45/kernel/m
�
+Adam/conv3d_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_45/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_45/bias/m
{
)Adam/conv3d_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_45/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv3d_46/kernel/m
�
+Adam/conv3d_46/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_46/kernel/m**
_output_shapes
:@ *
dtype0
�
Adam/conv3d_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_46/bias/m
{
)Adam/conv3d_46/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_46/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_47/kernel/m
�
+Adam/conv3d_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_47/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_47/bias/m
{
)Adam/conv3d_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_47/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_48/kernel/m
�
+Adam/conv3d_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_48/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_48/bias/m
{
)Adam/conv3d_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_48/bias/m*
_output_shapes
: *
dtype0
�
 Adam/conv3d_transpose_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv3d_transpose_7/kernel/m
�
4Adam/conv3d_transpose_7/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_7/kernel/m**
_output_shapes
: *
dtype0
�
Adam/conv3d_transpose_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv3d_transpose_7/bias/m
�
2Adam/conv3d_transpose_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_7/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_49/kernel/m
�
+Adam/conv3d_49/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_49/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_49/bias/m
{
)Adam/conv3d_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_49/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv3d_50/kernel/m
�
+Adam/conv3d_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_50/kernel/m**
_output_shapes
: *
dtype0
�
Adam/conv3d_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_50/bias/m
{
)Adam/conv3d_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_50/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_51/kernel/m
�
+Adam/conv3d_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_51/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_51/bias/m
{
)Adam/conv3d_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_51/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_52/kernel/m
�
+Adam/conv3d_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_52/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_52/bias/m
{
)Adam/conv3d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_52/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_53/kernel/m
�
+Adam/conv3d_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_53/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_53/bias/m
{
)Adam/conv3d_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_53/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_27/kernel/v
�
+Adam/conv3d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_27/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_27/bias/v
{
)Adam/conv3d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_27/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_28/kernel/v
�
+Adam/conv3d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_28/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_28/bias/v
{
)Adam/conv3d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_28/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv3d_29/kernel/v
�
+Adam/conv3d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_29/kernel/v**
_output_shapes
: *
dtype0
�
Adam/conv3d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_29/bias/v
{
)Adam/conv3d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_29/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_30/kernel/v
�
+Adam/conv3d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_30/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_30/bias/v
{
)Adam/conv3d_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_30/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv3d_31/kernel/v
�
+Adam/conv3d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_31/kernel/v**
_output_shapes
: @*
dtype0
�
Adam/conv3d_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_31/bias/v
{
)Adam/conv3d_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_31/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_32/kernel/v
�
+Adam/conv3d_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_32/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_32/bias/v
{
)Adam/conv3d_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_32/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*(
shared_nameAdam/conv3d_33/kernel/v
�
+Adam/conv3d_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_33/kernel/v*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_33/bias/v
|
)Adam/conv3d_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_33/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_34/kernel/v
�
+Adam/conv3d_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_34/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_34/bias/v
|
)Adam/conv3d_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_34/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_35/kernel/v
�
+Adam/conv3d_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_35/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_35/bias/v
|
)Adam/conv3d_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_35/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_36/kernel/v
�
+Adam/conv3d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_36/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_36/bias/v
|
)Adam/conv3d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_36/bias/v*
_output_shapes	
:�*
dtype0
�
 Adam/conv3d_transpose_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*1
shared_name" Adam/conv3d_transpose_4/kernel/v
�
4Adam/conv3d_transpose_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_4/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_transpose_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/conv3d_transpose_4/bias/v
�
2Adam/conv3d_transpose_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_4/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_37/kernel/v
�
+Adam/conv3d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_37/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_37/bias/v
|
)Adam/conv3d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_37/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_38/kernel/v
�
+Adam/conv3d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_38/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_38/bias/v
|
)Adam/conv3d_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_38/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_39/kernel/v
�
+Adam/conv3d_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_39/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_39/bias/v
|
)Adam/conv3d_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_39/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*(
shared_nameAdam/conv3d_40/kernel/v
�
+Adam/conv3d_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_40/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv3d_40/bias/v
|
)Adam/conv3d_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_40/bias/v*
_output_shapes	
:�*
dtype0
�
 Adam/conv3d_transpose_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*1
shared_name" Adam/conv3d_transpose_5/kernel/v
�
4Adam/conv3d_transpose_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_5/kernel/v*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_transpose_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv3d_transpose_5/bias/v
�
2Adam/conv3d_transpose_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_5/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_41/kernel/v
�
+Adam/conv3d_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_41/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_41/bias/v
{
)Adam/conv3d_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_41/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:�@*(
shared_nameAdam/conv3d_42/kernel/v
�
+Adam/conv3d_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_42/kernel/v*+
_output_shapes
:�@*
dtype0
�
Adam/conv3d_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_42/bias/v
{
)Adam/conv3d_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_42/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_43/kernel/v
�
+Adam/conv3d_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_43/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_43/bias/v
{
)Adam/conv3d_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_43/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv3d_44/kernel/v
�
+Adam/conv3d_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_44/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv3d_44/bias/v
{
)Adam/conv3d_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_44/bias/v*
_output_shapes
:@*
dtype0
�
 Adam/conv3d_transpose_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv3d_transpose_6/kernel/v
�
4Adam/conv3d_transpose_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_6/kernel/v**
_output_shapes
: @*
dtype0
�
Adam/conv3d_transpose_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv3d_transpose_6/bias/v
�
2Adam/conv3d_transpose_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_6/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_45/kernel/v
�
+Adam/conv3d_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_45/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_45/bias/v
{
)Adam/conv3d_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_45/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv3d_46/kernel/v
�
+Adam/conv3d_46/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_46/kernel/v**
_output_shapes
:@ *
dtype0
�
Adam/conv3d_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_46/bias/v
{
)Adam/conv3d_46/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_46/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_47/kernel/v
�
+Adam/conv3d_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_47/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_47/bias/v
{
)Adam/conv3d_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_47/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv3d_48/kernel/v
�
+Adam/conv3d_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_48/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv3d_48/bias/v
{
)Adam/conv3d_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_48/bias/v*
_output_shapes
: *
dtype0
�
 Adam/conv3d_transpose_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv3d_transpose_7/kernel/v
�
4Adam/conv3d_transpose_7/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv3d_transpose_7/kernel/v**
_output_shapes
: *
dtype0
�
Adam/conv3d_transpose_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv3d_transpose_7/bias/v
�
2Adam/conv3d_transpose_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_7/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_49/kernel/v
�
+Adam/conv3d_49/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_49/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_49/bias/v
{
)Adam/conv3d_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_49/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv3d_50/kernel/v
�
+Adam/conv3d_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_50/kernel/v**
_output_shapes
: *
dtype0
�
Adam/conv3d_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_50/bias/v
{
)Adam/conv3d_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_50/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_51/kernel/v
�
+Adam/conv3d_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_51/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_51/bias/v
{
)Adam/conv3d_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_51/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_52/kernel/v
�
+Adam/conv3d_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_52/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_52/bias/v
{
)Adam/conv3d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_52/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_53/kernel/v
�
+Adam/conv3d_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_53/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_53/bias/v
{
)Adam/conv3d_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_53/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ȇ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B� B�
�
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
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
�

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
�

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
�

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses*
�

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses*
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
�

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
�

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
�

}kernel
~bias
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate;m�<m�Cm�Dm�Qm�Rm�Ym�Zm�gm�hm�om�pm�}m�~m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�;v�<v�Cv�Dv�Qv�Rv�Yv�Zv�gv�hv�ov�pv�}v�~v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�*
* 
�
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
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61*
�
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
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_27/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_27/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

;0
<1*

;0
<1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv3d_28/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_28/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_29/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_29/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

Q0
R1*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv3d_30/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_30/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

Y0
Z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_31/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_31/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv3d_32/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_32/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_33/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_33/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

}0
~1*

}0
~1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv3d_34/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_34/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_35/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_35/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv3d_36/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_36/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
jd
VARIABLE_VALUEconv3d_transpose_4/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv3d_transpose_4/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_37/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_37/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_38/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_38/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_39/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_39/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_40/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_40/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
jd
VARIABLE_VALUEconv3d_transpose_5/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv3d_transpose_5/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_41/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_41/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_42/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_42/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_43/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_43/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_44/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_44/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
jd
VARIABLE_VALUEconv3d_transpose_6/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv3d_transpose_6/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_45/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_45/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_46/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_46/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_47/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_47/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_48/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_48/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
jd
VARIABLE_VALUEconv3d_transpose_7/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv3d_transpose_7/bias5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_49/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_49/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_50/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_50/bias5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_51/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_51/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv3d_52/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_52/bias5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv3d_53/kernel7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_53/bias5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
�
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
�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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

�total

�count
�	variables
�	keras_api*
<

�total

�count
�	variables
�	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
�}
VARIABLE_VALUEAdam/conv3d_27/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_27/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_28/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_28/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_29/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_29/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_30/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_30/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_31/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_31/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_32/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_32/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_33/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_33/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_34/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_34/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_35/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_35/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_36/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_36/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_4/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_4/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_37/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_37/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_38/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_38/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_39/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_39/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_40/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_40/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_5/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_5/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_41/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_41/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_42/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_42/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_43/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_43/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_44/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_44/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_6/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_6/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_45/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_45/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_46/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_46/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_47/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_47/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_48/kernel/mSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_48/bias/mQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_7/kernel/mSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_7/bias/mQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_49/kernel/mSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_49/bias/mQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_50/kernel/mSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_50/bias/mQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_51/kernel/mSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_51/bias/mQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_52/kernel/mSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_52/bias/mQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_53/kernel/mSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_53/bias/mQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_27/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_27/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_28/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_28/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_29/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_29/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_30/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_30/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_31/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_31/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_32/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_32/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_33/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_33/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_34/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_34/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_35/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_35/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv3d_36/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_36/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_4/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_4/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_37/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_37/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_38/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_38/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_39/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_39/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_40/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_40/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_5/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_5/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_41/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_41/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_42/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_42/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_43/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_43/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_44/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_44/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_6/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_6/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_45/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_45/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_46/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_46/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_47/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_47/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_48/kernel/vSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_48/bias/vQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/conv3d_transpose_7/kernel/vSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_7/bias/vQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_49/kernel/vSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_49/bias/vQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_50/kernel/vSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_50/bias/vQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_51/kernel/vSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_51/bias/vQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_52/kernel/vSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_52/bias/vQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_53/kernel/vSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_53/bias/vQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_2Placeholder*N
_output_shapes<
::8������������������������������������*
dtype0*C
shape::8������������������������������������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv3d_27/kernelconv3d_27/biasconv3d_28/kernelconv3d_28/biasconv3d_29/kernelconv3d_29/biasconv3d_30/kernelconv3d_30/biasconv3d_31/kernelconv3d_31/biasconv3d_32/kernelconv3d_32/biasconv3d_33/kernelconv3d_33/biasconv3d_34/kernelconv3d_34/biasconv3d_35/kernelconv3d_35/biasconv3d_36/kernelconv3d_36/biasconv3d_transpose_4/kernelconv3d_transpose_4/biasconv3d_37/kernelconv3d_37/biasconv3d_38/kernelconv3d_38/biasconv3d_39/kernelconv3d_39/biasconv3d_40/kernelconv3d_40/biasconv3d_transpose_5/kernelconv3d_transpose_5/biasconv3d_41/kernelconv3d_41/biasconv3d_42/kernelconv3d_42/biasconv3d_43/kernelconv3d_43/biasconv3d_44/kernelconv3d_44/biasconv3d_transpose_6/kernelconv3d_transpose_6/biasconv3d_45/kernelconv3d_45/biasconv3d_46/kernelconv3d_46/biasconv3d_47/kernelconv3d_47/biasconv3d_48/kernelconv3d_48/biasconv3d_transpose_7/kernelconv3d_transpose_7/biasconv3d_49/kernelconv3d_49/biasconv3d_50/kernelconv3d_50/biasconv3d_51/kernelconv3d_51/biasconv3d_52/kernelconv3d_52/biasconv3d_53/kernelconv3d_53/bias*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_58156
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�D
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_27/kernel/Read/ReadVariableOp"conv3d_27/bias/Read/ReadVariableOp$conv3d_28/kernel/Read/ReadVariableOp"conv3d_28/bias/Read/ReadVariableOp$conv3d_29/kernel/Read/ReadVariableOp"conv3d_29/bias/Read/ReadVariableOp$conv3d_30/kernel/Read/ReadVariableOp"conv3d_30/bias/Read/ReadVariableOp$conv3d_31/kernel/Read/ReadVariableOp"conv3d_31/bias/Read/ReadVariableOp$conv3d_32/kernel/Read/ReadVariableOp"conv3d_32/bias/Read/ReadVariableOp$conv3d_33/kernel/Read/ReadVariableOp"conv3d_33/bias/Read/ReadVariableOp$conv3d_34/kernel/Read/ReadVariableOp"conv3d_34/bias/Read/ReadVariableOp$conv3d_35/kernel/Read/ReadVariableOp"conv3d_35/bias/Read/ReadVariableOp$conv3d_36/kernel/Read/ReadVariableOp"conv3d_36/bias/Read/ReadVariableOp-conv3d_transpose_4/kernel/Read/ReadVariableOp+conv3d_transpose_4/bias/Read/ReadVariableOp$conv3d_37/kernel/Read/ReadVariableOp"conv3d_37/bias/Read/ReadVariableOp$conv3d_38/kernel/Read/ReadVariableOp"conv3d_38/bias/Read/ReadVariableOp$conv3d_39/kernel/Read/ReadVariableOp"conv3d_39/bias/Read/ReadVariableOp$conv3d_40/kernel/Read/ReadVariableOp"conv3d_40/bias/Read/ReadVariableOp-conv3d_transpose_5/kernel/Read/ReadVariableOp+conv3d_transpose_5/bias/Read/ReadVariableOp$conv3d_41/kernel/Read/ReadVariableOp"conv3d_41/bias/Read/ReadVariableOp$conv3d_42/kernel/Read/ReadVariableOp"conv3d_42/bias/Read/ReadVariableOp$conv3d_43/kernel/Read/ReadVariableOp"conv3d_43/bias/Read/ReadVariableOp$conv3d_44/kernel/Read/ReadVariableOp"conv3d_44/bias/Read/ReadVariableOp-conv3d_transpose_6/kernel/Read/ReadVariableOp+conv3d_transpose_6/bias/Read/ReadVariableOp$conv3d_45/kernel/Read/ReadVariableOp"conv3d_45/bias/Read/ReadVariableOp$conv3d_46/kernel/Read/ReadVariableOp"conv3d_46/bias/Read/ReadVariableOp$conv3d_47/kernel/Read/ReadVariableOp"conv3d_47/bias/Read/ReadVariableOp$conv3d_48/kernel/Read/ReadVariableOp"conv3d_48/bias/Read/ReadVariableOp-conv3d_transpose_7/kernel/Read/ReadVariableOp+conv3d_transpose_7/bias/Read/ReadVariableOp$conv3d_49/kernel/Read/ReadVariableOp"conv3d_49/bias/Read/ReadVariableOp$conv3d_50/kernel/Read/ReadVariableOp"conv3d_50/bias/Read/ReadVariableOp$conv3d_51/kernel/Read/ReadVariableOp"conv3d_51/bias/Read/ReadVariableOp$conv3d_52/kernel/Read/ReadVariableOp"conv3d_52/bias/Read/ReadVariableOp$conv3d_53/kernel/Read/ReadVariableOp"conv3d_53/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv3d_27/kernel/m/Read/ReadVariableOp)Adam/conv3d_27/bias/m/Read/ReadVariableOp+Adam/conv3d_28/kernel/m/Read/ReadVariableOp)Adam/conv3d_28/bias/m/Read/ReadVariableOp+Adam/conv3d_29/kernel/m/Read/ReadVariableOp)Adam/conv3d_29/bias/m/Read/ReadVariableOp+Adam/conv3d_30/kernel/m/Read/ReadVariableOp)Adam/conv3d_30/bias/m/Read/ReadVariableOp+Adam/conv3d_31/kernel/m/Read/ReadVariableOp)Adam/conv3d_31/bias/m/Read/ReadVariableOp+Adam/conv3d_32/kernel/m/Read/ReadVariableOp)Adam/conv3d_32/bias/m/Read/ReadVariableOp+Adam/conv3d_33/kernel/m/Read/ReadVariableOp)Adam/conv3d_33/bias/m/Read/ReadVariableOp+Adam/conv3d_34/kernel/m/Read/ReadVariableOp)Adam/conv3d_34/bias/m/Read/ReadVariableOp+Adam/conv3d_35/kernel/m/Read/ReadVariableOp)Adam/conv3d_35/bias/m/Read/ReadVariableOp+Adam/conv3d_36/kernel/m/Read/ReadVariableOp)Adam/conv3d_36/bias/m/Read/ReadVariableOp4Adam/conv3d_transpose_4/kernel/m/Read/ReadVariableOp2Adam/conv3d_transpose_4/bias/m/Read/ReadVariableOp+Adam/conv3d_37/kernel/m/Read/ReadVariableOp)Adam/conv3d_37/bias/m/Read/ReadVariableOp+Adam/conv3d_38/kernel/m/Read/ReadVariableOp)Adam/conv3d_38/bias/m/Read/ReadVariableOp+Adam/conv3d_39/kernel/m/Read/ReadVariableOp)Adam/conv3d_39/bias/m/Read/ReadVariableOp+Adam/conv3d_40/kernel/m/Read/ReadVariableOp)Adam/conv3d_40/bias/m/Read/ReadVariableOp4Adam/conv3d_transpose_5/kernel/m/Read/ReadVariableOp2Adam/conv3d_transpose_5/bias/m/Read/ReadVariableOp+Adam/conv3d_41/kernel/m/Read/ReadVariableOp)Adam/conv3d_41/bias/m/Read/ReadVariableOp+Adam/conv3d_42/kernel/m/Read/ReadVariableOp)Adam/conv3d_42/bias/m/Read/ReadVariableOp+Adam/conv3d_43/kernel/m/Read/ReadVariableOp)Adam/conv3d_43/bias/m/Read/ReadVariableOp+Adam/conv3d_44/kernel/m/Read/ReadVariableOp)Adam/conv3d_44/bias/m/Read/ReadVariableOp4Adam/conv3d_transpose_6/kernel/m/Read/ReadVariableOp2Adam/conv3d_transpose_6/bias/m/Read/ReadVariableOp+Adam/conv3d_45/kernel/m/Read/ReadVariableOp)Adam/conv3d_45/bias/m/Read/ReadVariableOp+Adam/conv3d_46/kernel/m/Read/ReadVariableOp)Adam/conv3d_46/bias/m/Read/ReadVariableOp+Adam/conv3d_47/kernel/m/Read/ReadVariableOp)Adam/conv3d_47/bias/m/Read/ReadVariableOp+Adam/conv3d_48/kernel/m/Read/ReadVariableOp)Adam/conv3d_48/bias/m/Read/ReadVariableOp4Adam/conv3d_transpose_7/kernel/m/Read/ReadVariableOp2Adam/conv3d_transpose_7/bias/m/Read/ReadVariableOp+Adam/conv3d_49/kernel/m/Read/ReadVariableOp)Adam/conv3d_49/bias/m/Read/ReadVariableOp+Adam/conv3d_50/kernel/m/Read/ReadVariableOp)Adam/conv3d_50/bias/m/Read/ReadVariableOp+Adam/conv3d_51/kernel/m/Read/ReadVariableOp)Adam/conv3d_51/bias/m/Read/ReadVariableOp+Adam/conv3d_52/kernel/m/Read/ReadVariableOp)Adam/conv3d_52/bias/m/Read/ReadVariableOp+Adam/conv3d_53/kernel/m/Read/ReadVariableOp)Adam/conv3d_53/bias/m/Read/ReadVariableOp+Adam/conv3d_27/kernel/v/Read/ReadVariableOp)Adam/conv3d_27/bias/v/Read/ReadVariableOp+Adam/conv3d_28/kernel/v/Read/ReadVariableOp)Adam/conv3d_28/bias/v/Read/ReadVariableOp+Adam/conv3d_29/kernel/v/Read/ReadVariableOp)Adam/conv3d_29/bias/v/Read/ReadVariableOp+Adam/conv3d_30/kernel/v/Read/ReadVariableOp)Adam/conv3d_30/bias/v/Read/ReadVariableOp+Adam/conv3d_31/kernel/v/Read/ReadVariableOp)Adam/conv3d_31/bias/v/Read/ReadVariableOp+Adam/conv3d_32/kernel/v/Read/ReadVariableOp)Adam/conv3d_32/bias/v/Read/ReadVariableOp+Adam/conv3d_33/kernel/v/Read/ReadVariableOp)Adam/conv3d_33/bias/v/Read/ReadVariableOp+Adam/conv3d_34/kernel/v/Read/ReadVariableOp)Adam/conv3d_34/bias/v/Read/ReadVariableOp+Adam/conv3d_35/kernel/v/Read/ReadVariableOp)Adam/conv3d_35/bias/v/Read/ReadVariableOp+Adam/conv3d_36/kernel/v/Read/ReadVariableOp)Adam/conv3d_36/bias/v/Read/ReadVariableOp4Adam/conv3d_transpose_4/kernel/v/Read/ReadVariableOp2Adam/conv3d_transpose_4/bias/v/Read/ReadVariableOp+Adam/conv3d_37/kernel/v/Read/ReadVariableOp)Adam/conv3d_37/bias/v/Read/ReadVariableOp+Adam/conv3d_38/kernel/v/Read/ReadVariableOp)Adam/conv3d_38/bias/v/Read/ReadVariableOp+Adam/conv3d_39/kernel/v/Read/ReadVariableOp)Adam/conv3d_39/bias/v/Read/ReadVariableOp+Adam/conv3d_40/kernel/v/Read/ReadVariableOp)Adam/conv3d_40/bias/v/Read/ReadVariableOp4Adam/conv3d_transpose_5/kernel/v/Read/ReadVariableOp2Adam/conv3d_transpose_5/bias/v/Read/ReadVariableOp+Adam/conv3d_41/kernel/v/Read/ReadVariableOp)Adam/conv3d_41/bias/v/Read/ReadVariableOp+Adam/conv3d_42/kernel/v/Read/ReadVariableOp)Adam/conv3d_42/bias/v/Read/ReadVariableOp+Adam/conv3d_43/kernel/v/Read/ReadVariableOp)Adam/conv3d_43/bias/v/Read/ReadVariableOp+Adam/conv3d_44/kernel/v/Read/ReadVariableOp)Adam/conv3d_44/bias/v/Read/ReadVariableOp4Adam/conv3d_transpose_6/kernel/v/Read/ReadVariableOp2Adam/conv3d_transpose_6/bias/v/Read/ReadVariableOp+Adam/conv3d_45/kernel/v/Read/ReadVariableOp)Adam/conv3d_45/bias/v/Read/ReadVariableOp+Adam/conv3d_46/kernel/v/Read/ReadVariableOp)Adam/conv3d_46/bias/v/Read/ReadVariableOp+Adam/conv3d_47/kernel/v/Read/ReadVariableOp)Adam/conv3d_47/bias/v/Read/ReadVariableOp+Adam/conv3d_48/kernel/v/Read/ReadVariableOp)Adam/conv3d_48/bias/v/Read/ReadVariableOp4Adam/conv3d_transpose_7/kernel/v/Read/ReadVariableOp2Adam/conv3d_transpose_7/bias/v/Read/ReadVariableOp+Adam/conv3d_49/kernel/v/Read/ReadVariableOp)Adam/conv3d_49/bias/v/Read/ReadVariableOp+Adam/conv3d_50/kernel/v/Read/ReadVariableOp)Adam/conv3d_50/bias/v/Read/ReadVariableOp+Adam/conv3d_51/kernel/v/Read/ReadVariableOp)Adam/conv3d_51/bias/v/Read/ReadVariableOp+Adam/conv3d_52/kernel/v/Read/ReadVariableOp)Adam/conv3d_52/bias/v/Read/ReadVariableOp+Adam/conv3d_53/kernel/v/Read/ReadVariableOp)Adam/conv3d_53/bias/v/Read/ReadVariableOpConst*�
Tin�
�2�	*
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
GPU2*0J 8� *'
f"R 
__inference__traced_save_59601
�%
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_27/kernelconv3d_27/biasconv3d_28/kernelconv3d_28/biasconv3d_29/kernelconv3d_29/biasconv3d_30/kernelconv3d_30/biasconv3d_31/kernelconv3d_31/biasconv3d_32/kernelconv3d_32/biasconv3d_33/kernelconv3d_33/biasconv3d_34/kernelconv3d_34/biasconv3d_35/kernelconv3d_35/biasconv3d_36/kernelconv3d_36/biasconv3d_transpose_4/kernelconv3d_transpose_4/biasconv3d_37/kernelconv3d_37/biasconv3d_38/kernelconv3d_38/biasconv3d_39/kernelconv3d_39/biasconv3d_40/kernelconv3d_40/biasconv3d_transpose_5/kernelconv3d_transpose_5/biasconv3d_41/kernelconv3d_41/biasconv3d_42/kernelconv3d_42/biasconv3d_43/kernelconv3d_43/biasconv3d_44/kernelconv3d_44/biasconv3d_transpose_6/kernelconv3d_transpose_6/biasconv3d_45/kernelconv3d_45/biasconv3d_46/kernelconv3d_46/biasconv3d_47/kernelconv3d_47/biasconv3d_48/kernelconv3d_48/biasconv3d_transpose_7/kernelconv3d_transpose_7/biasconv3d_49/kernelconv3d_49/biasconv3d_50/kernelconv3d_50/biasconv3d_51/kernelconv3d_51/biasconv3d_52/kernelconv3d_52/biasconv3d_53/kernelconv3d_53/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_27/kernel/mAdam/conv3d_27/bias/mAdam/conv3d_28/kernel/mAdam/conv3d_28/bias/mAdam/conv3d_29/kernel/mAdam/conv3d_29/bias/mAdam/conv3d_30/kernel/mAdam/conv3d_30/bias/mAdam/conv3d_31/kernel/mAdam/conv3d_31/bias/mAdam/conv3d_32/kernel/mAdam/conv3d_32/bias/mAdam/conv3d_33/kernel/mAdam/conv3d_33/bias/mAdam/conv3d_34/kernel/mAdam/conv3d_34/bias/mAdam/conv3d_35/kernel/mAdam/conv3d_35/bias/mAdam/conv3d_36/kernel/mAdam/conv3d_36/bias/m Adam/conv3d_transpose_4/kernel/mAdam/conv3d_transpose_4/bias/mAdam/conv3d_37/kernel/mAdam/conv3d_37/bias/mAdam/conv3d_38/kernel/mAdam/conv3d_38/bias/mAdam/conv3d_39/kernel/mAdam/conv3d_39/bias/mAdam/conv3d_40/kernel/mAdam/conv3d_40/bias/m Adam/conv3d_transpose_5/kernel/mAdam/conv3d_transpose_5/bias/mAdam/conv3d_41/kernel/mAdam/conv3d_41/bias/mAdam/conv3d_42/kernel/mAdam/conv3d_42/bias/mAdam/conv3d_43/kernel/mAdam/conv3d_43/bias/mAdam/conv3d_44/kernel/mAdam/conv3d_44/bias/m Adam/conv3d_transpose_6/kernel/mAdam/conv3d_transpose_6/bias/mAdam/conv3d_45/kernel/mAdam/conv3d_45/bias/mAdam/conv3d_46/kernel/mAdam/conv3d_46/bias/mAdam/conv3d_47/kernel/mAdam/conv3d_47/bias/mAdam/conv3d_48/kernel/mAdam/conv3d_48/bias/m Adam/conv3d_transpose_7/kernel/mAdam/conv3d_transpose_7/bias/mAdam/conv3d_49/kernel/mAdam/conv3d_49/bias/mAdam/conv3d_50/kernel/mAdam/conv3d_50/bias/mAdam/conv3d_51/kernel/mAdam/conv3d_51/bias/mAdam/conv3d_52/kernel/mAdam/conv3d_52/bias/mAdam/conv3d_53/kernel/mAdam/conv3d_53/bias/mAdam/conv3d_27/kernel/vAdam/conv3d_27/bias/vAdam/conv3d_28/kernel/vAdam/conv3d_28/bias/vAdam/conv3d_29/kernel/vAdam/conv3d_29/bias/vAdam/conv3d_30/kernel/vAdam/conv3d_30/bias/vAdam/conv3d_31/kernel/vAdam/conv3d_31/bias/vAdam/conv3d_32/kernel/vAdam/conv3d_32/bias/vAdam/conv3d_33/kernel/vAdam/conv3d_33/bias/vAdam/conv3d_34/kernel/vAdam/conv3d_34/bias/vAdam/conv3d_35/kernel/vAdam/conv3d_35/bias/vAdam/conv3d_36/kernel/vAdam/conv3d_36/bias/v Adam/conv3d_transpose_4/kernel/vAdam/conv3d_transpose_4/bias/vAdam/conv3d_37/kernel/vAdam/conv3d_37/bias/vAdam/conv3d_38/kernel/vAdam/conv3d_38/bias/vAdam/conv3d_39/kernel/vAdam/conv3d_39/bias/vAdam/conv3d_40/kernel/vAdam/conv3d_40/bias/v Adam/conv3d_transpose_5/kernel/vAdam/conv3d_transpose_5/bias/vAdam/conv3d_41/kernel/vAdam/conv3d_41/bias/vAdam/conv3d_42/kernel/vAdam/conv3d_42/bias/vAdam/conv3d_43/kernel/vAdam/conv3d_43/bias/vAdam/conv3d_44/kernel/vAdam/conv3d_44/bias/v Adam/conv3d_transpose_6/kernel/vAdam/conv3d_transpose_6/bias/vAdam/conv3d_45/kernel/vAdam/conv3d_45/bias/vAdam/conv3d_46/kernel/vAdam/conv3d_46/bias/vAdam/conv3d_47/kernel/vAdam/conv3d_47/bias/vAdam/conv3d_48/kernel/vAdam/conv3d_48/bias/v Adam/conv3d_transpose_7/kernel/vAdam/conv3d_transpose_7/bias/vAdam/conv3d_49/kernel/vAdam/conv3d_49/bias/vAdam/conv3d_50/kernel/vAdam/conv3d_50/bias/vAdam/conv3d_51/kernel/vAdam/conv3d_51/bias/vAdam/conv3d_52/kernel/vAdam/conv3d_52/bias/vAdam/conv3d_53/kernel/vAdam/conv3d_53/bias/v*�
Tin�
�2�*
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
GPU2*0J 8� **
f%R#
!__inference__traced_restore_60196��'
�
�
D__inference_conv3d_49_layer_call_and_return_conditional_losses_55678

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_34_layer_call_and_return_conditional_losses_55375

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_54990

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_42_layer_call_and_return_conditional_losses_58647

inputs=
conv3d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
g
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_58167

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:A����������������������������������������������
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_28_layer_call_fn_58196

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_28_layer_call_and_return_conditional_losses_55270�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_36_layer_call_fn_58396

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_36_layer_call_and_return_conditional_losses_55410�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_42_layer_call_fn_58636

inputs&
unknown:�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_42_layer_call_and_return_conditional_losses_55540�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_52_layer_call_fn_58950

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_52_layer_call_and_return_conditional_losses_55738�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
r
H__inference_concatenate_7_layer_call_and_return_conditional_losses_55691

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ ~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8������������������������������������ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������:8������������������������������������:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs:vr
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_45_layer_call_and_return_conditional_losses_55596

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
K
/__inference_max_pooling3d_5_layer_call_fn_58262

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_55002�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
t
H__inference_concatenate_4_layer_call_and_return_conditional_losses_58490
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9�������������������������������������
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9�������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:9�������������������������������������:9�������������������������������������:y u
O
_output_shapes=
;:9�������������������������������������
"
_user_specified_name
inputs/0:yu
O
_output_shapes=
;:9�������������������������������������
"
_user_specified_name
inputs/1
�
�
D__inference_conv3d_49_layer_call_and_return_conditional_losses_58888

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_48_layer_call_and_return_conditional_losses_55656

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
r
H__inference_concatenate_5_layer_call_and_return_conditional_losses_55527

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9�������������������������������������
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9�������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������@:8������������������������������������@:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs:vr
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_57081
input_2-
conv3d_27_56916:
conv3d_27_56918:-
conv3d_28_56921:
conv3d_28_56923:-
conv3d_29_56927: 
conv3d_29_56929: -
conv3d_30_56932:  
conv3d_30_56934: -
conv3d_31_56938: @
conv3d_31_56940:@-
conv3d_32_56943:@@
conv3d_32_56945:@.
conv3d_33_56949:@�
conv3d_33_56951:	�/
conv3d_34_56954:��
conv3d_34_56956:	�/
conv3d_35_56960:��
conv3d_35_56962:	�/
conv3d_36_56965:��
conv3d_36_56967:	�8
conv3d_transpose_4_56970:��'
conv3d_transpose_4_56972:	�/
conv3d_37_56975:��
conv3d_37_56977:	�/
conv3d_38_56981:��
conv3d_38_56983:	�/
conv3d_39_56986:��
conv3d_39_56988:	�/
conv3d_40_56991:��
conv3d_40_56993:	�7
conv3d_transpose_5_56996:@�&
conv3d_transpose_5_56998:@-
conv3d_41_57001:@@
conv3d_41_57003:@.
conv3d_42_57007:�@
conv3d_42_57009:@-
conv3d_43_57012:@@
conv3d_43_57014:@-
conv3d_44_57017:@@
conv3d_44_57019:@6
conv3d_transpose_6_57022: @&
conv3d_transpose_6_57024: -
conv3d_45_57027:  
conv3d_45_57029: -
conv3d_46_57033:@ 
conv3d_46_57035: -
conv3d_47_57038:  
conv3d_47_57040: -
conv3d_48_57043:  
conv3d_48_57045: 6
conv3d_transpose_7_57048: &
conv3d_transpose_7_57050:-
conv3d_49_57053:
conv3d_49_57055:-
conv3d_50_57059: 
conv3d_50_57061:-
conv3d_51_57064:
conv3d_51_57066:-
conv3d_52_57069:
conv3d_52_57071:-
conv3d_53_57075:
conv3d_53_57077:
identity��!conv3d_27/StatefulPartitionedCall�!conv3d_28/StatefulPartitionedCall�!conv3d_29/StatefulPartitionedCall�!conv3d_30/StatefulPartitionedCall�!conv3d_31/StatefulPartitionedCall�!conv3d_32/StatefulPartitionedCall�!conv3d_33/StatefulPartitionedCall�!conv3d_34/StatefulPartitionedCall�!conv3d_35/StatefulPartitionedCall�!conv3d_36/StatefulPartitionedCall�!conv3d_37/StatefulPartitionedCall�!conv3d_38/StatefulPartitionedCall�!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�!conv3d_44/StatefulPartitionedCall�!conv3d_45/StatefulPartitionedCall�!conv3d_46/StatefulPartitionedCall�!conv3d_47/StatefulPartitionedCall�!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�*conv3d_transpose_4/StatefulPartitionedCall�*conv3d_transpose_5/StatefulPartitionedCall�*conv3d_transpose_6/StatefulPartitionedCall�*conv3d_transpose_7/StatefulPartitionedCall�
 zero_padding3d_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_54978�
!conv3d_27/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_27_56916conv3d_27_56918*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_27_layer_call_and_return_conditional_losses_55253�
!conv3d_28/StatefulPartitionedCallStatefulPartitionedCall*conv3d_27/StatefulPartitionedCall:output:0conv3d_28_56921conv3d_28_56923*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_28_layer_call_and_return_conditional_losses_55270�
max_pooling3d_4/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_54990�
!conv3d_29/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_29_56927conv3d_29_56929*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_29_layer_call_and_return_conditional_losses_55288�
!conv3d_30/StatefulPartitionedCallStatefulPartitionedCall*conv3d_29/StatefulPartitionedCall:output:0conv3d_30_56932conv3d_30_56934*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_30_layer_call_and_return_conditional_losses_55305�
max_pooling3d_5/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_55002�
!conv3d_31/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_5/PartitionedCall:output:0conv3d_31_56938conv3d_31_56940*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_31_layer_call_and_return_conditional_losses_55323�
!conv3d_32/StatefulPartitionedCallStatefulPartitionedCall*conv3d_31/StatefulPartitionedCall:output:0conv3d_32_56943conv3d_32_56945*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_32_layer_call_and_return_conditional_losses_55340�
max_pooling3d_6/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_55014�
!conv3d_33/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_6/PartitionedCall:output:0conv3d_33_56949conv3d_33_56951*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_33_layer_call_and_return_conditional_losses_55358�
!conv3d_34/StatefulPartitionedCallStatefulPartitionedCall*conv3d_33/StatefulPartitionedCall:output:0conv3d_34_56954conv3d_34_56956*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_34_layer_call_and_return_conditional_losses_55375�
max_pooling3d_7/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_55026�
!conv3d_35/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_7/PartitionedCall:output:0conv3d_35_56960conv3d_35_56962*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_35_layer_call_and_return_conditional_losses_55393�
!conv3d_36/StatefulPartitionedCallStatefulPartitionedCall*conv3d_35/StatefulPartitionedCall:output:0conv3d_36_56965conv3d_36_56967*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_36_layer_call_and_return_conditional_losses_55410�
*conv3d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall*conv3d_36/StatefulPartitionedCall:output:0conv3d_transpose_4_56970conv3d_transpose_4_56972*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_55074�
!conv3d_37/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_4/StatefulPartitionedCall:output:0conv3d_37_56975conv3d_37_56977*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_37_layer_call_and_return_conditional_losses_55432�
concatenate_4/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*conv3d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_55445�
!conv3d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv3d_38_56981conv3d_38_56983*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_38_layer_call_and_return_conditional_losses_55458�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCall*conv3d_38/StatefulPartitionedCall:output:0conv3d_39_56986conv3d_39_56988*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_39_layer_call_and_return_conditional_losses_55475�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0conv3d_40_56991conv3d_40_56993*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_40_layer_call_and_return_conditional_losses_55492�
*conv3d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0conv3d_transpose_5_56996conv3d_transpose_5_56998*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_55120�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_5/StatefulPartitionedCall:output:0conv3d_41_57001conv3d_41_57003*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_41_layer_call_and_return_conditional_losses_55514�
concatenate_5/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*conv3d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_55527�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv3d_42_57007conv3d_42_57009*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_42_layer_call_and_return_conditional_losses_55540�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_57012conv3d_43_57014*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_43_layer_call_and_return_conditional_losses_55557�
!conv3d_44/StatefulPartitionedCallStatefulPartitionedCall*conv3d_43/StatefulPartitionedCall:output:0conv3d_44_57017conv3d_44_57019*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_44_layer_call_and_return_conditional_losses_55574�
*conv3d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall*conv3d_44/StatefulPartitionedCall:output:0conv3d_transpose_6_57022conv3d_transpose_6_57024*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_55166�
!conv3d_45/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_6/StatefulPartitionedCall:output:0conv3d_45_57027conv3d_45_57029*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_45_layer_call_and_return_conditional_losses_55596�
concatenate_6/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*conv3d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_55609�
!conv3d_46/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0conv3d_46_57033conv3d_46_57035*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_46_layer_call_and_return_conditional_losses_55622�
!conv3d_47/StatefulPartitionedCallStatefulPartitionedCall*conv3d_46/StatefulPartitionedCall:output:0conv3d_47_57038conv3d_47_57040*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_47_layer_call_and_return_conditional_losses_55639�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCall*conv3d_47/StatefulPartitionedCall:output:0conv3d_48_57043conv3d_48_57045*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_48_layer_call_and_return_conditional_losses_55656�
*conv3d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0conv3d_transpose_7_57048conv3d_transpose_7_57050*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_55212�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_7/StatefulPartitionedCall:output:0conv3d_49_57053conv3d_49_57055*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_49_layer_call_and_return_conditional_losses_55678�
concatenate_7/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*conv3d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_55691�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0conv3d_50_57059conv3d_50_57061*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_50_layer_call_and_return_conditional_losses_55704�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0conv3d_51_57064conv3d_51_57066*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_51_layer_call_and_return_conditional_losses_55721�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_57069conv3d_52_57071*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_52_layer_call_and_return_conditional_losses_55738�
cropping3d_1/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_55231�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_1/PartitionedCall:output:0conv3d_53_57075conv3d_53_57077*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_53_layer_call_and_return_conditional_losses_55755�
IdentityIdentity*conv3d_53/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp"^conv3d_27/StatefulPartitionedCall"^conv3d_28/StatefulPartitionedCall"^conv3d_29/StatefulPartitionedCall"^conv3d_30/StatefulPartitionedCall"^conv3d_31/StatefulPartitionedCall"^conv3d_32/StatefulPartitionedCall"^conv3d_33/StatefulPartitionedCall"^conv3d_34/StatefulPartitionedCall"^conv3d_35/StatefulPartitionedCall"^conv3d_36/StatefulPartitionedCall"^conv3d_37/StatefulPartitionedCall"^conv3d_38/StatefulPartitionedCall"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall"^conv3d_44/StatefulPartitionedCall"^conv3d_45/StatefulPartitionedCall"^conv3d_46/StatefulPartitionedCall"^conv3d_47/StatefulPartitionedCall"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall+^conv3d_transpose_4/StatefulPartitionedCall+^conv3d_transpose_5/StatefulPartitionedCall+^conv3d_transpose_6/StatefulPartitionedCall+^conv3d_transpose_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_27/StatefulPartitionedCall!conv3d_27/StatefulPartitionedCall2F
!conv3d_28/StatefulPartitionedCall!conv3d_28/StatefulPartitionedCall2F
!conv3d_29/StatefulPartitionedCall!conv3d_29/StatefulPartitionedCall2F
!conv3d_30/StatefulPartitionedCall!conv3d_30/StatefulPartitionedCall2F
!conv3d_31/StatefulPartitionedCall!conv3d_31/StatefulPartitionedCall2F
!conv3d_32/StatefulPartitionedCall!conv3d_32/StatefulPartitionedCall2F
!conv3d_33/StatefulPartitionedCall!conv3d_33/StatefulPartitionedCall2F
!conv3d_34/StatefulPartitionedCall!conv3d_34/StatefulPartitionedCall2F
!conv3d_35/StatefulPartitionedCall!conv3d_35/StatefulPartitionedCall2F
!conv3d_36/StatefulPartitionedCall!conv3d_36/StatefulPartitionedCall2F
!conv3d_37/StatefulPartitionedCall!conv3d_37/StatefulPartitionedCall2F
!conv3d_38/StatefulPartitionedCall!conv3d_38/StatefulPartitionedCall2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2F
!conv3d_44/StatefulPartitionedCall!conv3d_44/StatefulPartitionedCall2F
!conv3d_45/StatefulPartitionedCall!conv3d_45/StatefulPartitionedCall2F
!conv3d_46/StatefulPartitionedCall!conv3d_46/StatefulPartitionedCall2F
!conv3d_47/StatefulPartitionedCall!conv3d_47/StatefulPartitionedCall2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2X
*conv3d_transpose_4/StatefulPartitionedCall*conv3d_transpose_4/StatefulPartitionedCall2X
*conv3d_transpose_5/StatefulPartitionedCall*conv3d_transpose_5/StatefulPartitionedCall2X
*conv3d_transpose_6/StatefulPartitionedCall*conv3d_transpose_6/StatefulPartitionedCall2X
*conv3d_transpose_7/StatefulPartitionedCall*conv3d_transpose_7/StatefulPartitionedCall:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_2
� 
�
'__inference_model_1_layer_call_fn_56743
input_2%
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

unknown_11:@�

unknown_12:	�*

unknown_13:��

unknown_14:	�*

unknown_15:��

unknown_16:	�*

unknown_17:��

unknown_18:	�*

unknown_19:��

unknown_20:	�*

unknown_21:��

unknown_22:	�*

unknown_23:��

unknown_24:	�*

unknown_25:��

unknown_26:	�*

unknown_27:��

unknown_28:	�)

unknown_29:@�

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:�@

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
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
::8������������������������������������*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_56487�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_2
�
�
)__inference_conv3d_45_layer_call_fn_58740

inputs%
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_45_layer_call_and_return_conditional_losses_55596�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
f
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_55026

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_27_layer_call_fn_58176

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_27_layer_call_and_return_conditional_losses_55253�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�"
�
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_55212

inputsF
(conv3d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
)__inference_conv3d_39_layer_call_fn_58519

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_39_layer_call_and_return_conditional_losses_55475�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_46_layer_call_and_return_conditional_losses_58784

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�"
�
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_58868

inputsF
(conv3d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_55762

inputs-
conv3d_27_55254:
conv3d_27_55256:-
conv3d_28_55271:
conv3d_28_55273:-
conv3d_29_55289: 
conv3d_29_55291: -
conv3d_30_55306:  
conv3d_30_55308: -
conv3d_31_55324: @
conv3d_31_55326:@-
conv3d_32_55341:@@
conv3d_32_55343:@.
conv3d_33_55359:@�
conv3d_33_55361:	�/
conv3d_34_55376:��
conv3d_34_55378:	�/
conv3d_35_55394:��
conv3d_35_55396:	�/
conv3d_36_55411:��
conv3d_36_55413:	�8
conv3d_transpose_4_55416:��'
conv3d_transpose_4_55418:	�/
conv3d_37_55433:��
conv3d_37_55435:	�/
conv3d_38_55459:��
conv3d_38_55461:	�/
conv3d_39_55476:��
conv3d_39_55478:	�/
conv3d_40_55493:��
conv3d_40_55495:	�7
conv3d_transpose_5_55498:@�&
conv3d_transpose_5_55500:@-
conv3d_41_55515:@@
conv3d_41_55517:@.
conv3d_42_55541:�@
conv3d_42_55543:@-
conv3d_43_55558:@@
conv3d_43_55560:@-
conv3d_44_55575:@@
conv3d_44_55577:@6
conv3d_transpose_6_55580: @&
conv3d_transpose_6_55582: -
conv3d_45_55597:  
conv3d_45_55599: -
conv3d_46_55623:@ 
conv3d_46_55625: -
conv3d_47_55640:  
conv3d_47_55642: -
conv3d_48_55657:  
conv3d_48_55659: 6
conv3d_transpose_7_55662: &
conv3d_transpose_7_55664:-
conv3d_49_55679:
conv3d_49_55681:-
conv3d_50_55705: 
conv3d_50_55707:-
conv3d_51_55722:
conv3d_51_55724:-
conv3d_52_55739:
conv3d_52_55741:-
conv3d_53_55756:
conv3d_53_55758:
identity��!conv3d_27/StatefulPartitionedCall�!conv3d_28/StatefulPartitionedCall�!conv3d_29/StatefulPartitionedCall�!conv3d_30/StatefulPartitionedCall�!conv3d_31/StatefulPartitionedCall�!conv3d_32/StatefulPartitionedCall�!conv3d_33/StatefulPartitionedCall�!conv3d_34/StatefulPartitionedCall�!conv3d_35/StatefulPartitionedCall�!conv3d_36/StatefulPartitionedCall�!conv3d_37/StatefulPartitionedCall�!conv3d_38/StatefulPartitionedCall�!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�!conv3d_44/StatefulPartitionedCall�!conv3d_45/StatefulPartitionedCall�!conv3d_46/StatefulPartitionedCall�!conv3d_47/StatefulPartitionedCall�!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�*conv3d_transpose_4/StatefulPartitionedCall�*conv3d_transpose_5/StatefulPartitionedCall�*conv3d_transpose_6/StatefulPartitionedCall�*conv3d_transpose_7/StatefulPartitionedCall�
 zero_padding3d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_54978�
!conv3d_27/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_27_55254conv3d_27_55256*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_27_layer_call_and_return_conditional_losses_55253�
!conv3d_28/StatefulPartitionedCallStatefulPartitionedCall*conv3d_27/StatefulPartitionedCall:output:0conv3d_28_55271conv3d_28_55273*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_28_layer_call_and_return_conditional_losses_55270�
max_pooling3d_4/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_54990�
!conv3d_29/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_29_55289conv3d_29_55291*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_29_layer_call_and_return_conditional_losses_55288�
!conv3d_30/StatefulPartitionedCallStatefulPartitionedCall*conv3d_29/StatefulPartitionedCall:output:0conv3d_30_55306conv3d_30_55308*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_30_layer_call_and_return_conditional_losses_55305�
max_pooling3d_5/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_55002�
!conv3d_31/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_5/PartitionedCall:output:0conv3d_31_55324conv3d_31_55326*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_31_layer_call_and_return_conditional_losses_55323�
!conv3d_32/StatefulPartitionedCallStatefulPartitionedCall*conv3d_31/StatefulPartitionedCall:output:0conv3d_32_55341conv3d_32_55343*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_32_layer_call_and_return_conditional_losses_55340�
max_pooling3d_6/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_55014�
!conv3d_33/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_6/PartitionedCall:output:0conv3d_33_55359conv3d_33_55361*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_33_layer_call_and_return_conditional_losses_55358�
!conv3d_34/StatefulPartitionedCallStatefulPartitionedCall*conv3d_33/StatefulPartitionedCall:output:0conv3d_34_55376conv3d_34_55378*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_34_layer_call_and_return_conditional_losses_55375�
max_pooling3d_7/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_55026�
!conv3d_35/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_7/PartitionedCall:output:0conv3d_35_55394conv3d_35_55396*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_35_layer_call_and_return_conditional_losses_55393�
!conv3d_36/StatefulPartitionedCallStatefulPartitionedCall*conv3d_35/StatefulPartitionedCall:output:0conv3d_36_55411conv3d_36_55413*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_36_layer_call_and_return_conditional_losses_55410�
*conv3d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall*conv3d_36/StatefulPartitionedCall:output:0conv3d_transpose_4_55416conv3d_transpose_4_55418*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_55074�
!conv3d_37/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_4/StatefulPartitionedCall:output:0conv3d_37_55433conv3d_37_55435*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_37_layer_call_and_return_conditional_losses_55432�
concatenate_4/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*conv3d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_55445�
!conv3d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv3d_38_55459conv3d_38_55461*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_38_layer_call_and_return_conditional_losses_55458�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCall*conv3d_38/StatefulPartitionedCall:output:0conv3d_39_55476conv3d_39_55478*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_39_layer_call_and_return_conditional_losses_55475�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0conv3d_40_55493conv3d_40_55495*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_40_layer_call_and_return_conditional_losses_55492�
*conv3d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0conv3d_transpose_5_55498conv3d_transpose_5_55500*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_55120�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_5/StatefulPartitionedCall:output:0conv3d_41_55515conv3d_41_55517*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_41_layer_call_and_return_conditional_losses_55514�
concatenate_5/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*conv3d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_55527�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv3d_42_55541conv3d_42_55543*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_42_layer_call_and_return_conditional_losses_55540�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_55558conv3d_43_55560*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_43_layer_call_and_return_conditional_losses_55557�
!conv3d_44/StatefulPartitionedCallStatefulPartitionedCall*conv3d_43/StatefulPartitionedCall:output:0conv3d_44_55575conv3d_44_55577*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_44_layer_call_and_return_conditional_losses_55574�
*conv3d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall*conv3d_44/StatefulPartitionedCall:output:0conv3d_transpose_6_55580conv3d_transpose_6_55582*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_55166�
!conv3d_45/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_6/StatefulPartitionedCall:output:0conv3d_45_55597conv3d_45_55599*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_45_layer_call_and_return_conditional_losses_55596�
concatenate_6/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*conv3d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_55609�
!conv3d_46/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0conv3d_46_55623conv3d_46_55625*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_46_layer_call_and_return_conditional_losses_55622�
!conv3d_47/StatefulPartitionedCallStatefulPartitionedCall*conv3d_46/StatefulPartitionedCall:output:0conv3d_47_55640conv3d_47_55642*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_47_layer_call_and_return_conditional_losses_55639�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCall*conv3d_47/StatefulPartitionedCall:output:0conv3d_48_55657conv3d_48_55659*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_48_layer_call_and_return_conditional_losses_55656�
*conv3d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0conv3d_transpose_7_55662conv3d_transpose_7_55664*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_55212�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_7/StatefulPartitionedCall:output:0conv3d_49_55679conv3d_49_55681*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_49_layer_call_and_return_conditional_losses_55678�
concatenate_7/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*conv3d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_55691�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0conv3d_50_55705conv3d_50_55707*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_50_layer_call_and_return_conditional_losses_55704�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0conv3d_51_55722conv3d_51_55724*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_51_layer_call_and_return_conditional_losses_55721�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_55739conv3d_52_55741*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_52_layer_call_and_return_conditional_losses_55738�
cropping3d_1/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_55231�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_1/PartitionedCall:output:0conv3d_53_55756conv3d_53_55758*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_53_layer_call_and_return_conditional_losses_55755�
IdentityIdentity*conv3d_53/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp"^conv3d_27/StatefulPartitionedCall"^conv3d_28/StatefulPartitionedCall"^conv3d_29/StatefulPartitionedCall"^conv3d_30/StatefulPartitionedCall"^conv3d_31/StatefulPartitionedCall"^conv3d_32/StatefulPartitionedCall"^conv3d_33/StatefulPartitionedCall"^conv3d_34/StatefulPartitionedCall"^conv3d_35/StatefulPartitionedCall"^conv3d_36/StatefulPartitionedCall"^conv3d_37/StatefulPartitionedCall"^conv3d_38/StatefulPartitionedCall"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall"^conv3d_44/StatefulPartitionedCall"^conv3d_45/StatefulPartitionedCall"^conv3d_46/StatefulPartitionedCall"^conv3d_47/StatefulPartitionedCall"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall+^conv3d_transpose_4/StatefulPartitionedCall+^conv3d_transpose_5/StatefulPartitionedCall+^conv3d_transpose_6/StatefulPartitionedCall+^conv3d_transpose_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_27/StatefulPartitionedCall!conv3d_27/StatefulPartitionedCall2F
!conv3d_28/StatefulPartitionedCall!conv3d_28/StatefulPartitionedCall2F
!conv3d_29/StatefulPartitionedCall!conv3d_29/StatefulPartitionedCall2F
!conv3d_30/StatefulPartitionedCall!conv3d_30/StatefulPartitionedCall2F
!conv3d_31/StatefulPartitionedCall!conv3d_31/StatefulPartitionedCall2F
!conv3d_32/StatefulPartitionedCall!conv3d_32/StatefulPartitionedCall2F
!conv3d_33/StatefulPartitionedCall!conv3d_33/StatefulPartitionedCall2F
!conv3d_34/StatefulPartitionedCall!conv3d_34/StatefulPartitionedCall2F
!conv3d_35/StatefulPartitionedCall!conv3d_35/StatefulPartitionedCall2F
!conv3d_36/StatefulPartitionedCall!conv3d_36/StatefulPartitionedCall2F
!conv3d_37/StatefulPartitionedCall!conv3d_37/StatefulPartitionedCall2F
!conv3d_38/StatefulPartitionedCall!conv3d_38/StatefulPartitionedCall2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2F
!conv3d_44/StatefulPartitionedCall!conv3d_44/StatefulPartitionedCall2F
!conv3d_45/StatefulPartitionedCall!conv3d_45/StatefulPartitionedCall2F
!conv3d_46/StatefulPartitionedCall!conv3d_46/StatefulPartitionedCall2F
!conv3d_47/StatefulPartitionedCall!conv3d_47/StatefulPartitionedCall2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2X
*conv3d_transpose_4/StatefulPartitionedCall*conv3d_transpose_4/StatefulPartitionedCall2X
*conv3d_transpose_5/StatefulPartitionedCall*conv3d_transpose_5/StatefulPartitionedCall2X
*conv3d_transpose_6/StatefulPartitionedCall*conv3d_transpose_6/StatefulPartitionedCall2X
*conv3d_transpose_7/StatefulPartitionedCall*conv3d_transpose_7/StatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_50_layer_call_fn_58910

inputs%
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_50_layer_call_and_return_conditional_losses_55704�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
� 
�
'__inference_model_1_layer_call_fn_55889
input_2%
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

unknown_11:@�

unknown_12:	�*

unknown_13:��

unknown_14:	�*

unknown_15:��

unknown_16:	�*

unknown_17:��

unknown_18:	�*

unknown_19:��

unknown_20:	�*

unknown_21:��

unknown_22:	�*

unknown_23:��

unknown_24:	�*

unknown_25:��

unknown_26:	�*

unknown_27:��

unknown_28:	�)

unknown_29:@�

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:�@

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
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
::8������������������������������������*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_55762�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_2
�
�
D__inference_conv3d_39_layer_call_and_return_conditional_losses_55475

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_35_layer_call_fn_58376

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_35_layer_call_and_return_conditional_losses_55393�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_45_layer_call_and_return_conditional_losses_58751

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
D__inference_conv3d_28_layer_call_and_return_conditional_losses_55270

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_27_layer_call_and_return_conditional_losses_55253

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
� 
�
'__inference_model_1_layer_call_fn_57345

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

unknown_11:@�

unknown_12:	�*

unknown_13:��

unknown_14:	�*

unknown_15:��

unknown_16:	�*

unknown_17:��

unknown_18:	�*

unknown_19:��

unknown_20:	�*

unknown_21:��

unknown_22:	�*

unknown_23:��

unknown_24:	�*

unknown_25:��

unknown_26:	�*

unknown_27:��

unknown_28:	�)

unknown_29:@�

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:�@

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
identity��StatefulPartitionedCall�	
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
::8������������������������������������*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_56487�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
��
�2
B__inference_model_1_layer_call_and_return_conditional_losses_58025

inputsF
(conv3d_27_conv3d_readvariableop_resource:7
)conv3d_27_biasadd_readvariableop_resource:F
(conv3d_28_conv3d_readvariableop_resource:7
)conv3d_28_biasadd_readvariableop_resource:F
(conv3d_29_conv3d_readvariableop_resource: 7
)conv3d_29_biasadd_readvariableop_resource: F
(conv3d_30_conv3d_readvariableop_resource:  7
)conv3d_30_biasadd_readvariableop_resource: F
(conv3d_31_conv3d_readvariableop_resource: @7
)conv3d_31_biasadd_readvariableop_resource:@F
(conv3d_32_conv3d_readvariableop_resource:@@7
)conv3d_32_biasadd_readvariableop_resource:@G
(conv3d_33_conv3d_readvariableop_resource:@�8
)conv3d_33_biasadd_readvariableop_resource:	�H
(conv3d_34_conv3d_readvariableop_resource:��8
)conv3d_34_biasadd_readvariableop_resource:	�H
(conv3d_35_conv3d_readvariableop_resource:��8
)conv3d_35_biasadd_readvariableop_resource:	�H
(conv3d_36_conv3d_readvariableop_resource:��8
)conv3d_36_biasadd_readvariableop_resource:	�[
;conv3d_transpose_4_conv3d_transpose_readvariableop_resource:��A
2conv3d_transpose_4_biasadd_readvariableop_resource:	�H
(conv3d_37_conv3d_readvariableop_resource:��8
)conv3d_37_biasadd_readvariableop_resource:	�H
(conv3d_38_conv3d_readvariableop_resource:��8
)conv3d_38_biasadd_readvariableop_resource:	�H
(conv3d_39_conv3d_readvariableop_resource:��8
)conv3d_39_biasadd_readvariableop_resource:	�H
(conv3d_40_conv3d_readvariableop_resource:��8
)conv3d_40_biasadd_readvariableop_resource:	�Z
;conv3d_transpose_5_conv3d_transpose_readvariableop_resource:@�@
2conv3d_transpose_5_biasadd_readvariableop_resource:@F
(conv3d_41_conv3d_readvariableop_resource:@@7
)conv3d_41_biasadd_readvariableop_resource:@G
(conv3d_42_conv3d_readvariableop_resource:�@7
)conv3d_42_biasadd_readvariableop_resource:@F
(conv3d_43_conv3d_readvariableop_resource:@@7
)conv3d_43_biasadd_readvariableop_resource:@F
(conv3d_44_conv3d_readvariableop_resource:@@7
)conv3d_44_biasadd_readvariableop_resource:@Y
;conv3d_transpose_6_conv3d_transpose_readvariableop_resource: @@
2conv3d_transpose_6_biasadd_readvariableop_resource: F
(conv3d_45_conv3d_readvariableop_resource:  7
)conv3d_45_biasadd_readvariableop_resource: F
(conv3d_46_conv3d_readvariableop_resource:@ 7
)conv3d_46_biasadd_readvariableop_resource: F
(conv3d_47_conv3d_readvariableop_resource:  7
)conv3d_47_biasadd_readvariableop_resource: F
(conv3d_48_conv3d_readvariableop_resource:  7
)conv3d_48_biasadd_readvariableop_resource: Y
;conv3d_transpose_7_conv3d_transpose_readvariableop_resource: @
2conv3d_transpose_7_biasadd_readvariableop_resource:F
(conv3d_49_conv3d_readvariableop_resource:7
)conv3d_49_biasadd_readvariableop_resource:F
(conv3d_50_conv3d_readvariableop_resource: 7
)conv3d_50_biasadd_readvariableop_resource:F
(conv3d_51_conv3d_readvariableop_resource:7
)conv3d_51_biasadd_readvariableop_resource:F
(conv3d_52_conv3d_readvariableop_resource:7
)conv3d_52_biasadd_readvariableop_resource:F
(conv3d_53_conv3d_readvariableop_resource:7
)conv3d_53_biasadd_readvariableop_resource:
identity�� conv3d_27/BiasAdd/ReadVariableOp�conv3d_27/Conv3D/ReadVariableOp� conv3d_28/BiasAdd/ReadVariableOp�conv3d_28/Conv3D/ReadVariableOp� conv3d_29/BiasAdd/ReadVariableOp�conv3d_29/Conv3D/ReadVariableOp� conv3d_30/BiasAdd/ReadVariableOp�conv3d_30/Conv3D/ReadVariableOp� conv3d_31/BiasAdd/ReadVariableOp�conv3d_31/Conv3D/ReadVariableOp� conv3d_32/BiasAdd/ReadVariableOp�conv3d_32/Conv3D/ReadVariableOp� conv3d_33/BiasAdd/ReadVariableOp�conv3d_33/Conv3D/ReadVariableOp� conv3d_34/BiasAdd/ReadVariableOp�conv3d_34/Conv3D/ReadVariableOp� conv3d_35/BiasAdd/ReadVariableOp�conv3d_35/Conv3D/ReadVariableOp� conv3d_36/BiasAdd/ReadVariableOp�conv3d_36/Conv3D/ReadVariableOp� conv3d_37/BiasAdd/ReadVariableOp�conv3d_37/Conv3D/ReadVariableOp� conv3d_38/BiasAdd/ReadVariableOp�conv3d_38/Conv3D/ReadVariableOp� conv3d_39/BiasAdd/ReadVariableOp�conv3d_39/Conv3D/ReadVariableOp� conv3d_40/BiasAdd/ReadVariableOp�conv3d_40/Conv3D/ReadVariableOp� conv3d_41/BiasAdd/ReadVariableOp�conv3d_41/Conv3D/ReadVariableOp� conv3d_42/BiasAdd/ReadVariableOp�conv3d_42/Conv3D/ReadVariableOp� conv3d_43/BiasAdd/ReadVariableOp�conv3d_43/Conv3D/ReadVariableOp� conv3d_44/BiasAdd/ReadVariableOp�conv3d_44/Conv3D/ReadVariableOp� conv3d_45/BiasAdd/ReadVariableOp�conv3d_45/Conv3D/ReadVariableOp� conv3d_46/BiasAdd/ReadVariableOp�conv3d_46/Conv3D/ReadVariableOp� conv3d_47/BiasAdd/ReadVariableOp�conv3d_47/Conv3D/ReadVariableOp� conv3d_48/BiasAdd/ReadVariableOp�conv3d_48/Conv3D/ReadVariableOp� conv3d_49/BiasAdd/ReadVariableOp�conv3d_49/Conv3D/ReadVariableOp� conv3d_50/BiasAdd/ReadVariableOp�conv3d_50/Conv3D/ReadVariableOp� conv3d_51/BiasAdd/ReadVariableOp�conv3d_51/Conv3D/ReadVariableOp� conv3d_52/BiasAdd/ReadVariableOp�conv3d_52/Conv3D/ReadVariableOp� conv3d_53/BiasAdd/ReadVariableOp�conv3d_53/Conv3D/ReadVariableOp�)conv3d_transpose_4/BiasAdd/ReadVariableOp�2conv3d_transpose_4/conv3d_transpose/ReadVariableOp�)conv3d_transpose_5/BiasAdd/ReadVariableOp�2conv3d_transpose_5/conv3d_transpose/ReadVariableOp�)conv3d_transpose_6/BiasAdd/ReadVariableOp�2conv3d_transpose_6/conv3d_transpose/ReadVariableOp�)conv3d_transpose_7/BiasAdd/ReadVariableOp�2conv3d_transpose_7/conv3d_transpose/ReadVariableOp�
zero_padding3d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
zero_padding3d_1/PadPadinputs&zero_padding3d_1/Pad/paddings:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_27/Conv3D/ReadVariableOpReadVariableOp(conv3d_27_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_27/Conv3DConv3Dzero_padding3d_1/Pad:output:0'conv3d_27/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_27/BiasAdd/ReadVariableOpReadVariableOp)conv3d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_27/BiasAddBiasAddconv3d_27/Conv3D:output:0(conv3d_27/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_27/ReluReluconv3d_27/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_28/Conv3D/ReadVariableOpReadVariableOp(conv3d_28_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_28/Conv3DConv3Dconv3d_27/Relu:activations:0'conv3d_28/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_28/BiasAdd/ReadVariableOpReadVariableOp)conv3d_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_28/BiasAddBiasAddconv3d_28/Conv3D:output:0(conv3d_28/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_28/ReluReluconv3d_28/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
max_pooling3d_4/MaxPool3D	MaxPool3Dconv3d_28/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
ksize	
*
paddingVALID*
strides	
�
conv3d_29/Conv3D/ReadVariableOpReadVariableOp(conv3d_29_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_29/Conv3DConv3D"max_pooling3d_4/MaxPool3D:output:0'conv3d_29/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_29/BiasAdd/ReadVariableOpReadVariableOp)conv3d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_29/BiasAddBiasAddconv3d_29/Conv3D:output:0(conv3d_29/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_29/ReluReluconv3d_29/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_30/Conv3D/ReadVariableOpReadVariableOp(conv3d_30_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_30/Conv3DConv3Dconv3d_29/Relu:activations:0'conv3d_30/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_30/BiasAdd/ReadVariableOpReadVariableOp)conv3d_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_30/BiasAddBiasAddconv3d_30/Conv3D:output:0(conv3d_30/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_30/ReluReluconv3d_30/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
max_pooling3d_5/MaxPool3D	MaxPool3Dconv3d_30/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
ksize	
*
paddingVALID*
strides	
�
conv3d_31/Conv3D/ReadVariableOpReadVariableOp(conv3d_31_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
conv3d_31/Conv3DConv3D"max_pooling3d_5/MaxPool3D:output:0'conv3d_31/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_31/BiasAdd/ReadVariableOpReadVariableOp)conv3d_31_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_31/BiasAddBiasAddconv3d_31/Conv3D:output:0(conv3d_31/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_31/ReluReluconv3d_31/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_32/Conv3D/ReadVariableOpReadVariableOp(conv3d_32_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_32/Conv3DConv3Dconv3d_31/Relu:activations:0'conv3d_32/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_32/BiasAdd/ReadVariableOpReadVariableOp)conv3d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_32/BiasAddBiasAddconv3d_32/Conv3D:output:0(conv3d_32/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_32/ReluReluconv3d_32/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
max_pooling3d_6/MaxPool3D	MaxPool3Dconv3d_32/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
ksize	
*
paddingVALID*
strides	
�
conv3d_33/Conv3D/ReadVariableOpReadVariableOp(conv3d_33_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_33/Conv3DConv3D"max_pooling3d_6/MaxPool3D:output:0'conv3d_33/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_33/BiasAdd/ReadVariableOpReadVariableOp)conv3d_33_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_33/BiasAddBiasAddconv3d_33/Conv3D:output:0(conv3d_33/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_33/ReluReluconv3d_33/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_34/Conv3D/ReadVariableOpReadVariableOp(conv3d_34_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_34/Conv3DConv3Dconv3d_33/Relu:activations:0'conv3d_34/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_34/BiasAdd/ReadVariableOpReadVariableOp)conv3d_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_34/BiasAddBiasAddconv3d_34/Conv3D:output:0(conv3d_34/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_34/ReluReluconv3d_34/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
max_pooling3d_7/MaxPool3D	MaxPool3Dconv3d_34/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
ksize	
*
paddingVALID*
strides	
�
conv3d_35/Conv3D/ReadVariableOpReadVariableOp(conv3d_35_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_35/Conv3DConv3D"max_pooling3d_7/MaxPool3D:output:0'conv3d_35/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_35/BiasAdd/ReadVariableOpReadVariableOp)conv3d_35_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_35/BiasAddBiasAddconv3d_35/Conv3D:output:0(conv3d_35/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_35/ReluReluconv3d_35/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_36/Conv3D/ReadVariableOpReadVariableOp(conv3d_36_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_36/Conv3DConv3Dconv3d_35/Relu:activations:0'conv3d_36/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_36/BiasAdd/ReadVariableOpReadVariableOp)conv3d_36_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_36/BiasAddBiasAddconv3d_36/Conv3D:output:0(conv3d_36/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_36/ReluReluconv3d_36/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������d
conv3d_transpose_4/ShapeShapeconv3d_36/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_4/strided_sliceStridedSlice!conv3d_transpose_4/Shape:output:0/conv3d_transpose_4/strided_slice/stack:output:01conv3d_transpose_4/strided_slice/stack_1:output:01conv3d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_4/strided_slice_1StridedSlice!conv3d_transpose_4/Shape:output:01conv3d_transpose_4/strided_slice_1/stack:output:03conv3d_transpose_4/strided_slice_1/stack_1:output:03conv3d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_4/strided_slice_2StridedSlice!conv3d_transpose_4/Shape:output:01conv3d_transpose_4/strided_slice_2/stack:output:03conv3d_transpose_4/strided_slice_2/stack_1:output:03conv3d_transpose_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_4/strided_slice_3StridedSlice!conv3d_transpose_4/Shape:output:01conv3d_transpose_4/strided_slice_3/stack:output:03conv3d_transpose_4/strided_slice_3/stack_1:output:03conv3d_transpose_4/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_4/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_4/mulMul+conv3d_transpose_4/strided_slice_1:output:0!conv3d_transpose_4/mul/y:output:0*
T0*
_output_shapes
: Z
conv3d_transpose_4/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_4/addAddV2conv3d_transpose_4/mul:z:0!conv3d_transpose_4/add/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_4/mul_1Mul+conv3d_transpose_4/strided_slice_2:output:0#conv3d_transpose_4/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_4/add_1AddV2conv3d_transpose_4/mul_1:z:0#conv3d_transpose_4/add_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_4/mul_2Mul+conv3d_transpose_4/strided_slice_3:output:0#conv3d_transpose_4/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_4/add_2AddV2conv3d_transpose_4/mul_2:z:0#conv3d_transpose_4/add_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_4/stack/4Const*
_output_shapes
: *
dtype0*
value
B :��
conv3d_transpose_4/stackPack)conv3d_transpose_4/strided_slice:output:0conv3d_transpose_4/add:z:0conv3d_transpose_4/add_1:z:0conv3d_transpose_4/add_2:z:0#conv3d_transpose_4/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_4/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_4_conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
#conv3d_transpose_4/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_4/stack:output:0:conv3d_transpose_4/conv3d_transpose/ReadVariableOp:value:0conv3d_36/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
�
)conv3d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_transpose_4/BiasAddBiasAdd,conv3d_transpose_4/conv3d_transpose:output:01conv3d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_37/Conv3D/ReadVariableOpReadVariableOp(conv3d_37_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_37/Conv3DConv3D#conv3d_transpose_4/BiasAdd:output:0'conv3d_37/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_37/BiasAdd/ReadVariableOpReadVariableOp)conv3d_37_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_37/BiasAddBiasAddconv3d_37/Conv3D:output:0(conv3d_37/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_37/ReluReluconv3d_37/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������[
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_4/concatConcatV2conv3d_34/Relu:activations:0conv3d_37/Relu:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_38/Conv3D/ReadVariableOpReadVariableOp(conv3d_38_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_38/Conv3DConv3Dconcatenate_4/concat:output:0'conv3d_38/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_38/BiasAdd/ReadVariableOpReadVariableOp)conv3d_38_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_38/BiasAddBiasAddconv3d_38/Conv3D:output:0(conv3d_38/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_38/ReluReluconv3d_38/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_39/Conv3D/ReadVariableOpReadVariableOp(conv3d_39_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_39/Conv3DConv3Dconv3d_38/Relu:activations:0'conv3d_39/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_39/BiasAdd/ReadVariableOpReadVariableOp)conv3d_39_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_39/BiasAddBiasAddconv3d_39/Conv3D:output:0(conv3d_39/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_39/ReluReluconv3d_39/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_40/Conv3D/ReadVariableOpReadVariableOp(conv3d_40_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_40/Conv3DConv3Dconv3d_39/Relu:activations:0'conv3d_40/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_40/BiasAdd/ReadVariableOpReadVariableOp)conv3d_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_40/BiasAddBiasAddconv3d_40/Conv3D:output:0(conv3d_40/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_40/ReluReluconv3d_40/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������d
conv3d_transpose_5/ShapeShapeconv3d_40/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_5/strided_sliceStridedSlice!conv3d_transpose_5/Shape:output:0/conv3d_transpose_5/strided_slice/stack:output:01conv3d_transpose_5/strided_slice/stack_1:output:01conv3d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_5/strided_slice_1StridedSlice!conv3d_transpose_5/Shape:output:01conv3d_transpose_5/strided_slice_1/stack:output:03conv3d_transpose_5/strided_slice_1/stack_1:output:03conv3d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_5/strided_slice_2StridedSlice!conv3d_transpose_5/Shape:output:01conv3d_transpose_5/strided_slice_2/stack:output:03conv3d_transpose_5/strided_slice_2/stack_1:output:03conv3d_transpose_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_5/strided_slice_3StridedSlice!conv3d_transpose_5/Shape:output:01conv3d_transpose_5/strided_slice_3/stack:output:03conv3d_transpose_5/strided_slice_3/stack_1:output:03conv3d_transpose_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_5/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_5/mulMul+conv3d_transpose_5/strided_slice_1:output:0!conv3d_transpose_5/mul/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_5/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_5/mul_1Mul+conv3d_transpose_5/strided_slice_2:output:0#conv3d_transpose_5/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_5/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_5/mul_2Mul+conv3d_transpose_5/strided_slice_3:output:0#conv3d_transpose_5/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_5/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@�
conv3d_transpose_5/stackPack)conv3d_transpose_5/strided_slice:output:0conv3d_transpose_5/mul:z:0conv3d_transpose_5/mul_1:z:0conv3d_transpose_5/mul_2:z:0#conv3d_transpose_5/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_5/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_5_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
#conv3d_transpose_5/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_5/stack:output:0:conv3d_transpose_5/conv3d_transpose/ReadVariableOp:value:0conv3d_40/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)conv3d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_transpose_5/BiasAddBiasAdd,conv3d_transpose_5/conv3d_transpose:output:01conv3d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_41/Conv3D/ReadVariableOpReadVariableOp(conv3d_41_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_41/Conv3DConv3D#conv3d_transpose_5/BiasAdd:output:0'conv3d_41/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_41/BiasAdd/ReadVariableOpReadVariableOp)conv3d_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_41/BiasAddBiasAddconv3d_41/Conv3D:output:0(conv3d_41/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_41/ReluReluconv3d_41/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@[
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_5/concatConcatV2conv3d_32/Relu:activations:0conv3d_41/Relu:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_42/Conv3D/ReadVariableOpReadVariableOp(conv3d_42_conv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
conv3d_42/Conv3DConv3Dconcatenate_5/concat:output:0'conv3d_42/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_42/BiasAdd/ReadVariableOpReadVariableOp)conv3d_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_42/BiasAddBiasAddconv3d_42/Conv3D:output:0(conv3d_42/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_42/ReluReluconv3d_42/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_43/Conv3D/ReadVariableOpReadVariableOp(conv3d_43_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_43/Conv3DConv3Dconv3d_42/Relu:activations:0'conv3d_43/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_43/BiasAdd/ReadVariableOpReadVariableOp)conv3d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_43/BiasAddBiasAddconv3d_43/Conv3D:output:0(conv3d_43/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_43/ReluReluconv3d_43/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_44/Conv3D/ReadVariableOpReadVariableOp(conv3d_44_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_44/Conv3DConv3Dconv3d_43/Relu:activations:0'conv3d_44/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_44/BiasAdd/ReadVariableOpReadVariableOp)conv3d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_44/BiasAddBiasAddconv3d_44/Conv3D:output:0(conv3d_44/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_44/ReluReluconv3d_44/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@d
conv3d_transpose_6/ShapeShapeconv3d_44/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_6/strided_sliceStridedSlice!conv3d_transpose_6/Shape:output:0/conv3d_transpose_6/strided_slice/stack:output:01conv3d_transpose_6/strided_slice/stack_1:output:01conv3d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_6/strided_slice_1StridedSlice!conv3d_transpose_6/Shape:output:01conv3d_transpose_6/strided_slice_1/stack:output:03conv3d_transpose_6/strided_slice_1/stack_1:output:03conv3d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_6/strided_slice_2StridedSlice!conv3d_transpose_6/Shape:output:01conv3d_transpose_6/strided_slice_2/stack:output:03conv3d_transpose_6/strided_slice_2/stack_1:output:03conv3d_transpose_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_6/strided_slice_3StridedSlice!conv3d_transpose_6/Shape:output:01conv3d_transpose_6/strided_slice_3/stack:output:03conv3d_transpose_6/strided_slice_3/stack_1:output:03conv3d_transpose_6/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_6/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_6/mulMul+conv3d_transpose_6/strided_slice_1:output:0!conv3d_transpose_6/mul/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_6/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_6/mul_1Mul+conv3d_transpose_6/strided_slice_2:output:0#conv3d_transpose_6/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_6/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_6/mul_2Mul+conv3d_transpose_6/strided_slice_3:output:0#conv3d_transpose_6/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_6/stack/4Const*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_6/stackPack)conv3d_transpose_6/strided_slice:output:0conv3d_transpose_6/mul:z:0conv3d_transpose_6/mul_1:z:0conv3d_transpose_6/mul_2:z:0#conv3d_transpose_6/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_6/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_6_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
#conv3d_transpose_6/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_6/stack:output:0:conv3d_transpose_6/conv3d_transpose/ReadVariableOp:value:0conv3d_44/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)conv3d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_transpose_6/BiasAddBiasAdd,conv3d_transpose_6/conv3d_transpose:output:01conv3d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_45/Conv3D/ReadVariableOpReadVariableOp(conv3d_45_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_45/Conv3DConv3D#conv3d_transpose_6/BiasAdd:output:0'conv3d_45/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_45/BiasAdd/ReadVariableOpReadVariableOp)conv3d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_45/BiasAddBiasAddconv3d_45/Conv3D:output:0(conv3d_45/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_45/ReluReluconv3d_45/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ [
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_6/concatConcatV2conv3d_30/Relu:activations:0conv3d_45/Relu:activations:0"concatenate_6/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_46/Conv3D/ReadVariableOpReadVariableOp(conv3d_46_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
conv3d_46/Conv3DConv3Dconcatenate_6/concat:output:0'conv3d_46/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_46/BiasAdd/ReadVariableOpReadVariableOp)conv3d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_46/BiasAddBiasAddconv3d_46/Conv3D:output:0(conv3d_46/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_46/ReluReluconv3d_46/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_47/Conv3D/ReadVariableOpReadVariableOp(conv3d_47_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_47/Conv3DConv3Dconv3d_46/Relu:activations:0'conv3d_47/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_47/BiasAdd/ReadVariableOpReadVariableOp)conv3d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_47/BiasAddBiasAddconv3d_47/Conv3D:output:0(conv3d_47/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_47/ReluReluconv3d_47/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_48/Conv3D/ReadVariableOpReadVariableOp(conv3d_48_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_48/Conv3DConv3Dconv3d_47/Relu:activations:0'conv3d_48/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_48/BiasAdd/ReadVariableOpReadVariableOp)conv3d_48_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_48/BiasAddBiasAddconv3d_48/Conv3D:output:0(conv3d_48/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_48/ReluReluconv3d_48/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ d
conv3d_transpose_7/ShapeShapeconv3d_48/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_7/strided_sliceStridedSlice!conv3d_transpose_7/Shape:output:0/conv3d_transpose_7/strided_slice/stack:output:01conv3d_transpose_7/strided_slice/stack_1:output:01conv3d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_7/strided_slice_1StridedSlice!conv3d_transpose_7/Shape:output:01conv3d_transpose_7/strided_slice_1/stack:output:03conv3d_transpose_7/strided_slice_1/stack_1:output:03conv3d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_7/strided_slice_2StridedSlice!conv3d_transpose_7/Shape:output:01conv3d_transpose_7/strided_slice_2/stack:output:03conv3d_transpose_7/strided_slice_2/stack_1:output:03conv3d_transpose_7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_7/strided_slice_3StridedSlice!conv3d_transpose_7/Shape:output:01conv3d_transpose_7/strided_slice_3/stack:output:03conv3d_transpose_7/strided_slice_3/stack_1:output:03conv3d_transpose_7/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_7/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/mulMul+conv3d_transpose_7/strided_slice_1:output:0!conv3d_transpose_7/mul/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_7/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/mul_1Mul+conv3d_transpose_7/strided_slice_2:output:0#conv3d_transpose_7/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_7/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/mul_2Mul+conv3d_transpose_7/strided_slice_3:output:0#conv3d_transpose_7/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_7/stack/4Const*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/stackPack)conv3d_transpose_7/strided_slice:output:0conv3d_transpose_7/mul:z:0conv3d_transpose_7/mul_1:z:0conv3d_transpose_7/mul_2:z:0#conv3d_transpose_7/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_7/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_7_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
#conv3d_transpose_7/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_7/stack:output:0:conv3d_transpose_7/conv3d_transpose/ReadVariableOp:value:0conv3d_48/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)conv3d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_transpose_7/BiasAddBiasAdd,conv3d_transpose_7/conv3d_transpose:output:01conv3d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_49/Conv3D/ReadVariableOpReadVariableOp(conv3d_49_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_49/Conv3DConv3D#conv3d_transpose_7/BiasAdd:output:0'conv3d_49/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_49/BiasAdd/ReadVariableOpReadVariableOp)conv3d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_49/BiasAddBiasAddconv3d_49/Conv3D:output:0(conv3d_49/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_49/ReluReluconv3d_49/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������[
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_7/concatConcatV2conv3d_28/Relu:activations:0conv3d_49/Relu:activations:0"concatenate_7/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_50/Conv3D/ReadVariableOpReadVariableOp(conv3d_50_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_50/Conv3DConv3Dconcatenate_7/concat:output:0'conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_50/BiasAdd/ReadVariableOpReadVariableOp)conv3d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_50/BiasAddBiasAddconv3d_50/Conv3D:output:0(conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_50/ReluReluconv3d_50/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_51/Conv3D/ReadVariableOpReadVariableOp(conv3d_51_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_51/Conv3DConv3Dconv3d_50/Relu:activations:0'conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_51/BiasAdd/ReadVariableOpReadVariableOp)conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_51/BiasAddBiasAddconv3d_51/Conv3D:output:0(conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_51/ReluReluconv3d_51/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_52/Conv3D/ReadVariableOpReadVariableOp(conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_52/Conv3DConv3Dconv3d_51/Relu:activations:0'conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_52/BiasAdd/ReadVariableOpReadVariableOp)conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_52/BiasAddBiasAddconv3d_52/Conv3D:output:0(conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_52/ReluReluconv3d_52/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������}
 cropping3d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
"cropping3d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
"cropping3d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               �
cropping3d_1/strided_sliceStridedSliceconv3d_52/Relu:activations:0)cropping3d_1/strided_slice/stack:output:0+cropping3d_1/strided_slice/stack_1:output:0+cropping3d_1/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8������������������������������������*

begin_mask*
end_mask�
conv3d_53/Conv3D/ReadVariableOpReadVariableOp(conv3d_53_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_53/Conv3DConv3D#cropping3d_1/strided_slice:output:0'conv3d_53/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_53/BiasAdd/ReadVariableOpReadVariableOp)conv3d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_53/BiasAddBiasAddconv3d_53/Conv3D:output:0(conv3d_53/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityconv3d_53/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp!^conv3d_27/BiasAdd/ReadVariableOp ^conv3d_27/Conv3D/ReadVariableOp!^conv3d_28/BiasAdd/ReadVariableOp ^conv3d_28/Conv3D/ReadVariableOp!^conv3d_29/BiasAdd/ReadVariableOp ^conv3d_29/Conv3D/ReadVariableOp!^conv3d_30/BiasAdd/ReadVariableOp ^conv3d_30/Conv3D/ReadVariableOp!^conv3d_31/BiasAdd/ReadVariableOp ^conv3d_31/Conv3D/ReadVariableOp!^conv3d_32/BiasAdd/ReadVariableOp ^conv3d_32/Conv3D/ReadVariableOp!^conv3d_33/BiasAdd/ReadVariableOp ^conv3d_33/Conv3D/ReadVariableOp!^conv3d_34/BiasAdd/ReadVariableOp ^conv3d_34/Conv3D/ReadVariableOp!^conv3d_35/BiasAdd/ReadVariableOp ^conv3d_35/Conv3D/ReadVariableOp!^conv3d_36/BiasAdd/ReadVariableOp ^conv3d_36/Conv3D/ReadVariableOp!^conv3d_37/BiasAdd/ReadVariableOp ^conv3d_37/Conv3D/ReadVariableOp!^conv3d_38/BiasAdd/ReadVariableOp ^conv3d_38/Conv3D/ReadVariableOp!^conv3d_39/BiasAdd/ReadVariableOp ^conv3d_39/Conv3D/ReadVariableOp!^conv3d_40/BiasAdd/ReadVariableOp ^conv3d_40/Conv3D/ReadVariableOp!^conv3d_41/BiasAdd/ReadVariableOp ^conv3d_41/Conv3D/ReadVariableOp!^conv3d_42/BiasAdd/ReadVariableOp ^conv3d_42/Conv3D/ReadVariableOp!^conv3d_43/BiasAdd/ReadVariableOp ^conv3d_43/Conv3D/ReadVariableOp!^conv3d_44/BiasAdd/ReadVariableOp ^conv3d_44/Conv3D/ReadVariableOp!^conv3d_45/BiasAdd/ReadVariableOp ^conv3d_45/Conv3D/ReadVariableOp!^conv3d_46/BiasAdd/ReadVariableOp ^conv3d_46/Conv3D/ReadVariableOp!^conv3d_47/BiasAdd/ReadVariableOp ^conv3d_47/Conv3D/ReadVariableOp!^conv3d_48/BiasAdd/ReadVariableOp ^conv3d_48/Conv3D/ReadVariableOp!^conv3d_49/BiasAdd/ReadVariableOp ^conv3d_49/Conv3D/ReadVariableOp!^conv3d_50/BiasAdd/ReadVariableOp ^conv3d_50/Conv3D/ReadVariableOp!^conv3d_51/BiasAdd/ReadVariableOp ^conv3d_51/Conv3D/ReadVariableOp!^conv3d_52/BiasAdd/ReadVariableOp ^conv3d_52/Conv3D/ReadVariableOp!^conv3d_53/BiasAdd/ReadVariableOp ^conv3d_53/Conv3D/ReadVariableOp*^conv3d_transpose_4/BiasAdd/ReadVariableOp3^conv3d_transpose_4/conv3d_transpose/ReadVariableOp*^conv3d_transpose_5/BiasAdd/ReadVariableOp3^conv3d_transpose_5/conv3d_transpose/ReadVariableOp*^conv3d_transpose_6/BiasAdd/ReadVariableOp3^conv3d_transpose_6/conv3d_transpose/ReadVariableOp*^conv3d_transpose_7/BiasAdd/ReadVariableOp3^conv3d_transpose_7/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv3d_27/BiasAdd/ReadVariableOp conv3d_27/BiasAdd/ReadVariableOp2B
conv3d_27/Conv3D/ReadVariableOpconv3d_27/Conv3D/ReadVariableOp2D
 conv3d_28/BiasAdd/ReadVariableOp conv3d_28/BiasAdd/ReadVariableOp2B
conv3d_28/Conv3D/ReadVariableOpconv3d_28/Conv3D/ReadVariableOp2D
 conv3d_29/BiasAdd/ReadVariableOp conv3d_29/BiasAdd/ReadVariableOp2B
conv3d_29/Conv3D/ReadVariableOpconv3d_29/Conv3D/ReadVariableOp2D
 conv3d_30/BiasAdd/ReadVariableOp conv3d_30/BiasAdd/ReadVariableOp2B
conv3d_30/Conv3D/ReadVariableOpconv3d_30/Conv3D/ReadVariableOp2D
 conv3d_31/BiasAdd/ReadVariableOp conv3d_31/BiasAdd/ReadVariableOp2B
conv3d_31/Conv3D/ReadVariableOpconv3d_31/Conv3D/ReadVariableOp2D
 conv3d_32/BiasAdd/ReadVariableOp conv3d_32/BiasAdd/ReadVariableOp2B
conv3d_32/Conv3D/ReadVariableOpconv3d_32/Conv3D/ReadVariableOp2D
 conv3d_33/BiasAdd/ReadVariableOp conv3d_33/BiasAdd/ReadVariableOp2B
conv3d_33/Conv3D/ReadVariableOpconv3d_33/Conv3D/ReadVariableOp2D
 conv3d_34/BiasAdd/ReadVariableOp conv3d_34/BiasAdd/ReadVariableOp2B
conv3d_34/Conv3D/ReadVariableOpconv3d_34/Conv3D/ReadVariableOp2D
 conv3d_35/BiasAdd/ReadVariableOp conv3d_35/BiasAdd/ReadVariableOp2B
conv3d_35/Conv3D/ReadVariableOpconv3d_35/Conv3D/ReadVariableOp2D
 conv3d_36/BiasAdd/ReadVariableOp conv3d_36/BiasAdd/ReadVariableOp2B
conv3d_36/Conv3D/ReadVariableOpconv3d_36/Conv3D/ReadVariableOp2D
 conv3d_37/BiasAdd/ReadVariableOp conv3d_37/BiasAdd/ReadVariableOp2B
conv3d_37/Conv3D/ReadVariableOpconv3d_37/Conv3D/ReadVariableOp2D
 conv3d_38/BiasAdd/ReadVariableOp conv3d_38/BiasAdd/ReadVariableOp2B
conv3d_38/Conv3D/ReadVariableOpconv3d_38/Conv3D/ReadVariableOp2D
 conv3d_39/BiasAdd/ReadVariableOp conv3d_39/BiasAdd/ReadVariableOp2B
conv3d_39/Conv3D/ReadVariableOpconv3d_39/Conv3D/ReadVariableOp2D
 conv3d_40/BiasAdd/ReadVariableOp conv3d_40/BiasAdd/ReadVariableOp2B
conv3d_40/Conv3D/ReadVariableOpconv3d_40/Conv3D/ReadVariableOp2D
 conv3d_41/BiasAdd/ReadVariableOp conv3d_41/BiasAdd/ReadVariableOp2B
conv3d_41/Conv3D/ReadVariableOpconv3d_41/Conv3D/ReadVariableOp2D
 conv3d_42/BiasAdd/ReadVariableOp conv3d_42/BiasAdd/ReadVariableOp2B
conv3d_42/Conv3D/ReadVariableOpconv3d_42/Conv3D/ReadVariableOp2D
 conv3d_43/BiasAdd/ReadVariableOp conv3d_43/BiasAdd/ReadVariableOp2B
conv3d_43/Conv3D/ReadVariableOpconv3d_43/Conv3D/ReadVariableOp2D
 conv3d_44/BiasAdd/ReadVariableOp conv3d_44/BiasAdd/ReadVariableOp2B
conv3d_44/Conv3D/ReadVariableOpconv3d_44/Conv3D/ReadVariableOp2D
 conv3d_45/BiasAdd/ReadVariableOp conv3d_45/BiasAdd/ReadVariableOp2B
conv3d_45/Conv3D/ReadVariableOpconv3d_45/Conv3D/ReadVariableOp2D
 conv3d_46/BiasAdd/ReadVariableOp conv3d_46/BiasAdd/ReadVariableOp2B
conv3d_46/Conv3D/ReadVariableOpconv3d_46/Conv3D/ReadVariableOp2D
 conv3d_47/BiasAdd/ReadVariableOp conv3d_47/BiasAdd/ReadVariableOp2B
conv3d_47/Conv3D/ReadVariableOpconv3d_47/Conv3D/ReadVariableOp2D
 conv3d_48/BiasAdd/ReadVariableOp conv3d_48/BiasAdd/ReadVariableOp2B
conv3d_48/Conv3D/ReadVariableOpconv3d_48/Conv3D/ReadVariableOp2D
 conv3d_49/BiasAdd/ReadVariableOp conv3d_49/BiasAdd/ReadVariableOp2B
conv3d_49/Conv3D/ReadVariableOpconv3d_49/Conv3D/ReadVariableOp2D
 conv3d_50/BiasAdd/ReadVariableOp conv3d_50/BiasAdd/ReadVariableOp2B
conv3d_50/Conv3D/ReadVariableOpconv3d_50/Conv3D/ReadVariableOp2D
 conv3d_51/BiasAdd/ReadVariableOp conv3d_51/BiasAdd/ReadVariableOp2B
conv3d_51/Conv3D/ReadVariableOpconv3d_51/Conv3D/ReadVariableOp2D
 conv3d_52/BiasAdd/ReadVariableOp conv3d_52/BiasAdd/ReadVariableOp2B
conv3d_52/Conv3D/ReadVariableOpconv3d_52/Conv3D/ReadVariableOp2D
 conv3d_53/BiasAdd/ReadVariableOp conv3d_53/BiasAdd/ReadVariableOp2B
conv3d_53/Conv3D/ReadVariableOpconv3d_53/Conv3D/ReadVariableOp2V
)conv3d_transpose_4/BiasAdd/ReadVariableOp)conv3d_transpose_4/BiasAdd/ReadVariableOp2h
2conv3d_transpose_4/conv3d_transpose/ReadVariableOp2conv3d_transpose_4/conv3d_transpose/ReadVariableOp2V
)conv3d_transpose_5/BiasAdd/ReadVariableOp)conv3d_transpose_5/BiasAdd/ReadVariableOp2h
2conv3d_transpose_5/conv3d_transpose/ReadVariableOp2conv3d_transpose_5/conv3d_transpose/ReadVariableOp2V
)conv3d_transpose_6/BiasAdd/ReadVariableOp)conv3d_transpose_6/BiasAdd/ReadVariableOp2h
2conv3d_transpose_6/conv3d_transpose/ReadVariableOp2conv3d_transpose_6/conv3d_transpose/ReadVariableOp2V
)conv3d_transpose_7/BiasAdd/ReadVariableOp)conv3d_transpose_7/BiasAdd/ReadVariableOp2h
2conv3d_transpose_7/conv3d_transpose/ReadVariableOp2conv3d_transpose_7/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_48_layer_call_and_return_conditional_losses_58824

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
D__inference_conv3d_40_layer_call_and_return_conditional_losses_55492

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
��
�R
__inference__traced_save_59601
file_prefix/
+savev2_conv3d_27_kernel_read_readvariableop-
)savev2_conv3d_27_bias_read_readvariableop/
+savev2_conv3d_28_kernel_read_readvariableop-
)savev2_conv3d_28_bias_read_readvariableop/
+savev2_conv3d_29_kernel_read_readvariableop-
)savev2_conv3d_29_bias_read_readvariableop/
+savev2_conv3d_30_kernel_read_readvariableop-
)savev2_conv3d_30_bias_read_readvariableop/
+savev2_conv3d_31_kernel_read_readvariableop-
)savev2_conv3d_31_bias_read_readvariableop/
+savev2_conv3d_32_kernel_read_readvariableop-
)savev2_conv3d_32_bias_read_readvariableop/
+savev2_conv3d_33_kernel_read_readvariableop-
)savev2_conv3d_33_bias_read_readvariableop/
+savev2_conv3d_34_kernel_read_readvariableop-
)savev2_conv3d_34_bias_read_readvariableop/
+savev2_conv3d_35_kernel_read_readvariableop-
)savev2_conv3d_35_bias_read_readvariableop/
+savev2_conv3d_36_kernel_read_readvariableop-
)savev2_conv3d_36_bias_read_readvariableop8
4savev2_conv3d_transpose_4_kernel_read_readvariableop6
2savev2_conv3d_transpose_4_bias_read_readvariableop/
+savev2_conv3d_37_kernel_read_readvariableop-
)savev2_conv3d_37_bias_read_readvariableop/
+savev2_conv3d_38_kernel_read_readvariableop-
)savev2_conv3d_38_bias_read_readvariableop/
+savev2_conv3d_39_kernel_read_readvariableop-
)savev2_conv3d_39_bias_read_readvariableop/
+savev2_conv3d_40_kernel_read_readvariableop-
)savev2_conv3d_40_bias_read_readvariableop8
4savev2_conv3d_transpose_5_kernel_read_readvariableop6
2savev2_conv3d_transpose_5_bias_read_readvariableop/
+savev2_conv3d_41_kernel_read_readvariableop-
)savev2_conv3d_41_bias_read_readvariableop/
+savev2_conv3d_42_kernel_read_readvariableop-
)savev2_conv3d_42_bias_read_readvariableop/
+savev2_conv3d_43_kernel_read_readvariableop-
)savev2_conv3d_43_bias_read_readvariableop/
+savev2_conv3d_44_kernel_read_readvariableop-
)savev2_conv3d_44_bias_read_readvariableop8
4savev2_conv3d_transpose_6_kernel_read_readvariableop6
2savev2_conv3d_transpose_6_bias_read_readvariableop/
+savev2_conv3d_45_kernel_read_readvariableop-
)savev2_conv3d_45_bias_read_readvariableop/
+savev2_conv3d_46_kernel_read_readvariableop-
)savev2_conv3d_46_bias_read_readvariableop/
+savev2_conv3d_47_kernel_read_readvariableop-
)savev2_conv3d_47_bias_read_readvariableop/
+savev2_conv3d_48_kernel_read_readvariableop-
)savev2_conv3d_48_bias_read_readvariableop8
4savev2_conv3d_transpose_7_kernel_read_readvariableop6
2savev2_conv3d_transpose_7_bias_read_readvariableop/
+savev2_conv3d_49_kernel_read_readvariableop-
)savev2_conv3d_49_bias_read_readvariableop/
+savev2_conv3d_50_kernel_read_readvariableop-
)savev2_conv3d_50_bias_read_readvariableop/
+savev2_conv3d_51_kernel_read_readvariableop-
)savev2_conv3d_51_bias_read_readvariableop/
+savev2_conv3d_52_kernel_read_readvariableop-
)savev2_conv3d_52_bias_read_readvariableop/
+savev2_conv3d_53_kernel_read_readvariableop-
)savev2_conv3d_53_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv3d_27_kernel_m_read_readvariableop4
0savev2_adam_conv3d_27_bias_m_read_readvariableop6
2savev2_adam_conv3d_28_kernel_m_read_readvariableop4
0savev2_adam_conv3d_28_bias_m_read_readvariableop6
2savev2_adam_conv3d_29_kernel_m_read_readvariableop4
0savev2_adam_conv3d_29_bias_m_read_readvariableop6
2savev2_adam_conv3d_30_kernel_m_read_readvariableop4
0savev2_adam_conv3d_30_bias_m_read_readvariableop6
2savev2_adam_conv3d_31_kernel_m_read_readvariableop4
0savev2_adam_conv3d_31_bias_m_read_readvariableop6
2savev2_adam_conv3d_32_kernel_m_read_readvariableop4
0savev2_adam_conv3d_32_bias_m_read_readvariableop6
2savev2_adam_conv3d_33_kernel_m_read_readvariableop4
0savev2_adam_conv3d_33_bias_m_read_readvariableop6
2savev2_adam_conv3d_34_kernel_m_read_readvariableop4
0savev2_adam_conv3d_34_bias_m_read_readvariableop6
2savev2_adam_conv3d_35_kernel_m_read_readvariableop4
0savev2_adam_conv3d_35_bias_m_read_readvariableop6
2savev2_adam_conv3d_36_kernel_m_read_readvariableop4
0savev2_adam_conv3d_36_bias_m_read_readvariableop?
;savev2_adam_conv3d_transpose_4_kernel_m_read_readvariableop=
9savev2_adam_conv3d_transpose_4_bias_m_read_readvariableop6
2savev2_adam_conv3d_37_kernel_m_read_readvariableop4
0savev2_adam_conv3d_37_bias_m_read_readvariableop6
2savev2_adam_conv3d_38_kernel_m_read_readvariableop4
0savev2_adam_conv3d_38_bias_m_read_readvariableop6
2savev2_adam_conv3d_39_kernel_m_read_readvariableop4
0savev2_adam_conv3d_39_bias_m_read_readvariableop6
2savev2_adam_conv3d_40_kernel_m_read_readvariableop4
0savev2_adam_conv3d_40_bias_m_read_readvariableop?
;savev2_adam_conv3d_transpose_5_kernel_m_read_readvariableop=
9savev2_adam_conv3d_transpose_5_bias_m_read_readvariableop6
2savev2_adam_conv3d_41_kernel_m_read_readvariableop4
0savev2_adam_conv3d_41_bias_m_read_readvariableop6
2savev2_adam_conv3d_42_kernel_m_read_readvariableop4
0savev2_adam_conv3d_42_bias_m_read_readvariableop6
2savev2_adam_conv3d_43_kernel_m_read_readvariableop4
0savev2_adam_conv3d_43_bias_m_read_readvariableop6
2savev2_adam_conv3d_44_kernel_m_read_readvariableop4
0savev2_adam_conv3d_44_bias_m_read_readvariableop?
;savev2_adam_conv3d_transpose_6_kernel_m_read_readvariableop=
9savev2_adam_conv3d_transpose_6_bias_m_read_readvariableop6
2savev2_adam_conv3d_45_kernel_m_read_readvariableop4
0savev2_adam_conv3d_45_bias_m_read_readvariableop6
2savev2_adam_conv3d_46_kernel_m_read_readvariableop4
0savev2_adam_conv3d_46_bias_m_read_readvariableop6
2savev2_adam_conv3d_47_kernel_m_read_readvariableop4
0savev2_adam_conv3d_47_bias_m_read_readvariableop6
2savev2_adam_conv3d_48_kernel_m_read_readvariableop4
0savev2_adam_conv3d_48_bias_m_read_readvariableop?
;savev2_adam_conv3d_transpose_7_kernel_m_read_readvariableop=
9savev2_adam_conv3d_transpose_7_bias_m_read_readvariableop6
2savev2_adam_conv3d_49_kernel_m_read_readvariableop4
0savev2_adam_conv3d_49_bias_m_read_readvariableop6
2savev2_adam_conv3d_50_kernel_m_read_readvariableop4
0savev2_adam_conv3d_50_bias_m_read_readvariableop6
2savev2_adam_conv3d_51_kernel_m_read_readvariableop4
0savev2_adam_conv3d_51_bias_m_read_readvariableop6
2savev2_adam_conv3d_52_kernel_m_read_readvariableop4
0savev2_adam_conv3d_52_bias_m_read_readvariableop6
2savev2_adam_conv3d_53_kernel_m_read_readvariableop4
0savev2_adam_conv3d_53_bias_m_read_readvariableop6
2savev2_adam_conv3d_27_kernel_v_read_readvariableop4
0savev2_adam_conv3d_27_bias_v_read_readvariableop6
2savev2_adam_conv3d_28_kernel_v_read_readvariableop4
0savev2_adam_conv3d_28_bias_v_read_readvariableop6
2savev2_adam_conv3d_29_kernel_v_read_readvariableop4
0savev2_adam_conv3d_29_bias_v_read_readvariableop6
2savev2_adam_conv3d_30_kernel_v_read_readvariableop4
0savev2_adam_conv3d_30_bias_v_read_readvariableop6
2savev2_adam_conv3d_31_kernel_v_read_readvariableop4
0savev2_adam_conv3d_31_bias_v_read_readvariableop6
2savev2_adam_conv3d_32_kernel_v_read_readvariableop4
0savev2_adam_conv3d_32_bias_v_read_readvariableop6
2savev2_adam_conv3d_33_kernel_v_read_readvariableop4
0savev2_adam_conv3d_33_bias_v_read_readvariableop6
2savev2_adam_conv3d_34_kernel_v_read_readvariableop4
0savev2_adam_conv3d_34_bias_v_read_readvariableop6
2savev2_adam_conv3d_35_kernel_v_read_readvariableop4
0savev2_adam_conv3d_35_bias_v_read_readvariableop6
2savev2_adam_conv3d_36_kernel_v_read_readvariableop4
0savev2_adam_conv3d_36_bias_v_read_readvariableop?
;savev2_adam_conv3d_transpose_4_kernel_v_read_readvariableop=
9savev2_adam_conv3d_transpose_4_bias_v_read_readvariableop6
2savev2_adam_conv3d_37_kernel_v_read_readvariableop4
0savev2_adam_conv3d_37_bias_v_read_readvariableop6
2savev2_adam_conv3d_38_kernel_v_read_readvariableop4
0savev2_adam_conv3d_38_bias_v_read_readvariableop6
2savev2_adam_conv3d_39_kernel_v_read_readvariableop4
0savev2_adam_conv3d_39_bias_v_read_readvariableop6
2savev2_adam_conv3d_40_kernel_v_read_readvariableop4
0savev2_adam_conv3d_40_bias_v_read_readvariableop?
;savev2_adam_conv3d_transpose_5_kernel_v_read_readvariableop=
9savev2_adam_conv3d_transpose_5_bias_v_read_readvariableop6
2savev2_adam_conv3d_41_kernel_v_read_readvariableop4
0savev2_adam_conv3d_41_bias_v_read_readvariableop6
2savev2_adam_conv3d_42_kernel_v_read_readvariableop4
0savev2_adam_conv3d_42_bias_v_read_readvariableop6
2savev2_adam_conv3d_43_kernel_v_read_readvariableop4
0savev2_adam_conv3d_43_bias_v_read_readvariableop6
2savev2_adam_conv3d_44_kernel_v_read_readvariableop4
0savev2_adam_conv3d_44_bias_v_read_readvariableop?
;savev2_adam_conv3d_transpose_6_kernel_v_read_readvariableop=
9savev2_adam_conv3d_transpose_6_bias_v_read_readvariableop6
2savev2_adam_conv3d_45_kernel_v_read_readvariableop4
0savev2_adam_conv3d_45_bias_v_read_readvariableop6
2savev2_adam_conv3d_46_kernel_v_read_readvariableop4
0savev2_adam_conv3d_46_bias_v_read_readvariableop6
2savev2_adam_conv3d_47_kernel_v_read_readvariableop4
0savev2_adam_conv3d_47_bias_v_read_readvariableop6
2savev2_adam_conv3d_48_kernel_v_read_readvariableop4
0savev2_adam_conv3d_48_bias_v_read_readvariableop?
;savev2_adam_conv3d_transpose_7_kernel_v_read_readvariableop=
9savev2_adam_conv3d_transpose_7_bias_v_read_readvariableop6
2savev2_adam_conv3d_49_kernel_v_read_readvariableop4
0savev2_adam_conv3d_49_bias_v_read_readvariableop6
2savev2_adam_conv3d_50_kernel_v_read_readvariableop4
0savev2_adam_conv3d_50_bias_v_read_readvariableop6
2savev2_adam_conv3d_51_kernel_v_read_readvariableop4
0savev2_adam_conv3d_51_bias_v_read_readvariableop6
2savev2_adam_conv3d_52_kernel_v_read_readvariableop4
0savev2_adam_conv3d_52_bias_v_read_readvariableop6
2savev2_adam_conv3d_53_kernel_v_read_readvariableop4
0savev2_adam_conv3d_53_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �p
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�o
value�oB�o�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �N
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_27_kernel_read_readvariableop)savev2_conv3d_27_bias_read_readvariableop+savev2_conv3d_28_kernel_read_readvariableop)savev2_conv3d_28_bias_read_readvariableop+savev2_conv3d_29_kernel_read_readvariableop)savev2_conv3d_29_bias_read_readvariableop+savev2_conv3d_30_kernel_read_readvariableop)savev2_conv3d_30_bias_read_readvariableop+savev2_conv3d_31_kernel_read_readvariableop)savev2_conv3d_31_bias_read_readvariableop+savev2_conv3d_32_kernel_read_readvariableop)savev2_conv3d_32_bias_read_readvariableop+savev2_conv3d_33_kernel_read_readvariableop)savev2_conv3d_33_bias_read_readvariableop+savev2_conv3d_34_kernel_read_readvariableop)savev2_conv3d_34_bias_read_readvariableop+savev2_conv3d_35_kernel_read_readvariableop)savev2_conv3d_35_bias_read_readvariableop+savev2_conv3d_36_kernel_read_readvariableop)savev2_conv3d_36_bias_read_readvariableop4savev2_conv3d_transpose_4_kernel_read_readvariableop2savev2_conv3d_transpose_4_bias_read_readvariableop+savev2_conv3d_37_kernel_read_readvariableop)savev2_conv3d_37_bias_read_readvariableop+savev2_conv3d_38_kernel_read_readvariableop)savev2_conv3d_38_bias_read_readvariableop+savev2_conv3d_39_kernel_read_readvariableop)savev2_conv3d_39_bias_read_readvariableop+savev2_conv3d_40_kernel_read_readvariableop)savev2_conv3d_40_bias_read_readvariableop4savev2_conv3d_transpose_5_kernel_read_readvariableop2savev2_conv3d_transpose_5_bias_read_readvariableop+savev2_conv3d_41_kernel_read_readvariableop)savev2_conv3d_41_bias_read_readvariableop+savev2_conv3d_42_kernel_read_readvariableop)savev2_conv3d_42_bias_read_readvariableop+savev2_conv3d_43_kernel_read_readvariableop)savev2_conv3d_43_bias_read_readvariableop+savev2_conv3d_44_kernel_read_readvariableop)savev2_conv3d_44_bias_read_readvariableop4savev2_conv3d_transpose_6_kernel_read_readvariableop2savev2_conv3d_transpose_6_bias_read_readvariableop+savev2_conv3d_45_kernel_read_readvariableop)savev2_conv3d_45_bias_read_readvariableop+savev2_conv3d_46_kernel_read_readvariableop)savev2_conv3d_46_bias_read_readvariableop+savev2_conv3d_47_kernel_read_readvariableop)savev2_conv3d_47_bias_read_readvariableop+savev2_conv3d_48_kernel_read_readvariableop)savev2_conv3d_48_bias_read_readvariableop4savev2_conv3d_transpose_7_kernel_read_readvariableop2savev2_conv3d_transpose_7_bias_read_readvariableop+savev2_conv3d_49_kernel_read_readvariableop)savev2_conv3d_49_bias_read_readvariableop+savev2_conv3d_50_kernel_read_readvariableop)savev2_conv3d_50_bias_read_readvariableop+savev2_conv3d_51_kernel_read_readvariableop)savev2_conv3d_51_bias_read_readvariableop+savev2_conv3d_52_kernel_read_readvariableop)savev2_conv3d_52_bias_read_readvariableop+savev2_conv3d_53_kernel_read_readvariableop)savev2_conv3d_53_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv3d_27_kernel_m_read_readvariableop0savev2_adam_conv3d_27_bias_m_read_readvariableop2savev2_adam_conv3d_28_kernel_m_read_readvariableop0savev2_adam_conv3d_28_bias_m_read_readvariableop2savev2_adam_conv3d_29_kernel_m_read_readvariableop0savev2_adam_conv3d_29_bias_m_read_readvariableop2savev2_adam_conv3d_30_kernel_m_read_readvariableop0savev2_adam_conv3d_30_bias_m_read_readvariableop2savev2_adam_conv3d_31_kernel_m_read_readvariableop0savev2_adam_conv3d_31_bias_m_read_readvariableop2savev2_adam_conv3d_32_kernel_m_read_readvariableop0savev2_adam_conv3d_32_bias_m_read_readvariableop2savev2_adam_conv3d_33_kernel_m_read_readvariableop0savev2_adam_conv3d_33_bias_m_read_readvariableop2savev2_adam_conv3d_34_kernel_m_read_readvariableop0savev2_adam_conv3d_34_bias_m_read_readvariableop2savev2_adam_conv3d_35_kernel_m_read_readvariableop0savev2_adam_conv3d_35_bias_m_read_readvariableop2savev2_adam_conv3d_36_kernel_m_read_readvariableop0savev2_adam_conv3d_36_bias_m_read_readvariableop;savev2_adam_conv3d_transpose_4_kernel_m_read_readvariableop9savev2_adam_conv3d_transpose_4_bias_m_read_readvariableop2savev2_adam_conv3d_37_kernel_m_read_readvariableop0savev2_adam_conv3d_37_bias_m_read_readvariableop2savev2_adam_conv3d_38_kernel_m_read_readvariableop0savev2_adam_conv3d_38_bias_m_read_readvariableop2savev2_adam_conv3d_39_kernel_m_read_readvariableop0savev2_adam_conv3d_39_bias_m_read_readvariableop2savev2_adam_conv3d_40_kernel_m_read_readvariableop0savev2_adam_conv3d_40_bias_m_read_readvariableop;savev2_adam_conv3d_transpose_5_kernel_m_read_readvariableop9savev2_adam_conv3d_transpose_5_bias_m_read_readvariableop2savev2_adam_conv3d_41_kernel_m_read_readvariableop0savev2_adam_conv3d_41_bias_m_read_readvariableop2savev2_adam_conv3d_42_kernel_m_read_readvariableop0savev2_adam_conv3d_42_bias_m_read_readvariableop2savev2_adam_conv3d_43_kernel_m_read_readvariableop0savev2_adam_conv3d_43_bias_m_read_readvariableop2savev2_adam_conv3d_44_kernel_m_read_readvariableop0savev2_adam_conv3d_44_bias_m_read_readvariableop;savev2_adam_conv3d_transpose_6_kernel_m_read_readvariableop9savev2_adam_conv3d_transpose_6_bias_m_read_readvariableop2savev2_adam_conv3d_45_kernel_m_read_readvariableop0savev2_adam_conv3d_45_bias_m_read_readvariableop2savev2_adam_conv3d_46_kernel_m_read_readvariableop0savev2_adam_conv3d_46_bias_m_read_readvariableop2savev2_adam_conv3d_47_kernel_m_read_readvariableop0savev2_adam_conv3d_47_bias_m_read_readvariableop2savev2_adam_conv3d_48_kernel_m_read_readvariableop0savev2_adam_conv3d_48_bias_m_read_readvariableop;savev2_adam_conv3d_transpose_7_kernel_m_read_readvariableop9savev2_adam_conv3d_transpose_7_bias_m_read_readvariableop2savev2_adam_conv3d_49_kernel_m_read_readvariableop0savev2_adam_conv3d_49_bias_m_read_readvariableop2savev2_adam_conv3d_50_kernel_m_read_readvariableop0savev2_adam_conv3d_50_bias_m_read_readvariableop2savev2_adam_conv3d_51_kernel_m_read_readvariableop0savev2_adam_conv3d_51_bias_m_read_readvariableop2savev2_adam_conv3d_52_kernel_m_read_readvariableop0savev2_adam_conv3d_52_bias_m_read_readvariableop2savev2_adam_conv3d_53_kernel_m_read_readvariableop0savev2_adam_conv3d_53_bias_m_read_readvariableop2savev2_adam_conv3d_27_kernel_v_read_readvariableop0savev2_adam_conv3d_27_bias_v_read_readvariableop2savev2_adam_conv3d_28_kernel_v_read_readvariableop0savev2_adam_conv3d_28_bias_v_read_readvariableop2savev2_adam_conv3d_29_kernel_v_read_readvariableop0savev2_adam_conv3d_29_bias_v_read_readvariableop2savev2_adam_conv3d_30_kernel_v_read_readvariableop0savev2_adam_conv3d_30_bias_v_read_readvariableop2savev2_adam_conv3d_31_kernel_v_read_readvariableop0savev2_adam_conv3d_31_bias_v_read_readvariableop2savev2_adam_conv3d_32_kernel_v_read_readvariableop0savev2_adam_conv3d_32_bias_v_read_readvariableop2savev2_adam_conv3d_33_kernel_v_read_readvariableop0savev2_adam_conv3d_33_bias_v_read_readvariableop2savev2_adam_conv3d_34_kernel_v_read_readvariableop0savev2_adam_conv3d_34_bias_v_read_readvariableop2savev2_adam_conv3d_35_kernel_v_read_readvariableop0savev2_adam_conv3d_35_bias_v_read_readvariableop2savev2_adam_conv3d_36_kernel_v_read_readvariableop0savev2_adam_conv3d_36_bias_v_read_readvariableop;savev2_adam_conv3d_transpose_4_kernel_v_read_readvariableop9savev2_adam_conv3d_transpose_4_bias_v_read_readvariableop2savev2_adam_conv3d_37_kernel_v_read_readvariableop0savev2_adam_conv3d_37_bias_v_read_readvariableop2savev2_adam_conv3d_38_kernel_v_read_readvariableop0savev2_adam_conv3d_38_bias_v_read_readvariableop2savev2_adam_conv3d_39_kernel_v_read_readvariableop0savev2_adam_conv3d_39_bias_v_read_readvariableop2savev2_adam_conv3d_40_kernel_v_read_readvariableop0savev2_adam_conv3d_40_bias_v_read_readvariableop;savev2_adam_conv3d_transpose_5_kernel_v_read_readvariableop9savev2_adam_conv3d_transpose_5_bias_v_read_readvariableop2savev2_adam_conv3d_41_kernel_v_read_readvariableop0savev2_adam_conv3d_41_bias_v_read_readvariableop2savev2_adam_conv3d_42_kernel_v_read_readvariableop0savev2_adam_conv3d_42_bias_v_read_readvariableop2savev2_adam_conv3d_43_kernel_v_read_readvariableop0savev2_adam_conv3d_43_bias_v_read_readvariableop2savev2_adam_conv3d_44_kernel_v_read_readvariableop0savev2_adam_conv3d_44_bias_v_read_readvariableop;savev2_adam_conv3d_transpose_6_kernel_v_read_readvariableop9savev2_adam_conv3d_transpose_6_bias_v_read_readvariableop2savev2_adam_conv3d_45_kernel_v_read_readvariableop0savev2_adam_conv3d_45_bias_v_read_readvariableop2savev2_adam_conv3d_46_kernel_v_read_readvariableop0savev2_adam_conv3d_46_bias_v_read_readvariableop2savev2_adam_conv3d_47_kernel_v_read_readvariableop0savev2_adam_conv3d_47_bias_v_read_readvariableop2savev2_adam_conv3d_48_kernel_v_read_readvariableop0savev2_adam_conv3d_48_bias_v_read_readvariableop;savev2_adam_conv3d_transpose_7_kernel_v_read_readvariableop9savev2_adam_conv3d_transpose_7_bias_v_read_readvariableop2savev2_adam_conv3d_49_kernel_v_read_readvariableop0savev2_adam_conv3d_49_bias_v_read_readvariableop2savev2_adam_conv3d_50_kernel_v_read_readvariableop0savev2_adam_conv3d_50_bias_v_read_readvariableop2savev2_adam_conv3d_51_kernel_v_read_readvariableop0savev2_adam_conv3d_51_bias_v_read_readvariableop2savev2_adam_conv3d_52_kernel_v_read_readvariableop0savev2_adam_conv3d_52_bias_v_read_readvariableop2savev2_adam_conv3d_53_kernel_v_read_readvariableop0savev2_adam_conv3d_53_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *�
dtypes�
�2�	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::: : :  : : @:@:@@:@:@�:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:@�:@:@@:@:�@:@:@@:@:@@:@: @: :  : :@ : :  : :  : : :::: :::::::: : : : : : : : : ::::: : :  : : @:@:@@:@:@�:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:@�:@:@@:@:�@:@:@@:@:@@:@: @: :  : :@ : :  : :  : : :::: :::::::::::: : :  : : @:@:@@:@:@�:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:@�:@:@@:@:�@:@:@@:@:@@:@: @: :  : :@ : :  : :  : : :::: :::::::: 2(
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
:@�:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:1-
+
_output_shapes
:@�:  
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
:�@: $
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
:@�:!U

_output_shapes	
:�:2V.
,
_output_shapes
:��:!W

_output_shapes	
:�:2X.
,
_output_shapes
:��:!Y

_output_shapes	
:�:2Z.
,
_output_shapes
:��:![

_output_shapes	
:�:2\.
,
_output_shapes
:��:!]

_output_shapes	
:�:2^.
,
_output_shapes
:��:!_

_output_shapes	
:�:2`.
,
_output_shapes
:��:!a

_output_shapes	
:�:2b.
,
_output_shapes
:��:!c

_output_shapes	
:�:2d.
,
_output_shapes
:��:!e

_output_shapes	
:�:1f-
+
_output_shapes
:@�: g
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
:�@: k
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
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
: :!�

_output_shapes
: :1�,
*
_output_shapes
:  :!�

_output_shapes
: :1�,
*
_output_shapes
: @:!�

_output_shapes
:@:1�,
*
_output_shapes
:@@:!�

_output_shapes
:@:2�-
+
_output_shapes
:@�:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:3�.
,
_output_shapes
:��:"�

_output_shapes	
:�:2�-
+
_output_shapes
:@�:!�

_output_shapes
:@:1�,
*
_output_shapes
:@@:!�

_output_shapes
:@:2�-
+
_output_shapes
:�@:!�

_output_shapes
:@:1�,
*
_output_shapes
:@@:!�

_output_shapes
:@:1�,
*
_output_shapes
:@@:!�

_output_shapes
:@:1�,
*
_output_shapes
: @:!�

_output_shapes
: :1�,
*
_output_shapes
:  :!�

_output_shapes
: :1�,
*
_output_shapes
:@ :!�

_output_shapes
: :1�,
*
_output_shapes
:  :!�

_output_shapes
: :1�,
*
_output_shapes
:  :!�

_output_shapes
: :1�,
*
_output_shapes
: :!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
: :!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::1�,
*
_output_shapes
::!�

_output_shapes
::�

_output_shapes
: 
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_56487

inputs-
conv3d_27_56322:
conv3d_27_56324:-
conv3d_28_56327:
conv3d_28_56329:-
conv3d_29_56333: 
conv3d_29_56335: -
conv3d_30_56338:  
conv3d_30_56340: -
conv3d_31_56344: @
conv3d_31_56346:@-
conv3d_32_56349:@@
conv3d_32_56351:@.
conv3d_33_56355:@�
conv3d_33_56357:	�/
conv3d_34_56360:��
conv3d_34_56362:	�/
conv3d_35_56366:��
conv3d_35_56368:	�/
conv3d_36_56371:��
conv3d_36_56373:	�8
conv3d_transpose_4_56376:��'
conv3d_transpose_4_56378:	�/
conv3d_37_56381:��
conv3d_37_56383:	�/
conv3d_38_56387:��
conv3d_38_56389:	�/
conv3d_39_56392:��
conv3d_39_56394:	�/
conv3d_40_56397:��
conv3d_40_56399:	�7
conv3d_transpose_5_56402:@�&
conv3d_transpose_5_56404:@-
conv3d_41_56407:@@
conv3d_41_56409:@.
conv3d_42_56413:�@
conv3d_42_56415:@-
conv3d_43_56418:@@
conv3d_43_56420:@-
conv3d_44_56423:@@
conv3d_44_56425:@6
conv3d_transpose_6_56428: @&
conv3d_transpose_6_56430: -
conv3d_45_56433:  
conv3d_45_56435: -
conv3d_46_56439:@ 
conv3d_46_56441: -
conv3d_47_56444:  
conv3d_47_56446: -
conv3d_48_56449:  
conv3d_48_56451: 6
conv3d_transpose_7_56454: &
conv3d_transpose_7_56456:-
conv3d_49_56459:
conv3d_49_56461:-
conv3d_50_56465: 
conv3d_50_56467:-
conv3d_51_56470:
conv3d_51_56472:-
conv3d_52_56475:
conv3d_52_56477:-
conv3d_53_56481:
conv3d_53_56483:
identity��!conv3d_27/StatefulPartitionedCall�!conv3d_28/StatefulPartitionedCall�!conv3d_29/StatefulPartitionedCall�!conv3d_30/StatefulPartitionedCall�!conv3d_31/StatefulPartitionedCall�!conv3d_32/StatefulPartitionedCall�!conv3d_33/StatefulPartitionedCall�!conv3d_34/StatefulPartitionedCall�!conv3d_35/StatefulPartitionedCall�!conv3d_36/StatefulPartitionedCall�!conv3d_37/StatefulPartitionedCall�!conv3d_38/StatefulPartitionedCall�!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�!conv3d_44/StatefulPartitionedCall�!conv3d_45/StatefulPartitionedCall�!conv3d_46/StatefulPartitionedCall�!conv3d_47/StatefulPartitionedCall�!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�*conv3d_transpose_4/StatefulPartitionedCall�*conv3d_transpose_5/StatefulPartitionedCall�*conv3d_transpose_6/StatefulPartitionedCall�*conv3d_transpose_7/StatefulPartitionedCall�
 zero_padding3d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_54978�
!conv3d_27/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_27_56322conv3d_27_56324*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_27_layer_call_and_return_conditional_losses_55253�
!conv3d_28/StatefulPartitionedCallStatefulPartitionedCall*conv3d_27/StatefulPartitionedCall:output:0conv3d_28_56327conv3d_28_56329*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_28_layer_call_and_return_conditional_losses_55270�
max_pooling3d_4/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_54990�
!conv3d_29/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_29_56333conv3d_29_56335*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_29_layer_call_and_return_conditional_losses_55288�
!conv3d_30/StatefulPartitionedCallStatefulPartitionedCall*conv3d_29/StatefulPartitionedCall:output:0conv3d_30_56338conv3d_30_56340*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_30_layer_call_and_return_conditional_losses_55305�
max_pooling3d_5/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_55002�
!conv3d_31/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_5/PartitionedCall:output:0conv3d_31_56344conv3d_31_56346*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_31_layer_call_and_return_conditional_losses_55323�
!conv3d_32/StatefulPartitionedCallStatefulPartitionedCall*conv3d_31/StatefulPartitionedCall:output:0conv3d_32_56349conv3d_32_56351*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_32_layer_call_and_return_conditional_losses_55340�
max_pooling3d_6/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_55014�
!conv3d_33/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_6/PartitionedCall:output:0conv3d_33_56355conv3d_33_56357*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_33_layer_call_and_return_conditional_losses_55358�
!conv3d_34/StatefulPartitionedCallStatefulPartitionedCall*conv3d_33/StatefulPartitionedCall:output:0conv3d_34_56360conv3d_34_56362*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_34_layer_call_and_return_conditional_losses_55375�
max_pooling3d_7/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_55026�
!conv3d_35/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_7/PartitionedCall:output:0conv3d_35_56366conv3d_35_56368*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_35_layer_call_and_return_conditional_losses_55393�
!conv3d_36/StatefulPartitionedCallStatefulPartitionedCall*conv3d_35/StatefulPartitionedCall:output:0conv3d_36_56371conv3d_36_56373*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_36_layer_call_and_return_conditional_losses_55410�
*conv3d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall*conv3d_36/StatefulPartitionedCall:output:0conv3d_transpose_4_56376conv3d_transpose_4_56378*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_55074�
!conv3d_37/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_4/StatefulPartitionedCall:output:0conv3d_37_56381conv3d_37_56383*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_37_layer_call_and_return_conditional_losses_55432�
concatenate_4/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*conv3d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_55445�
!conv3d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv3d_38_56387conv3d_38_56389*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_38_layer_call_and_return_conditional_losses_55458�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCall*conv3d_38/StatefulPartitionedCall:output:0conv3d_39_56392conv3d_39_56394*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_39_layer_call_and_return_conditional_losses_55475�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0conv3d_40_56397conv3d_40_56399*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_40_layer_call_and_return_conditional_losses_55492�
*conv3d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0conv3d_transpose_5_56402conv3d_transpose_5_56404*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_55120�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_5/StatefulPartitionedCall:output:0conv3d_41_56407conv3d_41_56409*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_41_layer_call_and_return_conditional_losses_55514�
concatenate_5/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*conv3d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_55527�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv3d_42_56413conv3d_42_56415*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_42_layer_call_and_return_conditional_losses_55540�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_56418conv3d_43_56420*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_43_layer_call_and_return_conditional_losses_55557�
!conv3d_44/StatefulPartitionedCallStatefulPartitionedCall*conv3d_43/StatefulPartitionedCall:output:0conv3d_44_56423conv3d_44_56425*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_44_layer_call_and_return_conditional_losses_55574�
*conv3d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall*conv3d_44/StatefulPartitionedCall:output:0conv3d_transpose_6_56428conv3d_transpose_6_56430*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_55166�
!conv3d_45/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_6/StatefulPartitionedCall:output:0conv3d_45_56433conv3d_45_56435*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_45_layer_call_and_return_conditional_losses_55596�
concatenate_6/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*conv3d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_55609�
!conv3d_46/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0conv3d_46_56439conv3d_46_56441*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_46_layer_call_and_return_conditional_losses_55622�
!conv3d_47/StatefulPartitionedCallStatefulPartitionedCall*conv3d_46/StatefulPartitionedCall:output:0conv3d_47_56444conv3d_47_56446*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_47_layer_call_and_return_conditional_losses_55639�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCall*conv3d_47/StatefulPartitionedCall:output:0conv3d_48_56449conv3d_48_56451*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_48_layer_call_and_return_conditional_losses_55656�
*conv3d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0conv3d_transpose_7_56454conv3d_transpose_7_56456*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_55212�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_7/StatefulPartitionedCall:output:0conv3d_49_56459conv3d_49_56461*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_49_layer_call_and_return_conditional_losses_55678�
concatenate_7/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*conv3d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_55691�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0conv3d_50_56465conv3d_50_56467*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_50_layer_call_and_return_conditional_losses_55704�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0conv3d_51_56470conv3d_51_56472*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_51_layer_call_and_return_conditional_losses_55721�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_56475conv3d_52_56477*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_52_layer_call_and_return_conditional_losses_55738�
cropping3d_1/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_55231�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_1/PartitionedCall:output:0conv3d_53_56481conv3d_53_56483*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_53_layer_call_and_return_conditional_losses_55755�
IdentityIdentity*conv3d_53/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp"^conv3d_27/StatefulPartitionedCall"^conv3d_28/StatefulPartitionedCall"^conv3d_29/StatefulPartitionedCall"^conv3d_30/StatefulPartitionedCall"^conv3d_31/StatefulPartitionedCall"^conv3d_32/StatefulPartitionedCall"^conv3d_33/StatefulPartitionedCall"^conv3d_34/StatefulPartitionedCall"^conv3d_35/StatefulPartitionedCall"^conv3d_36/StatefulPartitionedCall"^conv3d_37/StatefulPartitionedCall"^conv3d_38/StatefulPartitionedCall"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall"^conv3d_44/StatefulPartitionedCall"^conv3d_45/StatefulPartitionedCall"^conv3d_46/StatefulPartitionedCall"^conv3d_47/StatefulPartitionedCall"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall+^conv3d_transpose_4/StatefulPartitionedCall+^conv3d_transpose_5/StatefulPartitionedCall+^conv3d_transpose_6/StatefulPartitionedCall+^conv3d_transpose_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_27/StatefulPartitionedCall!conv3d_27/StatefulPartitionedCall2F
!conv3d_28/StatefulPartitionedCall!conv3d_28/StatefulPartitionedCall2F
!conv3d_29/StatefulPartitionedCall!conv3d_29/StatefulPartitionedCall2F
!conv3d_30/StatefulPartitionedCall!conv3d_30/StatefulPartitionedCall2F
!conv3d_31/StatefulPartitionedCall!conv3d_31/StatefulPartitionedCall2F
!conv3d_32/StatefulPartitionedCall!conv3d_32/StatefulPartitionedCall2F
!conv3d_33/StatefulPartitionedCall!conv3d_33/StatefulPartitionedCall2F
!conv3d_34/StatefulPartitionedCall!conv3d_34/StatefulPartitionedCall2F
!conv3d_35/StatefulPartitionedCall!conv3d_35/StatefulPartitionedCall2F
!conv3d_36/StatefulPartitionedCall!conv3d_36/StatefulPartitionedCall2F
!conv3d_37/StatefulPartitionedCall!conv3d_37/StatefulPartitionedCall2F
!conv3d_38/StatefulPartitionedCall!conv3d_38/StatefulPartitionedCall2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2F
!conv3d_44/StatefulPartitionedCall!conv3d_44/StatefulPartitionedCall2F
!conv3d_45/StatefulPartitionedCall!conv3d_45/StatefulPartitionedCall2F
!conv3d_46/StatefulPartitionedCall!conv3d_46/StatefulPartitionedCall2F
!conv3d_47/StatefulPartitionedCall!conv3d_47/StatefulPartitionedCall2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2X
*conv3d_transpose_4/StatefulPartitionedCall*conv3d_transpose_4/StatefulPartitionedCall2X
*conv3d_transpose_5/StatefulPartitionedCall*conv3d_transpose_5/StatefulPartitionedCall2X
*conv3d_transpose_6/StatefulPartitionedCall*conv3d_transpose_6/StatefulPartitionedCall2X
*conv3d_transpose_7/StatefulPartitionedCall*conv3d_transpose_7/StatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_50_layer_call_and_return_conditional_losses_58921

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
r
H__inference_concatenate_6_layer_call_and_return_conditional_losses_55609

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8������������������������������������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������ :8������������������������������������ :v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs:vr
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
D__inference_conv3d_46_layer_call_and_return_conditional_losses_55622

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_37_layer_call_and_return_conditional_losses_55432

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_50_layer_call_and_return_conditional_losses_55704

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
)__inference_conv3d_53_layer_call_fn_58983

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_53_layer_call_and_return_conditional_losses_55755�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
��
�:
 __inference__wrapped_model_54968
input_2N
0model_1_conv3d_27_conv3d_readvariableop_resource:?
1model_1_conv3d_27_biasadd_readvariableop_resource:N
0model_1_conv3d_28_conv3d_readvariableop_resource:?
1model_1_conv3d_28_biasadd_readvariableop_resource:N
0model_1_conv3d_29_conv3d_readvariableop_resource: ?
1model_1_conv3d_29_biasadd_readvariableop_resource: N
0model_1_conv3d_30_conv3d_readvariableop_resource:  ?
1model_1_conv3d_30_biasadd_readvariableop_resource: N
0model_1_conv3d_31_conv3d_readvariableop_resource: @?
1model_1_conv3d_31_biasadd_readvariableop_resource:@N
0model_1_conv3d_32_conv3d_readvariableop_resource:@@?
1model_1_conv3d_32_biasadd_readvariableop_resource:@O
0model_1_conv3d_33_conv3d_readvariableop_resource:@�@
1model_1_conv3d_33_biasadd_readvariableop_resource:	�P
0model_1_conv3d_34_conv3d_readvariableop_resource:��@
1model_1_conv3d_34_biasadd_readvariableop_resource:	�P
0model_1_conv3d_35_conv3d_readvariableop_resource:��@
1model_1_conv3d_35_biasadd_readvariableop_resource:	�P
0model_1_conv3d_36_conv3d_readvariableop_resource:��@
1model_1_conv3d_36_biasadd_readvariableop_resource:	�c
Cmodel_1_conv3d_transpose_4_conv3d_transpose_readvariableop_resource:��I
:model_1_conv3d_transpose_4_biasadd_readvariableop_resource:	�P
0model_1_conv3d_37_conv3d_readvariableop_resource:��@
1model_1_conv3d_37_biasadd_readvariableop_resource:	�P
0model_1_conv3d_38_conv3d_readvariableop_resource:��@
1model_1_conv3d_38_biasadd_readvariableop_resource:	�P
0model_1_conv3d_39_conv3d_readvariableop_resource:��@
1model_1_conv3d_39_biasadd_readvariableop_resource:	�P
0model_1_conv3d_40_conv3d_readvariableop_resource:��@
1model_1_conv3d_40_biasadd_readvariableop_resource:	�b
Cmodel_1_conv3d_transpose_5_conv3d_transpose_readvariableop_resource:@�H
:model_1_conv3d_transpose_5_biasadd_readvariableop_resource:@N
0model_1_conv3d_41_conv3d_readvariableop_resource:@@?
1model_1_conv3d_41_biasadd_readvariableop_resource:@O
0model_1_conv3d_42_conv3d_readvariableop_resource:�@?
1model_1_conv3d_42_biasadd_readvariableop_resource:@N
0model_1_conv3d_43_conv3d_readvariableop_resource:@@?
1model_1_conv3d_43_biasadd_readvariableop_resource:@N
0model_1_conv3d_44_conv3d_readvariableop_resource:@@?
1model_1_conv3d_44_biasadd_readvariableop_resource:@a
Cmodel_1_conv3d_transpose_6_conv3d_transpose_readvariableop_resource: @H
:model_1_conv3d_transpose_6_biasadd_readvariableop_resource: N
0model_1_conv3d_45_conv3d_readvariableop_resource:  ?
1model_1_conv3d_45_biasadd_readvariableop_resource: N
0model_1_conv3d_46_conv3d_readvariableop_resource:@ ?
1model_1_conv3d_46_biasadd_readvariableop_resource: N
0model_1_conv3d_47_conv3d_readvariableop_resource:  ?
1model_1_conv3d_47_biasadd_readvariableop_resource: N
0model_1_conv3d_48_conv3d_readvariableop_resource:  ?
1model_1_conv3d_48_biasadd_readvariableop_resource: a
Cmodel_1_conv3d_transpose_7_conv3d_transpose_readvariableop_resource: H
:model_1_conv3d_transpose_7_biasadd_readvariableop_resource:N
0model_1_conv3d_49_conv3d_readvariableop_resource:?
1model_1_conv3d_49_biasadd_readvariableop_resource:N
0model_1_conv3d_50_conv3d_readvariableop_resource: ?
1model_1_conv3d_50_biasadd_readvariableop_resource:N
0model_1_conv3d_51_conv3d_readvariableop_resource:?
1model_1_conv3d_51_biasadd_readvariableop_resource:N
0model_1_conv3d_52_conv3d_readvariableop_resource:?
1model_1_conv3d_52_biasadd_readvariableop_resource:N
0model_1_conv3d_53_conv3d_readvariableop_resource:?
1model_1_conv3d_53_biasadd_readvariableop_resource:
identity��(model_1/conv3d_27/BiasAdd/ReadVariableOp�'model_1/conv3d_27/Conv3D/ReadVariableOp�(model_1/conv3d_28/BiasAdd/ReadVariableOp�'model_1/conv3d_28/Conv3D/ReadVariableOp�(model_1/conv3d_29/BiasAdd/ReadVariableOp�'model_1/conv3d_29/Conv3D/ReadVariableOp�(model_1/conv3d_30/BiasAdd/ReadVariableOp�'model_1/conv3d_30/Conv3D/ReadVariableOp�(model_1/conv3d_31/BiasAdd/ReadVariableOp�'model_1/conv3d_31/Conv3D/ReadVariableOp�(model_1/conv3d_32/BiasAdd/ReadVariableOp�'model_1/conv3d_32/Conv3D/ReadVariableOp�(model_1/conv3d_33/BiasAdd/ReadVariableOp�'model_1/conv3d_33/Conv3D/ReadVariableOp�(model_1/conv3d_34/BiasAdd/ReadVariableOp�'model_1/conv3d_34/Conv3D/ReadVariableOp�(model_1/conv3d_35/BiasAdd/ReadVariableOp�'model_1/conv3d_35/Conv3D/ReadVariableOp�(model_1/conv3d_36/BiasAdd/ReadVariableOp�'model_1/conv3d_36/Conv3D/ReadVariableOp�(model_1/conv3d_37/BiasAdd/ReadVariableOp�'model_1/conv3d_37/Conv3D/ReadVariableOp�(model_1/conv3d_38/BiasAdd/ReadVariableOp�'model_1/conv3d_38/Conv3D/ReadVariableOp�(model_1/conv3d_39/BiasAdd/ReadVariableOp�'model_1/conv3d_39/Conv3D/ReadVariableOp�(model_1/conv3d_40/BiasAdd/ReadVariableOp�'model_1/conv3d_40/Conv3D/ReadVariableOp�(model_1/conv3d_41/BiasAdd/ReadVariableOp�'model_1/conv3d_41/Conv3D/ReadVariableOp�(model_1/conv3d_42/BiasAdd/ReadVariableOp�'model_1/conv3d_42/Conv3D/ReadVariableOp�(model_1/conv3d_43/BiasAdd/ReadVariableOp�'model_1/conv3d_43/Conv3D/ReadVariableOp�(model_1/conv3d_44/BiasAdd/ReadVariableOp�'model_1/conv3d_44/Conv3D/ReadVariableOp�(model_1/conv3d_45/BiasAdd/ReadVariableOp�'model_1/conv3d_45/Conv3D/ReadVariableOp�(model_1/conv3d_46/BiasAdd/ReadVariableOp�'model_1/conv3d_46/Conv3D/ReadVariableOp�(model_1/conv3d_47/BiasAdd/ReadVariableOp�'model_1/conv3d_47/Conv3D/ReadVariableOp�(model_1/conv3d_48/BiasAdd/ReadVariableOp�'model_1/conv3d_48/Conv3D/ReadVariableOp�(model_1/conv3d_49/BiasAdd/ReadVariableOp�'model_1/conv3d_49/Conv3D/ReadVariableOp�(model_1/conv3d_50/BiasAdd/ReadVariableOp�'model_1/conv3d_50/Conv3D/ReadVariableOp�(model_1/conv3d_51/BiasAdd/ReadVariableOp�'model_1/conv3d_51/Conv3D/ReadVariableOp�(model_1/conv3d_52/BiasAdd/ReadVariableOp�'model_1/conv3d_52/Conv3D/ReadVariableOp�(model_1/conv3d_53/BiasAdd/ReadVariableOp�'model_1/conv3d_53/Conv3D/ReadVariableOp�1model_1/conv3d_transpose_4/BiasAdd/ReadVariableOp�:model_1/conv3d_transpose_4/conv3d_transpose/ReadVariableOp�1model_1/conv3d_transpose_5/BiasAdd/ReadVariableOp�:model_1/conv3d_transpose_5/conv3d_transpose/ReadVariableOp�1model_1/conv3d_transpose_6/BiasAdd/ReadVariableOp�:model_1/conv3d_transpose_6/conv3d_transpose/ReadVariableOp�1model_1/conv3d_transpose_7/BiasAdd/ReadVariableOp�:model_1/conv3d_transpose_7/conv3d_transpose/ReadVariableOp�
%model_1/zero_padding3d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
model_1/zero_padding3d_1/PadPadinput_2.model_1/zero_padding3d_1/Pad/paddings:output:0*
T0*N
_output_shapes<
::8�������������������������������������
'model_1/conv3d_27/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_27_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_1/conv3d_27/Conv3DConv3D%model_1/zero_padding3d_1/Pad:output:0/model_1/conv3d_27/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_27/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv3d_27/BiasAddBiasAdd!model_1/conv3d_27/Conv3D:output:00model_1/conv3d_27/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_1/conv3d_27/ReluRelu"model_1/conv3d_27/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
'model_1/conv3d_28/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_28_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_1/conv3d_28/Conv3DConv3D$model_1/conv3d_27/Relu:activations:0/model_1/conv3d_28/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_28/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv3d_28/BiasAddBiasAdd!model_1/conv3d_28/Conv3D:output:00model_1/conv3d_28/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_1/conv3d_28/ReluRelu"model_1/conv3d_28/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
!model_1/max_pooling3d_4/MaxPool3D	MaxPool3D$model_1/conv3d_28/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
ksize	
*
paddingVALID*
strides	
�
'model_1/conv3d_29/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_29_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
model_1/conv3d_29/Conv3DConv3D*model_1/max_pooling3d_4/MaxPool3D:output:0/model_1/conv3d_29/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
(model_1/conv3d_29/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv3d_29/BiasAddBiasAdd!model_1/conv3d_29/Conv3D:output:00model_1/conv3d_29/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_1/conv3d_29/ReluRelu"model_1/conv3d_29/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
'model_1/conv3d_30/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_30_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_1/conv3d_30/Conv3DConv3D$model_1/conv3d_29/Relu:activations:0/model_1/conv3d_30/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
(model_1/conv3d_30/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv3d_30/BiasAddBiasAdd!model_1/conv3d_30/Conv3D:output:00model_1/conv3d_30/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_1/conv3d_30/ReluRelu"model_1/conv3d_30/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
!model_1/max_pooling3d_5/MaxPool3D	MaxPool3D$model_1/conv3d_30/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
ksize	
*
paddingVALID*
strides	
�
'model_1/conv3d_31/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_31_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
model_1/conv3d_31/Conv3DConv3D*model_1/max_pooling3d_5/MaxPool3D:output:0/model_1/conv3d_31/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
(model_1/conv3d_31/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_31_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv3d_31/BiasAddBiasAdd!model_1/conv3d_31/Conv3D:output:00model_1/conv3d_31/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_1/conv3d_31/ReluRelu"model_1/conv3d_31/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
'model_1/conv3d_32/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_32_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_1/conv3d_32/Conv3DConv3D$model_1/conv3d_31/Relu:activations:0/model_1/conv3d_32/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
(model_1/conv3d_32/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv3d_32/BiasAddBiasAdd!model_1/conv3d_32/Conv3D:output:00model_1/conv3d_32/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_1/conv3d_32/ReluRelu"model_1/conv3d_32/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
!model_1/max_pooling3d_6/MaxPool3D	MaxPool3D$model_1/conv3d_32/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
ksize	
*
paddingVALID*
strides	
�
'model_1/conv3d_33/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_33_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
model_1/conv3d_33/Conv3DConv3D*model_1/max_pooling3d_6/MaxPool3D:output:0/model_1/conv3d_33/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_33/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_33_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_33/BiasAddBiasAdd!model_1/conv3d_33/Conv3D:output:00model_1/conv3d_33/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_33/ReluRelu"model_1/conv3d_33/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
'model_1/conv3d_34/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_34_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_1/conv3d_34/Conv3DConv3D$model_1/conv3d_33/Relu:activations:0/model_1/conv3d_34/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_34/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_34/BiasAddBiasAdd!model_1/conv3d_34/Conv3D:output:00model_1/conv3d_34/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_34/ReluRelu"model_1/conv3d_34/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
!model_1/max_pooling3d_7/MaxPool3D	MaxPool3D$model_1/conv3d_34/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
ksize	
*
paddingVALID*
strides	
�
'model_1/conv3d_35/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_35_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_1/conv3d_35/Conv3DConv3D*model_1/max_pooling3d_7/MaxPool3D:output:0/model_1/conv3d_35/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_35/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_35_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_35/BiasAddBiasAdd!model_1/conv3d_35/Conv3D:output:00model_1/conv3d_35/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_35/ReluRelu"model_1/conv3d_35/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
'model_1/conv3d_36/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_36_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_1/conv3d_36/Conv3DConv3D$model_1/conv3d_35/Relu:activations:0/model_1/conv3d_36/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_36/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_36_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_36/BiasAddBiasAdd!model_1/conv3d_36/Conv3D:output:00model_1/conv3d_36/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_36/ReluRelu"model_1/conv3d_36/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������t
 model_1/conv3d_transpose_4/ShapeShape$model_1/conv3d_36/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv3d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv3d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv3d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(model_1/conv3d_transpose_4/strided_sliceStridedSlice)model_1/conv3d_transpose_4/Shape:output:07model_1/conv3d_transpose_4/strided_slice/stack:output:09model_1/conv3d_transpose_4/strided_slice/stack_1:output:09model_1/conv3d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_4/strided_slice_1StridedSlice)model_1/conv3d_transpose_4/Shape:output:09model_1/conv3d_transpose_4/strided_slice_1/stack:output:0;model_1/conv3d_transpose_4/strided_slice_1/stack_1:output:0;model_1/conv3d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_4/strided_slice_2StridedSlice)model_1/conv3d_transpose_4/Shape:output:09model_1/conv3d_transpose_4/strided_slice_2/stack:output:0;model_1/conv3d_transpose_4/strided_slice_2/stack_1:output:0;model_1/conv3d_transpose_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_4/strided_slice_3StridedSlice)model_1/conv3d_transpose_4/Shape:output:09model_1/conv3d_transpose_4/strided_slice_3/stack:output:0;model_1/conv3d_transpose_4/strided_slice_3/stack_1:output:0;model_1/conv3d_transpose_4/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model_1/conv3d_transpose_4/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/conv3d_transpose_4/mulMul3model_1/conv3d_transpose_4/strided_slice_1:output:0)model_1/conv3d_transpose_4/mul/y:output:0*
T0*
_output_shapes
: b
 model_1/conv3d_transpose_4/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
model_1/conv3d_transpose_4/addAddV2"model_1/conv3d_transpose_4/mul:z:0)model_1/conv3d_transpose_4/add/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_4/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_4/mul_1Mul3model_1/conv3d_transpose_4/strided_slice_2:output:0+model_1/conv3d_transpose_4/mul_1/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_4/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : �
 model_1/conv3d_transpose_4/add_1AddV2$model_1/conv3d_transpose_4/mul_1:z:0+model_1/conv3d_transpose_4/add_1/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_4/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_4/mul_2Mul3model_1/conv3d_transpose_4/strided_slice_3:output:0+model_1/conv3d_transpose_4/mul_2/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_4/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : �
 model_1/conv3d_transpose_4/add_2AddV2$model_1/conv3d_transpose_4/mul_2:z:0+model_1/conv3d_transpose_4/add_2/y:output:0*
T0*
_output_shapes
: e
"model_1/conv3d_transpose_4/stack/4Const*
_output_shapes
: *
dtype0*
value
B :��
 model_1/conv3d_transpose_4/stackPack1model_1/conv3d_transpose_4/strided_slice:output:0"model_1/conv3d_transpose_4/add:z:0$model_1/conv3d_transpose_4/add_1:z:0$model_1/conv3d_transpose_4/add_2:z:0+model_1/conv3d_transpose_4/stack/4:output:0*
N*
T0*
_output_shapes
:�
:model_1/conv3d_transpose_4/conv3d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv3d_transpose_4_conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
+model_1/conv3d_transpose_4/conv3d_transposeConv3DBackpropInputV2)model_1/conv3d_transpose_4/stack:output:0Bmodel_1/conv3d_transpose_4/conv3d_transpose/ReadVariableOp:value:0$model_1/conv3d_36/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
�
1model_1/conv3d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv3d_transpose_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"model_1/conv3d_transpose_4/BiasAddBiasAdd4model_1/conv3d_transpose_4/conv3d_transpose:output:09model_1/conv3d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
'model_1/conv3d_37/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_37_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_1/conv3d_37/Conv3DConv3D+model_1/conv3d_transpose_4/BiasAdd:output:0/model_1/conv3d_37/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_37/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_37_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_37/BiasAddBiasAdd!model_1/conv3d_37/Conv3D:output:00model_1/conv3d_37/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_37/ReluRelu"model_1/conv3d_37/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������c
!model_1/concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatenate_4/concatConcatV2$model_1/conv3d_34/Relu:activations:0$model_1/conv3d_37/Relu:activations:0*model_1/concatenate_4/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
'model_1/conv3d_38/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_38_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_1/conv3d_38/Conv3DConv3D%model_1/concatenate_4/concat:output:0/model_1/conv3d_38/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_38/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_38_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_38/BiasAddBiasAdd!model_1/conv3d_38/Conv3D:output:00model_1/conv3d_38/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_38/ReluRelu"model_1/conv3d_38/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
'model_1/conv3d_39/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_39_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_1/conv3d_39/Conv3DConv3D$model_1/conv3d_38/Relu:activations:0/model_1/conv3d_39/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_39/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_39_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_39/BiasAddBiasAdd!model_1/conv3d_39/Conv3D:output:00model_1/conv3d_39/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_39/ReluRelu"model_1/conv3d_39/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
'model_1/conv3d_40/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_40_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_1/conv3d_40/Conv3DConv3D$model_1/conv3d_39/Relu:activations:0/model_1/conv3d_40/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_40/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv3d_40/BiasAddBiasAdd!model_1/conv3d_40/Conv3D:output:00model_1/conv3d_40/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_1/conv3d_40/ReluRelu"model_1/conv3d_40/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������t
 model_1/conv3d_transpose_5/ShapeShape$model_1/conv3d_40/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv3d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv3d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv3d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(model_1/conv3d_transpose_5/strided_sliceStridedSlice)model_1/conv3d_transpose_5/Shape:output:07model_1/conv3d_transpose_5/strided_slice/stack:output:09model_1/conv3d_transpose_5/strided_slice/stack_1:output:09model_1/conv3d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_5/strided_slice_1StridedSlice)model_1/conv3d_transpose_5/Shape:output:09model_1/conv3d_transpose_5/strided_slice_1/stack:output:0;model_1/conv3d_transpose_5/strided_slice_1/stack_1:output:0;model_1/conv3d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_5/strided_slice_2StridedSlice)model_1/conv3d_transpose_5/Shape:output:09model_1/conv3d_transpose_5/strided_slice_2/stack:output:0;model_1/conv3d_transpose_5/strided_slice_2/stack_1:output:0;model_1/conv3d_transpose_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_5/strided_slice_3StridedSlice)model_1/conv3d_transpose_5/Shape:output:09model_1/conv3d_transpose_5/strided_slice_3/stack:output:0;model_1/conv3d_transpose_5/strided_slice_3/stack_1:output:0;model_1/conv3d_transpose_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model_1/conv3d_transpose_5/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/conv3d_transpose_5/mulMul3model_1/conv3d_transpose_5/strided_slice_1:output:0)model_1/conv3d_transpose_5/mul/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_5/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_5/mul_1Mul3model_1/conv3d_transpose_5/strided_slice_2:output:0+model_1/conv3d_transpose_5/mul_1/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_5/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_5/mul_2Mul3model_1/conv3d_transpose_5/strided_slice_3:output:0+model_1/conv3d_transpose_5/mul_2/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_5/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@�
 model_1/conv3d_transpose_5/stackPack1model_1/conv3d_transpose_5/strided_slice:output:0"model_1/conv3d_transpose_5/mul:z:0$model_1/conv3d_transpose_5/mul_1:z:0$model_1/conv3d_transpose_5/mul_2:z:0+model_1/conv3d_transpose_5/stack/4:output:0*
N*
T0*
_output_shapes
:�
:model_1/conv3d_transpose_5/conv3d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv3d_transpose_5_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
+model_1/conv3d_transpose_5/conv3d_transposeConv3DBackpropInputV2)model_1/conv3d_transpose_5/stack:output:0Bmodel_1/conv3d_transpose_5/conv3d_transpose/ReadVariableOp:value:0$model_1/conv3d_40/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
1model_1/conv3d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv3d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
"model_1/conv3d_transpose_5/BiasAddBiasAdd4model_1/conv3d_transpose_5/conv3d_transpose:output:09model_1/conv3d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
'model_1/conv3d_41/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_41_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_1/conv3d_41/Conv3DConv3D+model_1/conv3d_transpose_5/BiasAdd:output:0/model_1/conv3d_41/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
(model_1/conv3d_41/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv3d_41/BiasAddBiasAdd!model_1/conv3d_41/Conv3D:output:00model_1/conv3d_41/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_1/conv3d_41/ReluRelu"model_1/conv3d_41/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@c
!model_1/concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatenate_5/concatConcatV2$model_1/conv3d_32/Relu:activations:0$model_1/conv3d_41/Relu:activations:0*model_1/concatenate_5/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
'model_1/conv3d_42/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_42_conv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
model_1/conv3d_42/Conv3DConv3D%model_1/concatenate_5/concat:output:0/model_1/conv3d_42/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
(model_1/conv3d_42/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv3d_42/BiasAddBiasAdd!model_1/conv3d_42/Conv3D:output:00model_1/conv3d_42/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_1/conv3d_42/ReluRelu"model_1/conv3d_42/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
'model_1/conv3d_43/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_43_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_1/conv3d_43/Conv3DConv3D$model_1/conv3d_42/Relu:activations:0/model_1/conv3d_43/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
(model_1/conv3d_43/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv3d_43/BiasAddBiasAdd!model_1/conv3d_43/Conv3D:output:00model_1/conv3d_43/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_1/conv3d_43/ReluRelu"model_1/conv3d_43/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
'model_1/conv3d_44/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_44_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_1/conv3d_44/Conv3DConv3D$model_1/conv3d_43/Relu:activations:0/model_1/conv3d_44/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
(model_1/conv3d_44/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv3d_44/BiasAddBiasAdd!model_1/conv3d_44/Conv3D:output:00model_1/conv3d_44/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_1/conv3d_44/ReluRelu"model_1/conv3d_44/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@t
 model_1/conv3d_transpose_6/ShapeShape$model_1/conv3d_44/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv3d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv3d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv3d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(model_1/conv3d_transpose_6/strided_sliceStridedSlice)model_1/conv3d_transpose_6/Shape:output:07model_1/conv3d_transpose_6/strided_slice/stack:output:09model_1/conv3d_transpose_6/strided_slice/stack_1:output:09model_1/conv3d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_6/strided_slice_1StridedSlice)model_1/conv3d_transpose_6/Shape:output:09model_1/conv3d_transpose_6/strided_slice_1/stack:output:0;model_1/conv3d_transpose_6/strided_slice_1/stack_1:output:0;model_1/conv3d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_6/strided_slice_2StridedSlice)model_1/conv3d_transpose_6/Shape:output:09model_1/conv3d_transpose_6/strided_slice_2/stack:output:0;model_1/conv3d_transpose_6/strided_slice_2/stack_1:output:0;model_1/conv3d_transpose_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_6/strided_slice_3StridedSlice)model_1/conv3d_transpose_6/Shape:output:09model_1/conv3d_transpose_6/strided_slice_3/stack:output:0;model_1/conv3d_transpose_6/strided_slice_3/stack_1:output:0;model_1/conv3d_transpose_6/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model_1/conv3d_transpose_6/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/conv3d_transpose_6/mulMul3model_1/conv3d_transpose_6/strided_slice_1:output:0)model_1/conv3d_transpose_6/mul/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_6/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_6/mul_1Mul3model_1/conv3d_transpose_6/strided_slice_2:output:0+model_1/conv3d_transpose_6/mul_1/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_6/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_6/mul_2Mul3model_1/conv3d_transpose_6/strided_slice_3:output:0+model_1/conv3d_transpose_6/mul_2/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_6/stack/4Const*
_output_shapes
: *
dtype0*
value	B : �
 model_1/conv3d_transpose_6/stackPack1model_1/conv3d_transpose_6/strided_slice:output:0"model_1/conv3d_transpose_6/mul:z:0$model_1/conv3d_transpose_6/mul_1:z:0$model_1/conv3d_transpose_6/mul_2:z:0+model_1/conv3d_transpose_6/stack/4:output:0*
N*
T0*
_output_shapes
:�
:model_1/conv3d_transpose_6/conv3d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv3d_transpose_6_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
+model_1/conv3d_transpose_6/conv3d_transposeConv3DBackpropInputV2)model_1/conv3d_transpose_6/stack:output:0Bmodel_1/conv3d_transpose_6/conv3d_transpose/ReadVariableOp:value:0$model_1/conv3d_44/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
1model_1/conv3d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv3d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
"model_1/conv3d_transpose_6/BiasAddBiasAdd4model_1/conv3d_transpose_6/conv3d_transpose:output:09model_1/conv3d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
'model_1/conv3d_45/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_45_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_1/conv3d_45/Conv3DConv3D+model_1/conv3d_transpose_6/BiasAdd:output:0/model_1/conv3d_45/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
(model_1/conv3d_45/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv3d_45/BiasAddBiasAdd!model_1/conv3d_45/Conv3D:output:00model_1/conv3d_45/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_1/conv3d_45/ReluRelu"model_1/conv3d_45/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ c
!model_1/concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatenate_6/concatConcatV2$model_1/conv3d_30/Relu:activations:0$model_1/conv3d_45/Relu:activations:0*model_1/concatenate_6/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@�
'model_1/conv3d_46/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_46_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
model_1/conv3d_46/Conv3DConv3D%model_1/concatenate_6/concat:output:0/model_1/conv3d_46/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
(model_1/conv3d_46/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv3d_46/BiasAddBiasAdd!model_1/conv3d_46/Conv3D:output:00model_1/conv3d_46/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_1/conv3d_46/ReluRelu"model_1/conv3d_46/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
'model_1/conv3d_47/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_47_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_1/conv3d_47/Conv3DConv3D$model_1/conv3d_46/Relu:activations:0/model_1/conv3d_47/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
(model_1/conv3d_47/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv3d_47/BiasAddBiasAdd!model_1/conv3d_47/Conv3D:output:00model_1/conv3d_47/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_1/conv3d_47/ReluRelu"model_1/conv3d_47/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
'model_1/conv3d_48/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_48_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_1/conv3d_48/Conv3DConv3D$model_1/conv3d_47/Relu:activations:0/model_1/conv3d_48/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
(model_1/conv3d_48/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_48_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv3d_48/BiasAddBiasAdd!model_1/conv3d_48/Conv3D:output:00model_1/conv3d_48/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_1/conv3d_48/ReluRelu"model_1/conv3d_48/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ t
 model_1/conv3d_transpose_7/ShapeShape$model_1/conv3d_48/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv3d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv3d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv3d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(model_1/conv3d_transpose_7/strided_sliceStridedSlice)model_1/conv3d_transpose_7/Shape:output:07model_1/conv3d_transpose_7/strided_slice/stack:output:09model_1/conv3d_transpose_7/strided_slice/stack_1:output:09model_1/conv3d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_7/strided_slice_1StridedSlice)model_1/conv3d_transpose_7/Shape:output:09model_1/conv3d_transpose_7/strided_slice_1/stack:output:0;model_1/conv3d_transpose_7/strided_slice_1/stack_1:output:0;model_1/conv3d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_7/strided_slice_2StridedSlice)model_1/conv3d_transpose_7/Shape:output:09model_1/conv3d_transpose_7/strided_slice_2/stack:output:0;model_1/conv3d_transpose_7/strided_slice_2/stack_1:output:0;model_1/conv3d_transpose_7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv3d_transpose_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv3d_transpose_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv3d_transpose_7/strided_slice_3StridedSlice)model_1/conv3d_transpose_7/Shape:output:09model_1/conv3d_transpose_7/strided_slice_3/stack:output:0;model_1/conv3d_transpose_7/strided_slice_3/stack_1:output:0;model_1/conv3d_transpose_7/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model_1/conv3d_transpose_7/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/conv3d_transpose_7/mulMul3model_1/conv3d_transpose_7/strided_slice_1:output:0)model_1/conv3d_transpose_7/mul/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_7/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_7/mul_1Mul3model_1/conv3d_transpose_7/strided_slice_2:output:0+model_1/conv3d_transpose_7/mul_1/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_7/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_7/mul_2Mul3model_1/conv3d_transpose_7/strided_slice_3:output:0+model_1/conv3d_transpose_7/mul_2/y:output:0*
T0*
_output_shapes
: d
"model_1/conv3d_transpose_7/stack/4Const*
_output_shapes
: *
dtype0*
value	B :�
 model_1/conv3d_transpose_7/stackPack1model_1/conv3d_transpose_7/strided_slice:output:0"model_1/conv3d_transpose_7/mul:z:0$model_1/conv3d_transpose_7/mul_1:z:0$model_1/conv3d_transpose_7/mul_2:z:0+model_1/conv3d_transpose_7/stack/4:output:0*
N*
T0*
_output_shapes
:�
:model_1/conv3d_transpose_7/conv3d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv3d_transpose_7_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
+model_1/conv3d_transpose_7/conv3d_transposeConv3DBackpropInputV2)model_1/conv3d_transpose_7/stack:output:0Bmodel_1/conv3d_transpose_7/conv3d_transpose/ReadVariableOp:value:0$model_1/conv3d_48/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
1model_1/conv3d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv3d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"model_1/conv3d_transpose_7/BiasAddBiasAdd4model_1/conv3d_transpose_7/conv3d_transpose:output:09model_1/conv3d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
'model_1/conv3d_49/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_49_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_1/conv3d_49/Conv3DConv3D+model_1/conv3d_transpose_7/BiasAdd:output:0/model_1/conv3d_49/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_49/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv3d_49/BiasAddBiasAdd!model_1/conv3d_49/Conv3D:output:00model_1/conv3d_49/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_1/conv3d_49/ReluRelu"model_1/conv3d_49/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������c
!model_1/concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatenate_7/concatConcatV2$model_1/conv3d_28/Relu:activations:0$model_1/conv3d_49/Relu:activations:0*model_1/concatenate_7/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ �
'model_1/conv3d_50/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_50_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
model_1/conv3d_50/Conv3DConv3D%model_1/concatenate_7/concat:output:0/model_1/conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_50/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv3d_50/BiasAddBiasAdd!model_1/conv3d_50/Conv3D:output:00model_1/conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_1/conv3d_50/ReluRelu"model_1/conv3d_50/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
'model_1/conv3d_51/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_51_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_1/conv3d_51/Conv3DConv3D$model_1/conv3d_50/Relu:activations:0/model_1/conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_51/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv3d_51/BiasAddBiasAdd!model_1/conv3d_51/Conv3D:output:00model_1/conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_1/conv3d_51/ReluRelu"model_1/conv3d_51/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
'model_1/conv3d_52/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_1/conv3d_52/Conv3DConv3D$model_1/conv3d_51/Relu:activations:0/model_1/conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_52/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv3d_52/BiasAddBiasAdd!model_1/conv3d_52/Conv3D:output:00model_1/conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_1/conv3d_52/ReluRelu"model_1/conv3d_52/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
(model_1/cropping3d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 �
*model_1/cropping3d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    �
*model_1/cropping3d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               �
"model_1/cropping3d_1/strided_sliceStridedSlice$model_1/conv3d_52/Relu:activations:01model_1/cropping3d_1/strided_slice/stack:output:03model_1/cropping3d_1/strided_slice/stack_1:output:03model_1/cropping3d_1/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8������������������������������������*

begin_mask*
end_mask�
'model_1/conv3d_53/Conv3D/ReadVariableOpReadVariableOp0model_1_conv3d_53_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_1/conv3d_53/Conv3DConv3D+model_1/cropping3d_1/strided_slice:output:0/model_1/conv3d_53/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
(model_1/conv3d_53/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv3d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv3d_53/BiasAddBiasAdd!model_1/conv3d_53/Conv3D:output:00model_1/conv3d_53/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentity"model_1/conv3d_53/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp)^model_1/conv3d_27/BiasAdd/ReadVariableOp(^model_1/conv3d_27/Conv3D/ReadVariableOp)^model_1/conv3d_28/BiasAdd/ReadVariableOp(^model_1/conv3d_28/Conv3D/ReadVariableOp)^model_1/conv3d_29/BiasAdd/ReadVariableOp(^model_1/conv3d_29/Conv3D/ReadVariableOp)^model_1/conv3d_30/BiasAdd/ReadVariableOp(^model_1/conv3d_30/Conv3D/ReadVariableOp)^model_1/conv3d_31/BiasAdd/ReadVariableOp(^model_1/conv3d_31/Conv3D/ReadVariableOp)^model_1/conv3d_32/BiasAdd/ReadVariableOp(^model_1/conv3d_32/Conv3D/ReadVariableOp)^model_1/conv3d_33/BiasAdd/ReadVariableOp(^model_1/conv3d_33/Conv3D/ReadVariableOp)^model_1/conv3d_34/BiasAdd/ReadVariableOp(^model_1/conv3d_34/Conv3D/ReadVariableOp)^model_1/conv3d_35/BiasAdd/ReadVariableOp(^model_1/conv3d_35/Conv3D/ReadVariableOp)^model_1/conv3d_36/BiasAdd/ReadVariableOp(^model_1/conv3d_36/Conv3D/ReadVariableOp)^model_1/conv3d_37/BiasAdd/ReadVariableOp(^model_1/conv3d_37/Conv3D/ReadVariableOp)^model_1/conv3d_38/BiasAdd/ReadVariableOp(^model_1/conv3d_38/Conv3D/ReadVariableOp)^model_1/conv3d_39/BiasAdd/ReadVariableOp(^model_1/conv3d_39/Conv3D/ReadVariableOp)^model_1/conv3d_40/BiasAdd/ReadVariableOp(^model_1/conv3d_40/Conv3D/ReadVariableOp)^model_1/conv3d_41/BiasAdd/ReadVariableOp(^model_1/conv3d_41/Conv3D/ReadVariableOp)^model_1/conv3d_42/BiasAdd/ReadVariableOp(^model_1/conv3d_42/Conv3D/ReadVariableOp)^model_1/conv3d_43/BiasAdd/ReadVariableOp(^model_1/conv3d_43/Conv3D/ReadVariableOp)^model_1/conv3d_44/BiasAdd/ReadVariableOp(^model_1/conv3d_44/Conv3D/ReadVariableOp)^model_1/conv3d_45/BiasAdd/ReadVariableOp(^model_1/conv3d_45/Conv3D/ReadVariableOp)^model_1/conv3d_46/BiasAdd/ReadVariableOp(^model_1/conv3d_46/Conv3D/ReadVariableOp)^model_1/conv3d_47/BiasAdd/ReadVariableOp(^model_1/conv3d_47/Conv3D/ReadVariableOp)^model_1/conv3d_48/BiasAdd/ReadVariableOp(^model_1/conv3d_48/Conv3D/ReadVariableOp)^model_1/conv3d_49/BiasAdd/ReadVariableOp(^model_1/conv3d_49/Conv3D/ReadVariableOp)^model_1/conv3d_50/BiasAdd/ReadVariableOp(^model_1/conv3d_50/Conv3D/ReadVariableOp)^model_1/conv3d_51/BiasAdd/ReadVariableOp(^model_1/conv3d_51/Conv3D/ReadVariableOp)^model_1/conv3d_52/BiasAdd/ReadVariableOp(^model_1/conv3d_52/Conv3D/ReadVariableOp)^model_1/conv3d_53/BiasAdd/ReadVariableOp(^model_1/conv3d_53/Conv3D/ReadVariableOp2^model_1/conv3d_transpose_4/BiasAdd/ReadVariableOp;^model_1/conv3d_transpose_4/conv3d_transpose/ReadVariableOp2^model_1/conv3d_transpose_5/BiasAdd/ReadVariableOp;^model_1/conv3d_transpose_5/conv3d_transpose/ReadVariableOp2^model_1/conv3d_transpose_6/BiasAdd/ReadVariableOp;^model_1/conv3d_transpose_6/conv3d_transpose/ReadVariableOp2^model_1/conv3d_transpose_7/BiasAdd/ReadVariableOp;^model_1/conv3d_transpose_7/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(model_1/conv3d_27/BiasAdd/ReadVariableOp(model_1/conv3d_27/BiasAdd/ReadVariableOp2R
'model_1/conv3d_27/Conv3D/ReadVariableOp'model_1/conv3d_27/Conv3D/ReadVariableOp2T
(model_1/conv3d_28/BiasAdd/ReadVariableOp(model_1/conv3d_28/BiasAdd/ReadVariableOp2R
'model_1/conv3d_28/Conv3D/ReadVariableOp'model_1/conv3d_28/Conv3D/ReadVariableOp2T
(model_1/conv3d_29/BiasAdd/ReadVariableOp(model_1/conv3d_29/BiasAdd/ReadVariableOp2R
'model_1/conv3d_29/Conv3D/ReadVariableOp'model_1/conv3d_29/Conv3D/ReadVariableOp2T
(model_1/conv3d_30/BiasAdd/ReadVariableOp(model_1/conv3d_30/BiasAdd/ReadVariableOp2R
'model_1/conv3d_30/Conv3D/ReadVariableOp'model_1/conv3d_30/Conv3D/ReadVariableOp2T
(model_1/conv3d_31/BiasAdd/ReadVariableOp(model_1/conv3d_31/BiasAdd/ReadVariableOp2R
'model_1/conv3d_31/Conv3D/ReadVariableOp'model_1/conv3d_31/Conv3D/ReadVariableOp2T
(model_1/conv3d_32/BiasAdd/ReadVariableOp(model_1/conv3d_32/BiasAdd/ReadVariableOp2R
'model_1/conv3d_32/Conv3D/ReadVariableOp'model_1/conv3d_32/Conv3D/ReadVariableOp2T
(model_1/conv3d_33/BiasAdd/ReadVariableOp(model_1/conv3d_33/BiasAdd/ReadVariableOp2R
'model_1/conv3d_33/Conv3D/ReadVariableOp'model_1/conv3d_33/Conv3D/ReadVariableOp2T
(model_1/conv3d_34/BiasAdd/ReadVariableOp(model_1/conv3d_34/BiasAdd/ReadVariableOp2R
'model_1/conv3d_34/Conv3D/ReadVariableOp'model_1/conv3d_34/Conv3D/ReadVariableOp2T
(model_1/conv3d_35/BiasAdd/ReadVariableOp(model_1/conv3d_35/BiasAdd/ReadVariableOp2R
'model_1/conv3d_35/Conv3D/ReadVariableOp'model_1/conv3d_35/Conv3D/ReadVariableOp2T
(model_1/conv3d_36/BiasAdd/ReadVariableOp(model_1/conv3d_36/BiasAdd/ReadVariableOp2R
'model_1/conv3d_36/Conv3D/ReadVariableOp'model_1/conv3d_36/Conv3D/ReadVariableOp2T
(model_1/conv3d_37/BiasAdd/ReadVariableOp(model_1/conv3d_37/BiasAdd/ReadVariableOp2R
'model_1/conv3d_37/Conv3D/ReadVariableOp'model_1/conv3d_37/Conv3D/ReadVariableOp2T
(model_1/conv3d_38/BiasAdd/ReadVariableOp(model_1/conv3d_38/BiasAdd/ReadVariableOp2R
'model_1/conv3d_38/Conv3D/ReadVariableOp'model_1/conv3d_38/Conv3D/ReadVariableOp2T
(model_1/conv3d_39/BiasAdd/ReadVariableOp(model_1/conv3d_39/BiasAdd/ReadVariableOp2R
'model_1/conv3d_39/Conv3D/ReadVariableOp'model_1/conv3d_39/Conv3D/ReadVariableOp2T
(model_1/conv3d_40/BiasAdd/ReadVariableOp(model_1/conv3d_40/BiasAdd/ReadVariableOp2R
'model_1/conv3d_40/Conv3D/ReadVariableOp'model_1/conv3d_40/Conv3D/ReadVariableOp2T
(model_1/conv3d_41/BiasAdd/ReadVariableOp(model_1/conv3d_41/BiasAdd/ReadVariableOp2R
'model_1/conv3d_41/Conv3D/ReadVariableOp'model_1/conv3d_41/Conv3D/ReadVariableOp2T
(model_1/conv3d_42/BiasAdd/ReadVariableOp(model_1/conv3d_42/BiasAdd/ReadVariableOp2R
'model_1/conv3d_42/Conv3D/ReadVariableOp'model_1/conv3d_42/Conv3D/ReadVariableOp2T
(model_1/conv3d_43/BiasAdd/ReadVariableOp(model_1/conv3d_43/BiasAdd/ReadVariableOp2R
'model_1/conv3d_43/Conv3D/ReadVariableOp'model_1/conv3d_43/Conv3D/ReadVariableOp2T
(model_1/conv3d_44/BiasAdd/ReadVariableOp(model_1/conv3d_44/BiasAdd/ReadVariableOp2R
'model_1/conv3d_44/Conv3D/ReadVariableOp'model_1/conv3d_44/Conv3D/ReadVariableOp2T
(model_1/conv3d_45/BiasAdd/ReadVariableOp(model_1/conv3d_45/BiasAdd/ReadVariableOp2R
'model_1/conv3d_45/Conv3D/ReadVariableOp'model_1/conv3d_45/Conv3D/ReadVariableOp2T
(model_1/conv3d_46/BiasAdd/ReadVariableOp(model_1/conv3d_46/BiasAdd/ReadVariableOp2R
'model_1/conv3d_46/Conv3D/ReadVariableOp'model_1/conv3d_46/Conv3D/ReadVariableOp2T
(model_1/conv3d_47/BiasAdd/ReadVariableOp(model_1/conv3d_47/BiasAdd/ReadVariableOp2R
'model_1/conv3d_47/Conv3D/ReadVariableOp'model_1/conv3d_47/Conv3D/ReadVariableOp2T
(model_1/conv3d_48/BiasAdd/ReadVariableOp(model_1/conv3d_48/BiasAdd/ReadVariableOp2R
'model_1/conv3d_48/Conv3D/ReadVariableOp'model_1/conv3d_48/Conv3D/ReadVariableOp2T
(model_1/conv3d_49/BiasAdd/ReadVariableOp(model_1/conv3d_49/BiasAdd/ReadVariableOp2R
'model_1/conv3d_49/Conv3D/ReadVariableOp'model_1/conv3d_49/Conv3D/ReadVariableOp2T
(model_1/conv3d_50/BiasAdd/ReadVariableOp(model_1/conv3d_50/BiasAdd/ReadVariableOp2R
'model_1/conv3d_50/Conv3D/ReadVariableOp'model_1/conv3d_50/Conv3D/ReadVariableOp2T
(model_1/conv3d_51/BiasAdd/ReadVariableOp(model_1/conv3d_51/BiasAdd/ReadVariableOp2R
'model_1/conv3d_51/Conv3D/ReadVariableOp'model_1/conv3d_51/Conv3D/ReadVariableOp2T
(model_1/conv3d_52/BiasAdd/ReadVariableOp(model_1/conv3d_52/BiasAdd/ReadVariableOp2R
'model_1/conv3d_52/Conv3D/ReadVariableOp'model_1/conv3d_52/Conv3D/ReadVariableOp2T
(model_1/conv3d_53/BiasAdd/ReadVariableOp(model_1/conv3d_53/BiasAdd/ReadVariableOp2R
'model_1/conv3d_53/Conv3D/ReadVariableOp'model_1/conv3d_53/Conv3D/ReadVariableOp2f
1model_1/conv3d_transpose_4/BiasAdd/ReadVariableOp1model_1/conv3d_transpose_4/BiasAdd/ReadVariableOp2x
:model_1/conv3d_transpose_4/conv3d_transpose/ReadVariableOp:model_1/conv3d_transpose_4/conv3d_transpose/ReadVariableOp2f
1model_1/conv3d_transpose_5/BiasAdd/ReadVariableOp1model_1/conv3d_transpose_5/BiasAdd/ReadVariableOp2x
:model_1/conv3d_transpose_5/conv3d_transpose/ReadVariableOp:model_1/conv3d_transpose_5/conv3d_transpose/ReadVariableOp2f
1model_1/conv3d_transpose_6/BiasAdd/ReadVariableOp1model_1/conv3d_transpose_6/BiasAdd/ReadVariableOp2x
:model_1/conv3d_transpose_6/conv3d_transpose/ReadVariableOp:model_1/conv3d_transpose_6/conv3d_transpose/ReadVariableOp2f
1model_1/conv3d_transpose_7/BiasAdd/ReadVariableOp1model_1/conv3d_transpose_7/BiasAdd/ReadVariableOp2x
:model_1/conv3d_transpose_7/conv3d_transpose/ReadVariableOp:model_1/conv3d_transpose_7/conv3d_transpose/ReadVariableOp:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_2
�
f
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_58267

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_36_layer_call_and_return_conditional_losses_58407

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
t
H__inference_concatenate_6_layer_call_and_return_conditional_losses_58764
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8������������������������������������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������ :8������������������������������������ :x t
N
_output_shapes<
::8������������������������������������ 
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8������������������������������������ 
"
_user_specified_name
inputs/1
�
K
/__inference_max_pooling3d_7_layer_call_fn_58362

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_55026�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_33_layer_call_fn_58326

inputs&
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_33_layer_call_and_return_conditional_losses_55358�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_55002

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�	
c
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_55231

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
value B"               �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:A���������������������������������������������*

begin_mask*
end_mask�
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_40_layer_call_and_return_conditional_losses_58550

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_41_layer_call_and_return_conditional_losses_58614

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_33_layer_call_and_return_conditional_losses_58337

inputs=
conv3d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
)__inference_conv3d_46_layer_call_fn_58773

inputs%
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_46_layer_call_and_return_conditional_losses_55622�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_36_layer_call_and_return_conditional_losses_55410

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_40_layer_call_fn_58539

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_40_layer_call_and_return_conditional_losses_55492�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_48_layer_call_fn_58813

inputs%
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_48_layer_call_and_return_conditional_losses_55656�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
D__inference_conv3d_51_layer_call_and_return_conditional_losses_55721

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_49_layer_call_fn_58877

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_49_layer_call_and_return_conditional_losses_55678�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�	
c
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_58974

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
value B"               �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:A���������������������������������������������*

begin_mask*
end_mask�
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_34_layer_call_fn_58346

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_34_layer_call_and_return_conditional_losses_55375�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_27_layer_call_and_return_conditional_losses_58187

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_55014

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_52_layer_call_and_return_conditional_losses_58961

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�"
�
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_58731

inputsF
(conv3d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B : �
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_43_layer_call_and_return_conditional_losses_58667

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_58317

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�	
�
2__inference_conv3d_transpose_4_layer_call_fn_58416

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_55074�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_58367

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_29_layer_call_and_return_conditional_losses_55288

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_44_layer_call_and_return_conditional_losses_55574

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
r
H__inference_concatenate_4_layer_call_and_return_conditional_losses_55445

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9�������������������������������������
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9�������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:9�������������������������������������:9�������������������������������������:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs:ws
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�"
�
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_55120

inputsG
(conv3d_transpose_readvariableop_resource:@�-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :@�
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_38_layer_call_fn_58499

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_38_layer_call_and_return_conditional_losses_55458�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_29_layer_call_fn_58226

inputs%
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_29_layer_call_and_return_conditional_losses_55288�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_30_layer_call_and_return_conditional_losses_55305

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
D__inference_conv3d_33_layer_call_and_return_conditional_losses_55358

inputs=
conv3d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_30_layer_call_and_return_conditional_losses_58257

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
D__inference_conv3d_35_layer_call_and_return_conditional_losses_55393

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_41_layer_call_fn_58603

inputs%
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_41_layer_call_and_return_conditional_losses_55514�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_44_layer_call_and_return_conditional_losses_58687

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
)__inference_conv3d_43_layer_call_fn_58656

inputs%
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_43_layer_call_and_return_conditional_losses_55557�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_32_layer_call_and_return_conditional_losses_55340

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
t
H__inference_concatenate_7_layer_call_and_return_conditional_losses_58901
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ ~
IdentityIdentityconcat:output:0*
T0*N
_output_shapes<
::8������������������������������������ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������:8������������������������������������:x t
N
_output_shapes<
::8������������������������������������
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8������������������������������������
"
_user_specified_name
inputs/1
�
�
D__inference_conv3d_28_layer_call_and_return_conditional_losses_58207

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling3d_4_layer_call_fn_58212

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_54990�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
Y
-__inference_concatenate_4_layer_call_fn_58483
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_55445�
IdentityIdentityPartitionedCall:output:0*
T0*O
_output_shapes=
;:9�������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:9�������������������������������������:9�������������������������������������:y u
O
_output_shapes=
;:9�������������������������������������
"
_user_specified_name
inputs/0:yu
O
_output_shapes=
;:9�������������������������������������
"
_user_specified_name
inputs/1
�
g
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_54978

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:A����������������������������������������������
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�	
�
2__inference_conv3d_transpose_6_layer_call_fn_58696

inputs%
unknown: @
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_55166�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
� 
�
#__inference_signature_wrapper_58156
input_2%
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

unknown_11:@�

unknown_12:	�*

unknown_13:��

unknown_14:	�*

unknown_15:��

unknown_16:	�*

unknown_17:��

unknown_18:	�*

unknown_19:��

unknown_20:	�*

unknown_21:��

unknown_22:	�*

unknown_23:��

unknown_24:	�*

unknown_25:��

unknown_26:	�*

unknown_27:��

unknown_28:	�)

unknown_29:@�

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:�@

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
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
::8������������������������������������*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_54968�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_2
�&
�
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_58457

inputsH
(conv3d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
B :��
stackPackstrided_slice:output:0add:z:0	add_1:z:0	add_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityBiasAdd:output:0^NoOp*
T0*O
_output_shapes=
;:9��������������������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_38_layer_call_and_return_conditional_losses_55458

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_52_layer_call_and_return_conditional_losses_55738

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_32_layer_call_fn_58296

inputs%
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_32_layer_call_and_return_conditional_losses_55340�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
��
��
!__inference__traced_restore_60196
file_prefix?
!assignvariableop_conv3d_27_kernel:/
!assignvariableop_1_conv3d_27_bias:A
#assignvariableop_2_conv3d_28_kernel:/
!assignvariableop_3_conv3d_28_bias:A
#assignvariableop_4_conv3d_29_kernel: /
!assignvariableop_5_conv3d_29_bias: A
#assignvariableop_6_conv3d_30_kernel:  /
!assignvariableop_7_conv3d_30_bias: A
#assignvariableop_8_conv3d_31_kernel: @/
!assignvariableop_9_conv3d_31_bias:@B
$assignvariableop_10_conv3d_32_kernel:@@0
"assignvariableop_11_conv3d_32_bias:@C
$assignvariableop_12_conv3d_33_kernel:@�1
"assignvariableop_13_conv3d_33_bias:	�D
$assignvariableop_14_conv3d_34_kernel:��1
"assignvariableop_15_conv3d_34_bias:	�D
$assignvariableop_16_conv3d_35_kernel:��1
"assignvariableop_17_conv3d_35_bias:	�D
$assignvariableop_18_conv3d_36_kernel:��1
"assignvariableop_19_conv3d_36_bias:	�M
-assignvariableop_20_conv3d_transpose_4_kernel:��:
+assignvariableop_21_conv3d_transpose_4_bias:	�D
$assignvariableop_22_conv3d_37_kernel:��1
"assignvariableop_23_conv3d_37_bias:	�D
$assignvariableop_24_conv3d_38_kernel:��1
"assignvariableop_25_conv3d_38_bias:	�D
$assignvariableop_26_conv3d_39_kernel:��1
"assignvariableop_27_conv3d_39_bias:	�D
$assignvariableop_28_conv3d_40_kernel:��1
"assignvariableop_29_conv3d_40_bias:	�L
-assignvariableop_30_conv3d_transpose_5_kernel:@�9
+assignvariableop_31_conv3d_transpose_5_bias:@B
$assignvariableop_32_conv3d_41_kernel:@@0
"assignvariableop_33_conv3d_41_bias:@C
$assignvariableop_34_conv3d_42_kernel:�@0
"assignvariableop_35_conv3d_42_bias:@B
$assignvariableop_36_conv3d_43_kernel:@@0
"assignvariableop_37_conv3d_43_bias:@B
$assignvariableop_38_conv3d_44_kernel:@@0
"assignvariableop_39_conv3d_44_bias:@K
-assignvariableop_40_conv3d_transpose_6_kernel: @9
+assignvariableop_41_conv3d_transpose_6_bias: B
$assignvariableop_42_conv3d_45_kernel:  0
"assignvariableop_43_conv3d_45_bias: B
$assignvariableop_44_conv3d_46_kernel:@ 0
"assignvariableop_45_conv3d_46_bias: B
$assignvariableop_46_conv3d_47_kernel:  0
"assignvariableop_47_conv3d_47_bias: B
$assignvariableop_48_conv3d_48_kernel:  0
"assignvariableop_49_conv3d_48_bias: K
-assignvariableop_50_conv3d_transpose_7_kernel: 9
+assignvariableop_51_conv3d_transpose_7_bias:B
$assignvariableop_52_conv3d_49_kernel:0
"assignvariableop_53_conv3d_49_bias:B
$assignvariableop_54_conv3d_50_kernel: 0
"assignvariableop_55_conv3d_50_bias:B
$assignvariableop_56_conv3d_51_kernel:0
"assignvariableop_57_conv3d_51_bias:B
$assignvariableop_58_conv3d_52_kernel:0
"assignvariableop_59_conv3d_52_bias:B
$assignvariableop_60_conv3d_53_kernel:0
"assignvariableop_61_conv3d_53_bias:'
assignvariableop_62_adam_iter:	 )
assignvariableop_63_adam_beta_1: )
assignvariableop_64_adam_beta_2: (
assignvariableop_65_adam_decay: 0
&assignvariableop_66_adam_learning_rate: #
assignvariableop_67_total: #
assignvariableop_68_count: %
assignvariableop_69_total_1: %
assignvariableop_70_count_1: I
+assignvariableop_71_adam_conv3d_27_kernel_m:7
)assignvariableop_72_adam_conv3d_27_bias_m:I
+assignvariableop_73_adam_conv3d_28_kernel_m:7
)assignvariableop_74_adam_conv3d_28_bias_m:I
+assignvariableop_75_adam_conv3d_29_kernel_m: 7
)assignvariableop_76_adam_conv3d_29_bias_m: I
+assignvariableop_77_adam_conv3d_30_kernel_m:  7
)assignvariableop_78_adam_conv3d_30_bias_m: I
+assignvariableop_79_adam_conv3d_31_kernel_m: @7
)assignvariableop_80_adam_conv3d_31_bias_m:@I
+assignvariableop_81_adam_conv3d_32_kernel_m:@@7
)assignvariableop_82_adam_conv3d_32_bias_m:@J
+assignvariableop_83_adam_conv3d_33_kernel_m:@�8
)assignvariableop_84_adam_conv3d_33_bias_m:	�K
+assignvariableop_85_adam_conv3d_34_kernel_m:��8
)assignvariableop_86_adam_conv3d_34_bias_m:	�K
+assignvariableop_87_adam_conv3d_35_kernel_m:��8
)assignvariableop_88_adam_conv3d_35_bias_m:	�K
+assignvariableop_89_adam_conv3d_36_kernel_m:��8
)assignvariableop_90_adam_conv3d_36_bias_m:	�T
4assignvariableop_91_adam_conv3d_transpose_4_kernel_m:��A
2assignvariableop_92_adam_conv3d_transpose_4_bias_m:	�K
+assignvariableop_93_adam_conv3d_37_kernel_m:��8
)assignvariableop_94_adam_conv3d_37_bias_m:	�K
+assignvariableop_95_adam_conv3d_38_kernel_m:��8
)assignvariableop_96_adam_conv3d_38_bias_m:	�K
+assignvariableop_97_adam_conv3d_39_kernel_m:��8
)assignvariableop_98_adam_conv3d_39_bias_m:	�K
+assignvariableop_99_adam_conv3d_40_kernel_m:��9
*assignvariableop_100_adam_conv3d_40_bias_m:	�T
5assignvariableop_101_adam_conv3d_transpose_5_kernel_m:@�A
3assignvariableop_102_adam_conv3d_transpose_5_bias_m:@J
,assignvariableop_103_adam_conv3d_41_kernel_m:@@8
*assignvariableop_104_adam_conv3d_41_bias_m:@K
,assignvariableop_105_adam_conv3d_42_kernel_m:�@8
*assignvariableop_106_adam_conv3d_42_bias_m:@J
,assignvariableop_107_adam_conv3d_43_kernel_m:@@8
*assignvariableop_108_adam_conv3d_43_bias_m:@J
,assignvariableop_109_adam_conv3d_44_kernel_m:@@8
*assignvariableop_110_adam_conv3d_44_bias_m:@S
5assignvariableop_111_adam_conv3d_transpose_6_kernel_m: @A
3assignvariableop_112_adam_conv3d_transpose_6_bias_m: J
,assignvariableop_113_adam_conv3d_45_kernel_m:  8
*assignvariableop_114_adam_conv3d_45_bias_m: J
,assignvariableop_115_adam_conv3d_46_kernel_m:@ 8
*assignvariableop_116_adam_conv3d_46_bias_m: J
,assignvariableop_117_adam_conv3d_47_kernel_m:  8
*assignvariableop_118_adam_conv3d_47_bias_m: J
,assignvariableop_119_adam_conv3d_48_kernel_m:  8
*assignvariableop_120_adam_conv3d_48_bias_m: S
5assignvariableop_121_adam_conv3d_transpose_7_kernel_m: A
3assignvariableop_122_adam_conv3d_transpose_7_bias_m:J
,assignvariableop_123_adam_conv3d_49_kernel_m:8
*assignvariableop_124_adam_conv3d_49_bias_m:J
,assignvariableop_125_adam_conv3d_50_kernel_m: 8
*assignvariableop_126_adam_conv3d_50_bias_m:J
,assignvariableop_127_adam_conv3d_51_kernel_m:8
*assignvariableop_128_adam_conv3d_51_bias_m:J
,assignvariableop_129_adam_conv3d_52_kernel_m:8
*assignvariableop_130_adam_conv3d_52_bias_m:J
,assignvariableop_131_adam_conv3d_53_kernel_m:8
*assignvariableop_132_adam_conv3d_53_bias_m:J
,assignvariableop_133_adam_conv3d_27_kernel_v:8
*assignvariableop_134_adam_conv3d_27_bias_v:J
,assignvariableop_135_adam_conv3d_28_kernel_v:8
*assignvariableop_136_adam_conv3d_28_bias_v:J
,assignvariableop_137_adam_conv3d_29_kernel_v: 8
*assignvariableop_138_adam_conv3d_29_bias_v: J
,assignvariableop_139_adam_conv3d_30_kernel_v:  8
*assignvariableop_140_adam_conv3d_30_bias_v: J
,assignvariableop_141_adam_conv3d_31_kernel_v: @8
*assignvariableop_142_adam_conv3d_31_bias_v:@J
,assignvariableop_143_adam_conv3d_32_kernel_v:@@8
*assignvariableop_144_adam_conv3d_32_bias_v:@K
,assignvariableop_145_adam_conv3d_33_kernel_v:@�9
*assignvariableop_146_adam_conv3d_33_bias_v:	�L
,assignvariableop_147_adam_conv3d_34_kernel_v:��9
*assignvariableop_148_adam_conv3d_34_bias_v:	�L
,assignvariableop_149_adam_conv3d_35_kernel_v:��9
*assignvariableop_150_adam_conv3d_35_bias_v:	�L
,assignvariableop_151_adam_conv3d_36_kernel_v:��9
*assignvariableop_152_adam_conv3d_36_bias_v:	�U
5assignvariableop_153_adam_conv3d_transpose_4_kernel_v:��B
3assignvariableop_154_adam_conv3d_transpose_4_bias_v:	�L
,assignvariableop_155_adam_conv3d_37_kernel_v:��9
*assignvariableop_156_adam_conv3d_37_bias_v:	�L
,assignvariableop_157_adam_conv3d_38_kernel_v:��9
*assignvariableop_158_adam_conv3d_38_bias_v:	�L
,assignvariableop_159_adam_conv3d_39_kernel_v:��9
*assignvariableop_160_adam_conv3d_39_bias_v:	�L
,assignvariableop_161_adam_conv3d_40_kernel_v:��9
*assignvariableop_162_adam_conv3d_40_bias_v:	�T
5assignvariableop_163_adam_conv3d_transpose_5_kernel_v:@�A
3assignvariableop_164_adam_conv3d_transpose_5_bias_v:@J
,assignvariableop_165_adam_conv3d_41_kernel_v:@@8
*assignvariableop_166_adam_conv3d_41_bias_v:@K
,assignvariableop_167_adam_conv3d_42_kernel_v:�@8
*assignvariableop_168_adam_conv3d_42_bias_v:@J
,assignvariableop_169_adam_conv3d_43_kernel_v:@@8
*assignvariableop_170_adam_conv3d_43_bias_v:@J
,assignvariableop_171_adam_conv3d_44_kernel_v:@@8
*assignvariableop_172_adam_conv3d_44_bias_v:@S
5assignvariableop_173_adam_conv3d_transpose_6_kernel_v: @A
3assignvariableop_174_adam_conv3d_transpose_6_bias_v: J
,assignvariableop_175_adam_conv3d_45_kernel_v:  8
*assignvariableop_176_adam_conv3d_45_bias_v: J
,assignvariableop_177_adam_conv3d_46_kernel_v:@ 8
*assignvariableop_178_adam_conv3d_46_bias_v: J
,assignvariableop_179_adam_conv3d_47_kernel_v:  8
*assignvariableop_180_adam_conv3d_47_bias_v: J
,assignvariableop_181_adam_conv3d_48_kernel_v:  8
*assignvariableop_182_adam_conv3d_48_bias_v: S
5assignvariableop_183_adam_conv3d_transpose_7_kernel_v: A
3assignvariableop_184_adam_conv3d_transpose_7_bias_v:J
,assignvariableop_185_adam_conv3d_49_kernel_v:8
*assignvariableop_186_adam_conv3d_49_bias_v:J
,assignvariableop_187_adam_conv3d_50_kernel_v: 8
*assignvariableop_188_adam_conv3d_50_bias_v:J
,assignvariableop_189_adam_conv3d_51_kernel_v:8
*assignvariableop_190_adam_conv3d_51_bias_v:J
,assignvariableop_191_adam_conv3d_52_kernel_v:8
*assignvariableop_192_adam_conv3d_52_bias_v:J
,assignvariableop_193_adam_conv3d_53_kernel_v:8
*assignvariableop_194_adam_conv3d_53_bias_v:
identity_196��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_116�AssignVariableOp_117�AssignVariableOp_118�AssignVariableOp_119�AssignVariableOp_12�AssignVariableOp_120�AssignVariableOp_121�AssignVariableOp_122�AssignVariableOp_123�AssignVariableOp_124�AssignVariableOp_125�AssignVariableOp_126�AssignVariableOp_127�AssignVariableOp_128�AssignVariableOp_129�AssignVariableOp_13�AssignVariableOp_130�AssignVariableOp_131�AssignVariableOp_132�AssignVariableOp_133�AssignVariableOp_134�AssignVariableOp_135�AssignVariableOp_136�AssignVariableOp_137�AssignVariableOp_138�AssignVariableOp_139�AssignVariableOp_14�AssignVariableOp_140�AssignVariableOp_141�AssignVariableOp_142�AssignVariableOp_143�AssignVariableOp_144�AssignVariableOp_145�AssignVariableOp_146�AssignVariableOp_147�AssignVariableOp_148�AssignVariableOp_149�AssignVariableOp_15�AssignVariableOp_150�AssignVariableOp_151�AssignVariableOp_152�AssignVariableOp_153�AssignVariableOp_154�AssignVariableOp_155�AssignVariableOp_156�AssignVariableOp_157�AssignVariableOp_158�AssignVariableOp_159�AssignVariableOp_16�AssignVariableOp_160�AssignVariableOp_161�AssignVariableOp_162�AssignVariableOp_163�AssignVariableOp_164�AssignVariableOp_165�AssignVariableOp_166�AssignVariableOp_167�AssignVariableOp_168�AssignVariableOp_169�AssignVariableOp_17�AssignVariableOp_170�AssignVariableOp_171�AssignVariableOp_172�AssignVariableOp_173�AssignVariableOp_174�AssignVariableOp_175�AssignVariableOp_176�AssignVariableOp_177�AssignVariableOp_178�AssignVariableOp_179�AssignVariableOp_18�AssignVariableOp_180�AssignVariableOp_181�AssignVariableOp_182�AssignVariableOp_183�AssignVariableOp_184�AssignVariableOp_185�AssignVariableOp_186�AssignVariableOp_187�AssignVariableOp_188�AssignVariableOp_189�AssignVariableOp_19�AssignVariableOp_190�AssignVariableOp_191�AssignVariableOp_192�AssignVariableOp_193�AssignVariableOp_194�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�p
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�o
value�oB�o�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypes�
�2�	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_27_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_27_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_28_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_28_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_29_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_29_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv3d_30_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv3d_30_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_31_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_31_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_32_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_32_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv3d_33_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv3d_33_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv3d_34_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv3d_34_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv3d_35_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv3d_35_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv3d_36_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv3d_36_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp-assignvariableop_20_conv3d_transpose_4_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp+assignvariableop_21_conv3d_transpose_4_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp$assignvariableop_22_conv3d_37_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp"assignvariableop_23_conv3d_37_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv3d_38_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv3d_38_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv3d_39_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp"assignvariableop_27_conv3d_39_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv3d_40_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv3d_40_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp-assignvariableop_30_conv3d_transpose_5_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_conv3d_transpose_5_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp$assignvariableop_32_conv3d_41_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp"assignvariableop_33_conv3d_41_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp$assignvariableop_34_conv3d_42_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp"assignvariableop_35_conv3d_42_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp$assignvariableop_36_conv3d_43_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp"assignvariableop_37_conv3d_43_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp$assignvariableop_38_conv3d_44_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp"assignvariableop_39_conv3d_44_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp-assignvariableop_40_conv3d_transpose_6_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp+assignvariableop_41_conv3d_transpose_6_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp$assignvariableop_42_conv3d_45_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp"assignvariableop_43_conv3d_45_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp$assignvariableop_44_conv3d_46_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp"assignvariableop_45_conv3d_46_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp$assignvariableop_46_conv3d_47_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp"assignvariableop_47_conv3d_47_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp$assignvariableop_48_conv3d_48_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp"assignvariableop_49_conv3d_48_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp-assignvariableop_50_conv3d_transpose_7_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp+assignvariableop_51_conv3d_transpose_7_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp$assignvariableop_52_conv3d_49_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp"assignvariableop_53_conv3d_49_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp$assignvariableop_54_conv3d_50_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp"assignvariableop_55_conv3d_50_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp$assignvariableop_56_conv3d_51_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp"assignvariableop_57_conv3d_51_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp$assignvariableop_58_conv3d_52_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp"assignvariableop_59_conv3d_52_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp$assignvariableop_60_conv3d_53_kernelIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp"assignvariableop_61_conv3d_53_biasIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpassignvariableop_62_adam_iterIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOpassignvariableop_63_adam_beta_1Identity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOpassignvariableop_64_adam_beta_2Identity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpassignvariableop_65_adam_decayIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp&assignvariableop_66_adam_learning_rateIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpassignvariableop_67_totalIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpassignvariableop_68_countIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpassignvariableop_69_total_1Identity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpassignvariableop_70_count_1Identity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv3d_27_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv3d_27_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv3d_28_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv3d_28_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv3d_29_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv3d_29_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv3d_30_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_conv3d_30_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv3d_31_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv3d_31_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_conv3d_32_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp)assignvariableop_82_adam_conv3d_32_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_conv3d_33_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_conv3d_33_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_conv3d_34_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp)assignvariableop_86_adam_conv3d_34_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_conv3d_35_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_conv3d_35_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp+assignvariableop_89_adam_conv3d_36_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp)assignvariableop_90_adam_conv3d_36_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp4assignvariableop_91_adam_conv3d_transpose_4_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp2assignvariableop_92_adam_conv3d_transpose_4_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv3d_37_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv3d_37_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_conv3d_38_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_conv3d_38_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp+assignvariableop_97_adam_conv3d_39_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_conv3d_39_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp+assignvariableop_99_adam_conv3d_40_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp*assignvariableop_100_adam_conv3d_40_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp5assignvariableop_101_adam_conv3d_transpose_5_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp3assignvariableop_102_adam_conv3d_transpose_5_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_conv3d_41_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_conv3d_41_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_conv3d_42_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_conv3d_42_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp,assignvariableop_107_adam_conv3d_43_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp*assignvariableop_108_adam_conv3d_43_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_conv3d_44_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp*assignvariableop_110_adam_conv3d_44_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp5assignvariableop_111_adam_conv3d_transpose_6_kernel_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp3assignvariableop_112_adam_conv3d_transpose_6_bias_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp,assignvariableop_113_adam_conv3d_45_kernel_mIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp*assignvariableop_114_adam_conv3d_45_bias_mIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_conv3d_46_kernel_mIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_conv3d_46_bias_mIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOp,assignvariableop_117_adam_conv3d_47_kernel_mIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOp*assignvariableop_118_adam_conv3d_47_bias_mIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOp,assignvariableop_119_adam_conv3d_48_kernel_mIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOp*assignvariableop_120_adam_conv3d_48_bias_mIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOp5assignvariableop_121_adam_conv3d_transpose_7_kernel_mIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOp3assignvariableop_122_adam_conv3d_transpose_7_bias_mIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOp,assignvariableop_123_adam_conv3d_49_kernel_mIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOp*assignvariableop_124_adam_conv3d_49_bias_mIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOp,assignvariableop_125_adam_conv3d_50_kernel_mIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOp*assignvariableop_126_adam_conv3d_50_bias_mIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_127AssignVariableOp,assignvariableop_127_adam_conv3d_51_kernel_mIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_128AssignVariableOp*assignvariableop_128_adam_conv3d_51_bias_mIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_129AssignVariableOp,assignvariableop_129_adam_conv3d_52_kernel_mIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_130AssignVariableOp*assignvariableop_130_adam_conv3d_52_bias_mIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_131AssignVariableOp,assignvariableop_131_adam_conv3d_53_kernel_mIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_132AssignVariableOp*assignvariableop_132_adam_conv3d_53_bias_mIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_133AssignVariableOp,assignvariableop_133_adam_conv3d_27_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_134AssignVariableOp*assignvariableop_134_adam_conv3d_27_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_135AssignVariableOp,assignvariableop_135_adam_conv3d_28_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_136AssignVariableOp*assignvariableop_136_adam_conv3d_28_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_137AssignVariableOp,assignvariableop_137_adam_conv3d_29_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_138AssignVariableOp*assignvariableop_138_adam_conv3d_29_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_139AssignVariableOp,assignvariableop_139_adam_conv3d_30_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_140AssignVariableOp*assignvariableop_140_adam_conv3d_30_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_141AssignVariableOp,assignvariableop_141_adam_conv3d_31_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_142AssignVariableOp*assignvariableop_142_adam_conv3d_31_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_143AssignVariableOp,assignvariableop_143_adam_conv3d_32_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_144AssignVariableOp*assignvariableop_144_adam_conv3d_32_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_145AssignVariableOp,assignvariableop_145_adam_conv3d_33_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_146AssignVariableOp*assignvariableop_146_adam_conv3d_33_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_147AssignVariableOp,assignvariableop_147_adam_conv3d_34_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_148AssignVariableOp*assignvariableop_148_adam_conv3d_34_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_149AssignVariableOp,assignvariableop_149_adam_conv3d_35_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_150AssignVariableOp*assignvariableop_150_adam_conv3d_35_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_151AssignVariableOp,assignvariableop_151_adam_conv3d_36_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_152AssignVariableOp*assignvariableop_152_adam_conv3d_36_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_153AssignVariableOp5assignvariableop_153_adam_conv3d_transpose_4_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_154AssignVariableOp3assignvariableop_154_adam_conv3d_transpose_4_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_155AssignVariableOp,assignvariableop_155_adam_conv3d_37_kernel_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_156AssignVariableOp*assignvariableop_156_adam_conv3d_37_bias_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_157AssignVariableOp,assignvariableop_157_adam_conv3d_38_kernel_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_158AssignVariableOp*assignvariableop_158_adam_conv3d_38_bias_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_159AssignVariableOp,assignvariableop_159_adam_conv3d_39_kernel_vIdentity_159:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_160AssignVariableOp*assignvariableop_160_adam_conv3d_39_bias_vIdentity_160:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_161AssignVariableOp,assignvariableop_161_adam_conv3d_40_kernel_vIdentity_161:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_162AssignVariableOp*assignvariableop_162_adam_conv3d_40_bias_vIdentity_162:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_163AssignVariableOp5assignvariableop_163_adam_conv3d_transpose_5_kernel_vIdentity_163:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_164AssignVariableOp3assignvariableop_164_adam_conv3d_transpose_5_bias_vIdentity_164:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_165AssignVariableOp,assignvariableop_165_adam_conv3d_41_kernel_vIdentity_165:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_166AssignVariableOp*assignvariableop_166_adam_conv3d_41_bias_vIdentity_166:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_167AssignVariableOp,assignvariableop_167_adam_conv3d_42_kernel_vIdentity_167:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_168AssignVariableOp*assignvariableop_168_adam_conv3d_42_bias_vIdentity_168:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_169AssignVariableOp,assignvariableop_169_adam_conv3d_43_kernel_vIdentity_169:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_170AssignVariableOp*assignvariableop_170_adam_conv3d_43_bias_vIdentity_170:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_171AssignVariableOp,assignvariableop_171_adam_conv3d_44_kernel_vIdentity_171:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_172AssignVariableOp*assignvariableop_172_adam_conv3d_44_bias_vIdentity_172:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_173AssignVariableOp5assignvariableop_173_adam_conv3d_transpose_6_kernel_vIdentity_173:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_174AssignVariableOp3assignvariableop_174_adam_conv3d_transpose_6_bias_vIdentity_174:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_175AssignVariableOp,assignvariableop_175_adam_conv3d_45_kernel_vIdentity_175:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_176AssignVariableOp*assignvariableop_176_adam_conv3d_45_bias_vIdentity_176:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_177AssignVariableOp,assignvariableop_177_adam_conv3d_46_kernel_vIdentity_177:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_178AssignVariableOp*assignvariableop_178_adam_conv3d_46_bias_vIdentity_178:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_179AssignVariableOp,assignvariableop_179_adam_conv3d_47_kernel_vIdentity_179:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_180AssignVariableOp*assignvariableop_180_adam_conv3d_47_bias_vIdentity_180:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_181AssignVariableOp,assignvariableop_181_adam_conv3d_48_kernel_vIdentity_181:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_182AssignVariableOp*assignvariableop_182_adam_conv3d_48_bias_vIdentity_182:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_183IdentityRestoreV2:tensors:183"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_183AssignVariableOp5assignvariableop_183_adam_conv3d_transpose_7_kernel_vIdentity_183:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_184IdentityRestoreV2:tensors:184"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_184AssignVariableOp3assignvariableop_184_adam_conv3d_transpose_7_bias_vIdentity_184:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_185IdentityRestoreV2:tensors:185"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_185AssignVariableOp,assignvariableop_185_adam_conv3d_49_kernel_vIdentity_185:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_186IdentityRestoreV2:tensors:186"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_186AssignVariableOp*assignvariableop_186_adam_conv3d_49_bias_vIdentity_186:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_187IdentityRestoreV2:tensors:187"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_187AssignVariableOp,assignvariableop_187_adam_conv3d_50_kernel_vIdentity_187:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_188IdentityRestoreV2:tensors:188"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_188AssignVariableOp*assignvariableop_188_adam_conv3d_50_bias_vIdentity_188:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_189IdentityRestoreV2:tensors:189"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_189AssignVariableOp,assignvariableop_189_adam_conv3d_51_kernel_vIdentity_189:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_190IdentityRestoreV2:tensors:190"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_190AssignVariableOp*assignvariableop_190_adam_conv3d_51_bias_vIdentity_190:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_191IdentityRestoreV2:tensors:191"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_191AssignVariableOp,assignvariableop_191_adam_conv3d_52_kernel_vIdentity_191:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_192IdentityRestoreV2:tensors:192"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_192AssignVariableOp*assignvariableop_192_adam_conv3d_52_bias_vIdentity_192:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_193IdentityRestoreV2:tensors:193"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_193AssignVariableOp,assignvariableop_193_adam_conv3d_53_kernel_vIdentity_193:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_194IdentityRestoreV2:tensors:194"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_194AssignVariableOp*assignvariableop_194_adam_conv3d_53_bias_vIdentity_194:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �"
Identity_195Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_193^AssignVariableOp_194^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_196IdentityIdentity_195:output:0^NoOp_1*
T0*
_output_shapes
: �"
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_193^AssignVariableOp_194^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_196Identity_196:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
�
Y
-__inference_concatenate_6_layer_call_fn_58757
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_55609�
IdentityIdentityPartitionedCall:output:0*
T0*N
_output_shapes<
::8������������������������������������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������ :8������������������������������������ :x t
N
_output_shapes<
::8������������������������������������ 
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8������������������������������������ 
"
_user_specified_name
inputs/1
�
�
)__inference_conv3d_37_layer_call_fn_58466

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_37_layer_call_and_return_conditional_losses_55432�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_35_layer_call_and_return_conditional_losses_58387

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_29_layer_call_and_return_conditional_losses_58237

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_44_layer_call_fn_58676

inputs%
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_44_layer_call_and_return_conditional_losses_55574�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
)__inference_conv3d_47_layer_call_fn_58793

inputs%
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_47_layer_call_and_return_conditional_losses_55639�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
Y
-__inference_concatenate_7_layer_call_fn_58894
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_55691�
IdentityIdentityPartitionedCall:output:0*
T0*N
_output_shapes<
::8������������������������������������ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������:8������������������������������������:x t
N
_output_shapes<
::8������������������������������������
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8������������������������������������
"
_user_specified_name
inputs/1
� 
�
'__inference_model_1_layer_call_fn_57216

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

unknown_11:@�

unknown_12:	�*

unknown_13:��

unknown_14:	�*

unknown_15:��

unknown_16:	�*

unknown_17:��

unknown_18:	�*

unknown_19:��

unknown_20:	�*

unknown_21:��

unknown_22:	�*

unknown_23:��

unknown_24:	�*

unknown_25:��

unknown_26:	�*

unknown_27:��

unknown_28:	�)

unknown_29:@�

unknown_30:@(

unknown_31:@@

unknown_32:@)

unknown_33:�@

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
identity��StatefulPartitionedCall�	
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
::8������������������������������������*`
_read_only_resource_inputsB
@>	
 !"#$%&'()*+,-./0123456789:;<=>*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_55762�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�"
�
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_58594

inputsG
(conv3d_transpose_readvariableop_resource:@�-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :@�
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_39_layer_call_and_return_conditional_losses_58530

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_47_layer_call_and_return_conditional_losses_55639

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
f
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_58217

inputs
identity�
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
�
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�	
�
2__inference_conv3d_transpose_5_layer_call_fn_58559

inputs&
unknown:@�
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_55120�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_31_layer_call_and_return_conditional_losses_58287

inputs<
conv3d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
L
0__inference_zero_padding3d_1_layer_call_fn_58161

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_54978�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_51_layer_call_and_return_conditional_losses_58941

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�&
�
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_55074

inputsH
(conv3d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
B :��
stackPackstrided_slice:output:0add:z:0	add_1:z:0	add_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityBiasAdd:output:0^NoOp*
T0*O
_output_shapes=
;:9��������������������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_37_layer_call_and_return_conditional_losses_58477

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�	
�
2__inference_conv3d_transpose_7_layer_call_fn_58833

inputs%
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_55212�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
D__inference_conv3d_38_layer_call_and_return_conditional_losses_58510

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_32_layer_call_and_return_conditional_losses_58307

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_31_layer_call_and_return_conditional_losses_55323

inputs<
conv3d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
Y
-__inference_concatenate_5_layer_call_fn_58620
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_55527�
IdentityIdentityPartitionedCall:output:0*
T0*O
_output_shapes=
;:9�������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������@:8������������������������������������@:x t
N
_output_shapes<
::8������������������������������������@
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8������������������������������������@
"
_user_specified_name
inputs/1
�
�
D__inference_conv3d_53_layer_call_and_return_conditional_losses_58993

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�"
�
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_55166

inputsF
(conv3d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv3d_transpose/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B : �
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0	mul_2:z:0stack/4:output:0*
N*
T0*
_output_shapes
:�
conv3d_transpose/ReadVariableOpReadVariableOp(conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
conv3d_transposeConv3DBackpropInputV2stack:output:0'conv3d_transpose/ReadVariableOp:value:0inputs*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv3d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv3d_transpose/ReadVariableOpconv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_56912
input_2-
conv3d_27_56747:
conv3d_27_56749:-
conv3d_28_56752:
conv3d_28_56754:-
conv3d_29_56758: 
conv3d_29_56760: -
conv3d_30_56763:  
conv3d_30_56765: -
conv3d_31_56769: @
conv3d_31_56771:@-
conv3d_32_56774:@@
conv3d_32_56776:@.
conv3d_33_56780:@�
conv3d_33_56782:	�/
conv3d_34_56785:��
conv3d_34_56787:	�/
conv3d_35_56791:��
conv3d_35_56793:	�/
conv3d_36_56796:��
conv3d_36_56798:	�8
conv3d_transpose_4_56801:��'
conv3d_transpose_4_56803:	�/
conv3d_37_56806:��
conv3d_37_56808:	�/
conv3d_38_56812:��
conv3d_38_56814:	�/
conv3d_39_56817:��
conv3d_39_56819:	�/
conv3d_40_56822:��
conv3d_40_56824:	�7
conv3d_transpose_5_56827:@�&
conv3d_transpose_5_56829:@-
conv3d_41_56832:@@
conv3d_41_56834:@.
conv3d_42_56838:�@
conv3d_42_56840:@-
conv3d_43_56843:@@
conv3d_43_56845:@-
conv3d_44_56848:@@
conv3d_44_56850:@6
conv3d_transpose_6_56853: @&
conv3d_transpose_6_56855: -
conv3d_45_56858:  
conv3d_45_56860: -
conv3d_46_56864:@ 
conv3d_46_56866: -
conv3d_47_56869:  
conv3d_47_56871: -
conv3d_48_56874:  
conv3d_48_56876: 6
conv3d_transpose_7_56879: &
conv3d_transpose_7_56881:-
conv3d_49_56884:
conv3d_49_56886:-
conv3d_50_56890: 
conv3d_50_56892:-
conv3d_51_56895:
conv3d_51_56897:-
conv3d_52_56900:
conv3d_52_56902:-
conv3d_53_56906:
conv3d_53_56908:
identity��!conv3d_27/StatefulPartitionedCall�!conv3d_28/StatefulPartitionedCall�!conv3d_29/StatefulPartitionedCall�!conv3d_30/StatefulPartitionedCall�!conv3d_31/StatefulPartitionedCall�!conv3d_32/StatefulPartitionedCall�!conv3d_33/StatefulPartitionedCall�!conv3d_34/StatefulPartitionedCall�!conv3d_35/StatefulPartitionedCall�!conv3d_36/StatefulPartitionedCall�!conv3d_37/StatefulPartitionedCall�!conv3d_38/StatefulPartitionedCall�!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�!conv3d_44/StatefulPartitionedCall�!conv3d_45/StatefulPartitionedCall�!conv3d_46/StatefulPartitionedCall�!conv3d_47/StatefulPartitionedCall�!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�*conv3d_transpose_4/StatefulPartitionedCall�*conv3d_transpose_5/StatefulPartitionedCall�*conv3d_transpose_6/StatefulPartitionedCall�*conv3d_transpose_7/StatefulPartitionedCall�
 zero_padding3d_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_54978�
!conv3d_27/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_27_56747conv3d_27_56749*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_27_layer_call_and_return_conditional_losses_55253�
!conv3d_28/StatefulPartitionedCallStatefulPartitionedCall*conv3d_27/StatefulPartitionedCall:output:0conv3d_28_56752conv3d_28_56754*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_28_layer_call_and_return_conditional_losses_55270�
max_pooling3d_4/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_54990�
!conv3d_29/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_29_56758conv3d_29_56760*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_29_layer_call_and_return_conditional_losses_55288�
!conv3d_30/StatefulPartitionedCallStatefulPartitionedCall*conv3d_29/StatefulPartitionedCall:output:0conv3d_30_56763conv3d_30_56765*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_30_layer_call_and_return_conditional_losses_55305�
max_pooling3d_5/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_55002�
!conv3d_31/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_5/PartitionedCall:output:0conv3d_31_56769conv3d_31_56771*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_31_layer_call_and_return_conditional_losses_55323�
!conv3d_32/StatefulPartitionedCallStatefulPartitionedCall*conv3d_31/StatefulPartitionedCall:output:0conv3d_32_56774conv3d_32_56776*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_32_layer_call_and_return_conditional_losses_55340�
max_pooling3d_6/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_55014�
!conv3d_33/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_6/PartitionedCall:output:0conv3d_33_56780conv3d_33_56782*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_33_layer_call_and_return_conditional_losses_55358�
!conv3d_34/StatefulPartitionedCallStatefulPartitionedCall*conv3d_33/StatefulPartitionedCall:output:0conv3d_34_56785conv3d_34_56787*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_34_layer_call_and_return_conditional_losses_55375�
max_pooling3d_7/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_55026�
!conv3d_35/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_7/PartitionedCall:output:0conv3d_35_56791conv3d_35_56793*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_35_layer_call_and_return_conditional_losses_55393�
!conv3d_36/StatefulPartitionedCallStatefulPartitionedCall*conv3d_35/StatefulPartitionedCall:output:0conv3d_36_56796conv3d_36_56798*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_36_layer_call_and_return_conditional_losses_55410�
*conv3d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall*conv3d_36/StatefulPartitionedCall:output:0conv3d_transpose_4_56801conv3d_transpose_4_56803*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_55074�
!conv3d_37/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_4/StatefulPartitionedCall:output:0conv3d_37_56806conv3d_37_56808*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_37_layer_call_and_return_conditional_losses_55432�
concatenate_4/PartitionedCallPartitionedCall*conv3d_34/StatefulPartitionedCall:output:0*conv3d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_55445�
!conv3d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv3d_38_56812conv3d_38_56814*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_38_layer_call_and_return_conditional_losses_55458�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCall*conv3d_38/StatefulPartitionedCall:output:0conv3d_39_56817conv3d_39_56819*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_39_layer_call_and_return_conditional_losses_55475�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0conv3d_40_56822conv3d_40_56824*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_40_layer_call_and_return_conditional_losses_55492�
*conv3d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0conv3d_transpose_5_56827conv3d_transpose_5_56829*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_55120�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_5/StatefulPartitionedCall:output:0conv3d_41_56832conv3d_41_56834*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_41_layer_call_and_return_conditional_losses_55514�
concatenate_5/PartitionedCallPartitionedCall*conv3d_32/StatefulPartitionedCall:output:0*conv3d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:9�������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_55527�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv3d_42_56838conv3d_42_56840*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_42_layer_call_and_return_conditional_losses_55540�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_56843conv3d_43_56845*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_43_layer_call_and_return_conditional_losses_55557�
!conv3d_44/StatefulPartitionedCallStatefulPartitionedCall*conv3d_43/StatefulPartitionedCall:output:0conv3d_44_56848conv3d_44_56850*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_44_layer_call_and_return_conditional_losses_55574�
*conv3d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall*conv3d_44/StatefulPartitionedCall:output:0conv3d_transpose_6_56853conv3d_transpose_6_56855*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_55166�
!conv3d_45/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_6/StatefulPartitionedCall:output:0conv3d_45_56858conv3d_45_56860*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_45_layer_call_and_return_conditional_losses_55596�
concatenate_6/PartitionedCallPartitionedCall*conv3d_30/StatefulPartitionedCall:output:0*conv3d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_55609�
!conv3d_46/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0conv3d_46_56864conv3d_46_56866*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_46_layer_call_and_return_conditional_losses_55622�
!conv3d_47/StatefulPartitionedCallStatefulPartitionedCall*conv3d_46/StatefulPartitionedCall:output:0conv3d_47_56869conv3d_47_56871*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_47_layer_call_and_return_conditional_losses_55639�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCall*conv3d_47/StatefulPartitionedCall:output:0conv3d_48_56874conv3d_48_56876*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_48_layer_call_and_return_conditional_losses_55656�
*conv3d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0conv3d_transpose_7_56879conv3d_transpose_7_56881*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_55212�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall3conv3d_transpose_7/StatefulPartitionedCall:output:0conv3d_49_56884conv3d_49_56886*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_49_layer_call_and_return_conditional_losses_55678�
concatenate_7/PartitionedCallPartitionedCall*conv3d_28/StatefulPartitionedCall:output:0*conv3d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_55691�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0conv3d_50_56890conv3d_50_56892*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_50_layer_call_and_return_conditional_losses_55704�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0conv3d_51_56895conv3d_51_56897*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_51_layer_call_and_return_conditional_losses_55721�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_56900conv3d_52_56902*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_52_layer_call_and_return_conditional_losses_55738�
cropping3d_1/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_55231�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_1/PartitionedCall:output:0conv3d_53_56906conv3d_53_56908*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_53_layer_call_and_return_conditional_losses_55755�
IdentityIdentity*conv3d_53/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp"^conv3d_27/StatefulPartitionedCall"^conv3d_28/StatefulPartitionedCall"^conv3d_29/StatefulPartitionedCall"^conv3d_30/StatefulPartitionedCall"^conv3d_31/StatefulPartitionedCall"^conv3d_32/StatefulPartitionedCall"^conv3d_33/StatefulPartitionedCall"^conv3d_34/StatefulPartitionedCall"^conv3d_35/StatefulPartitionedCall"^conv3d_36/StatefulPartitionedCall"^conv3d_37/StatefulPartitionedCall"^conv3d_38/StatefulPartitionedCall"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall"^conv3d_44/StatefulPartitionedCall"^conv3d_45/StatefulPartitionedCall"^conv3d_46/StatefulPartitionedCall"^conv3d_47/StatefulPartitionedCall"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall+^conv3d_transpose_4/StatefulPartitionedCall+^conv3d_transpose_5/StatefulPartitionedCall+^conv3d_transpose_6/StatefulPartitionedCall+^conv3d_transpose_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_27/StatefulPartitionedCall!conv3d_27/StatefulPartitionedCall2F
!conv3d_28/StatefulPartitionedCall!conv3d_28/StatefulPartitionedCall2F
!conv3d_29/StatefulPartitionedCall!conv3d_29/StatefulPartitionedCall2F
!conv3d_30/StatefulPartitionedCall!conv3d_30/StatefulPartitionedCall2F
!conv3d_31/StatefulPartitionedCall!conv3d_31/StatefulPartitionedCall2F
!conv3d_32/StatefulPartitionedCall!conv3d_32/StatefulPartitionedCall2F
!conv3d_33/StatefulPartitionedCall!conv3d_33/StatefulPartitionedCall2F
!conv3d_34/StatefulPartitionedCall!conv3d_34/StatefulPartitionedCall2F
!conv3d_35/StatefulPartitionedCall!conv3d_35/StatefulPartitionedCall2F
!conv3d_36/StatefulPartitionedCall!conv3d_36/StatefulPartitionedCall2F
!conv3d_37/StatefulPartitionedCall!conv3d_37/StatefulPartitionedCall2F
!conv3d_38/StatefulPartitionedCall!conv3d_38/StatefulPartitionedCall2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2F
!conv3d_44/StatefulPartitionedCall!conv3d_44/StatefulPartitionedCall2F
!conv3d_45/StatefulPartitionedCall!conv3d_45/StatefulPartitionedCall2F
!conv3d_46/StatefulPartitionedCall!conv3d_46/StatefulPartitionedCall2F
!conv3d_47/StatefulPartitionedCall!conv3d_47/StatefulPartitionedCall2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2X
*conv3d_transpose_4/StatefulPartitionedCall*conv3d_transpose_4/StatefulPartitionedCall2X
*conv3d_transpose_5/StatefulPartitionedCall*conv3d_transpose_5/StatefulPartitionedCall2X
*conv3d_transpose_6/StatefulPartitionedCall*conv3d_transpose_6/StatefulPartitionedCall2X
*conv3d_transpose_7/StatefulPartitionedCall*conv3d_transpose_7/StatefulPartitionedCall:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_2
�
�
)__inference_conv3d_51_layer_call_fn_58930

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_51_layer_call_and_return_conditional_losses_55721�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_42_layer_call_and_return_conditional_losses_55540

inputs=
conv3d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_47_layer_call_and_return_conditional_losses_58804

inputs<
conv3d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
�
)__inference_conv3d_30_layer_call_fn_58246

inputs%
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_30_layer_call_and_return_conditional_losses_55305�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
K
/__inference_max_pooling3d_6_layer_call_fn_58312

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_55014�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_41_layer_call_and_return_conditional_losses_55514

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
)__inference_conv3d_31_layer_call_fn_58276

inputs%
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8������������������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_31_layer_call_and_return_conditional_losses_55323�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������ : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������ 
 
_user_specified_nameinputs
�
H
,__inference_cropping3d_1_layer_call_fn_58966

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_55231�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_43_layer_call_and_return_conditional_losses_55557

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@w
ReluReluBiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
IdentityIdentityRelu:activations:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv3d_53_layer_call_and_return_conditional_losses_55755

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityBiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:8������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv3d_34_layer_call_and_return_conditional_losses_58357

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������x
ReluReluBiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
IdentityIdentityRelu:activations:0^NoOp*
T0*O
_output_shapes=
;:9�������������������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:9�������������������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:w s
O
_output_shapes=
;:9�������������������������������������
 
_user_specified_nameinputs
��
�2
B__inference_model_1_layer_call_and_return_conditional_losses_57685

inputsF
(conv3d_27_conv3d_readvariableop_resource:7
)conv3d_27_biasadd_readvariableop_resource:F
(conv3d_28_conv3d_readvariableop_resource:7
)conv3d_28_biasadd_readvariableop_resource:F
(conv3d_29_conv3d_readvariableop_resource: 7
)conv3d_29_biasadd_readvariableop_resource: F
(conv3d_30_conv3d_readvariableop_resource:  7
)conv3d_30_biasadd_readvariableop_resource: F
(conv3d_31_conv3d_readvariableop_resource: @7
)conv3d_31_biasadd_readvariableop_resource:@F
(conv3d_32_conv3d_readvariableop_resource:@@7
)conv3d_32_biasadd_readvariableop_resource:@G
(conv3d_33_conv3d_readvariableop_resource:@�8
)conv3d_33_biasadd_readvariableop_resource:	�H
(conv3d_34_conv3d_readvariableop_resource:��8
)conv3d_34_biasadd_readvariableop_resource:	�H
(conv3d_35_conv3d_readvariableop_resource:��8
)conv3d_35_biasadd_readvariableop_resource:	�H
(conv3d_36_conv3d_readvariableop_resource:��8
)conv3d_36_biasadd_readvariableop_resource:	�[
;conv3d_transpose_4_conv3d_transpose_readvariableop_resource:��A
2conv3d_transpose_4_biasadd_readvariableop_resource:	�H
(conv3d_37_conv3d_readvariableop_resource:��8
)conv3d_37_biasadd_readvariableop_resource:	�H
(conv3d_38_conv3d_readvariableop_resource:��8
)conv3d_38_biasadd_readvariableop_resource:	�H
(conv3d_39_conv3d_readvariableop_resource:��8
)conv3d_39_biasadd_readvariableop_resource:	�H
(conv3d_40_conv3d_readvariableop_resource:��8
)conv3d_40_biasadd_readvariableop_resource:	�Z
;conv3d_transpose_5_conv3d_transpose_readvariableop_resource:@�@
2conv3d_transpose_5_biasadd_readvariableop_resource:@F
(conv3d_41_conv3d_readvariableop_resource:@@7
)conv3d_41_biasadd_readvariableop_resource:@G
(conv3d_42_conv3d_readvariableop_resource:�@7
)conv3d_42_biasadd_readvariableop_resource:@F
(conv3d_43_conv3d_readvariableop_resource:@@7
)conv3d_43_biasadd_readvariableop_resource:@F
(conv3d_44_conv3d_readvariableop_resource:@@7
)conv3d_44_biasadd_readvariableop_resource:@Y
;conv3d_transpose_6_conv3d_transpose_readvariableop_resource: @@
2conv3d_transpose_6_biasadd_readvariableop_resource: F
(conv3d_45_conv3d_readvariableop_resource:  7
)conv3d_45_biasadd_readvariableop_resource: F
(conv3d_46_conv3d_readvariableop_resource:@ 7
)conv3d_46_biasadd_readvariableop_resource: F
(conv3d_47_conv3d_readvariableop_resource:  7
)conv3d_47_biasadd_readvariableop_resource: F
(conv3d_48_conv3d_readvariableop_resource:  7
)conv3d_48_biasadd_readvariableop_resource: Y
;conv3d_transpose_7_conv3d_transpose_readvariableop_resource: @
2conv3d_transpose_7_biasadd_readvariableop_resource:F
(conv3d_49_conv3d_readvariableop_resource:7
)conv3d_49_biasadd_readvariableop_resource:F
(conv3d_50_conv3d_readvariableop_resource: 7
)conv3d_50_biasadd_readvariableop_resource:F
(conv3d_51_conv3d_readvariableop_resource:7
)conv3d_51_biasadd_readvariableop_resource:F
(conv3d_52_conv3d_readvariableop_resource:7
)conv3d_52_biasadd_readvariableop_resource:F
(conv3d_53_conv3d_readvariableop_resource:7
)conv3d_53_biasadd_readvariableop_resource:
identity�� conv3d_27/BiasAdd/ReadVariableOp�conv3d_27/Conv3D/ReadVariableOp� conv3d_28/BiasAdd/ReadVariableOp�conv3d_28/Conv3D/ReadVariableOp� conv3d_29/BiasAdd/ReadVariableOp�conv3d_29/Conv3D/ReadVariableOp� conv3d_30/BiasAdd/ReadVariableOp�conv3d_30/Conv3D/ReadVariableOp� conv3d_31/BiasAdd/ReadVariableOp�conv3d_31/Conv3D/ReadVariableOp� conv3d_32/BiasAdd/ReadVariableOp�conv3d_32/Conv3D/ReadVariableOp� conv3d_33/BiasAdd/ReadVariableOp�conv3d_33/Conv3D/ReadVariableOp� conv3d_34/BiasAdd/ReadVariableOp�conv3d_34/Conv3D/ReadVariableOp� conv3d_35/BiasAdd/ReadVariableOp�conv3d_35/Conv3D/ReadVariableOp� conv3d_36/BiasAdd/ReadVariableOp�conv3d_36/Conv3D/ReadVariableOp� conv3d_37/BiasAdd/ReadVariableOp�conv3d_37/Conv3D/ReadVariableOp� conv3d_38/BiasAdd/ReadVariableOp�conv3d_38/Conv3D/ReadVariableOp� conv3d_39/BiasAdd/ReadVariableOp�conv3d_39/Conv3D/ReadVariableOp� conv3d_40/BiasAdd/ReadVariableOp�conv3d_40/Conv3D/ReadVariableOp� conv3d_41/BiasAdd/ReadVariableOp�conv3d_41/Conv3D/ReadVariableOp� conv3d_42/BiasAdd/ReadVariableOp�conv3d_42/Conv3D/ReadVariableOp� conv3d_43/BiasAdd/ReadVariableOp�conv3d_43/Conv3D/ReadVariableOp� conv3d_44/BiasAdd/ReadVariableOp�conv3d_44/Conv3D/ReadVariableOp� conv3d_45/BiasAdd/ReadVariableOp�conv3d_45/Conv3D/ReadVariableOp� conv3d_46/BiasAdd/ReadVariableOp�conv3d_46/Conv3D/ReadVariableOp� conv3d_47/BiasAdd/ReadVariableOp�conv3d_47/Conv3D/ReadVariableOp� conv3d_48/BiasAdd/ReadVariableOp�conv3d_48/Conv3D/ReadVariableOp� conv3d_49/BiasAdd/ReadVariableOp�conv3d_49/Conv3D/ReadVariableOp� conv3d_50/BiasAdd/ReadVariableOp�conv3d_50/Conv3D/ReadVariableOp� conv3d_51/BiasAdd/ReadVariableOp�conv3d_51/Conv3D/ReadVariableOp� conv3d_52/BiasAdd/ReadVariableOp�conv3d_52/Conv3D/ReadVariableOp� conv3d_53/BiasAdd/ReadVariableOp�conv3d_53/Conv3D/ReadVariableOp�)conv3d_transpose_4/BiasAdd/ReadVariableOp�2conv3d_transpose_4/conv3d_transpose/ReadVariableOp�)conv3d_transpose_5/BiasAdd/ReadVariableOp�2conv3d_transpose_5/conv3d_transpose/ReadVariableOp�)conv3d_transpose_6/BiasAdd/ReadVariableOp�2conv3d_transpose_6/conv3d_transpose/ReadVariableOp�)conv3d_transpose_7/BiasAdd/ReadVariableOp�2conv3d_transpose_7/conv3d_transpose/ReadVariableOp�
zero_padding3d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
zero_padding3d_1/PadPadinputs&zero_padding3d_1/Pad/paddings:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_27/Conv3D/ReadVariableOpReadVariableOp(conv3d_27_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_27/Conv3DConv3Dzero_padding3d_1/Pad:output:0'conv3d_27/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_27/BiasAdd/ReadVariableOpReadVariableOp)conv3d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_27/BiasAddBiasAddconv3d_27/Conv3D:output:0(conv3d_27/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_27/ReluReluconv3d_27/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_28/Conv3D/ReadVariableOpReadVariableOp(conv3d_28_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_28/Conv3DConv3Dconv3d_27/Relu:activations:0'conv3d_28/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_28/BiasAdd/ReadVariableOpReadVariableOp)conv3d_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_28/BiasAddBiasAddconv3d_28/Conv3D:output:0(conv3d_28/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_28/ReluReluconv3d_28/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
max_pooling3d_4/MaxPool3D	MaxPool3Dconv3d_28/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
ksize	
*
paddingVALID*
strides	
�
conv3d_29/Conv3D/ReadVariableOpReadVariableOp(conv3d_29_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_29/Conv3DConv3D"max_pooling3d_4/MaxPool3D:output:0'conv3d_29/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_29/BiasAdd/ReadVariableOpReadVariableOp)conv3d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_29/BiasAddBiasAddconv3d_29/Conv3D:output:0(conv3d_29/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_29/ReluReluconv3d_29/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_30/Conv3D/ReadVariableOpReadVariableOp(conv3d_30_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_30/Conv3DConv3Dconv3d_29/Relu:activations:0'conv3d_30/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_30/BiasAdd/ReadVariableOpReadVariableOp)conv3d_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_30/BiasAddBiasAddconv3d_30/Conv3D:output:0(conv3d_30/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_30/ReluReluconv3d_30/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
max_pooling3d_5/MaxPool3D	MaxPool3Dconv3d_30/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
ksize	
*
paddingVALID*
strides	
�
conv3d_31/Conv3D/ReadVariableOpReadVariableOp(conv3d_31_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
conv3d_31/Conv3DConv3D"max_pooling3d_5/MaxPool3D:output:0'conv3d_31/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_31/BiasAdd/ReadVariableOpReadVariableOp)conv3d_31_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_31/BiasAddBiasAddconv3d_31/Conv3D:output:0(conv3d_31/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_31/ReluReluconv3d_31/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_32/Conv3D/ReadVariableOpReadVariableOp(conv3d_32_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_32/Conv3DConv3Dconv3d_31/Relu:activations:0'conv3d_32/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_32/BiasAdd/ReadVariableOpReadVariableOp)conv3d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_32/BiasAddBiasAddconv3d_32/Conv3D:output:0(conv3d_32/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_32/ReluReluconv3d_32/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
max_pooling3d_6/MaxPool3D	MaxPool3Dconv3d_32/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
ksize	
*
paddingVALID*
strides	
�
conv3d_33/Conv3D/ReadVariableOpReadVariableOp(conv3d_33_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_33/Conv3DConv3D"max_pooling3d_6/MaxPool3D:output:0'conv3d_33/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_33/BiasAdd/ReadVariableOpReadVariableOp)conv3d_33_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_33/BiasAddBiasAddconv3d_33/Conv3D:output:0(conv3d_33/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_33/ReluReluconv3d_33/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_34/Conv3D/ReadVariableOpReadVariableOp(conv3d_34_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_34/Conv3DConv3Dconv3d_33/Relu:activations:0'conv3d_34/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_34/BiasAdd/ReadVariableOpReadVariableOp)conv3d_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_34/BiasAddBiasAddconv3d_34/Conv3D:output:0(conv3d_34/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_34/ReluReluconv3d_34/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
max_pooling3d_7/MaxPool3D	MaxPool3Dconv3d_34/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
ksize	
*
paddingVALID*
strides	
�
conv3d_35/Conv3D/ReadVariableOpReadVariableOp(conv3d_35_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_35/Conv3DConv3D"max_pooling3d_7/MaxPool3D:output:0'conv3d_35/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_35/BiasAdd/ReadVariableOpReadVariableOp)conv3d_35_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_35/BiasAddBiasAddconv3d_35/Conv3D:output:0(conv3d_35/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_35/ReluReluconv3d_35/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_36/Conv3D/ReadVariableOpReadVariableOp(conv3d_36_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_36/Conv3DConv3Dconv3d_35/Relu:activations:0'conv3d_36/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_36/BiasAdd/ReadVariableOpReadVariableOp)conv3d_36_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_36/BiasAddBiasAddconv3d_36/Conv3D:output:0(conv3d_36/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_36/ReluReluconv3d_36/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������d
conv3d_transpose_4/ShapeShapeconv3d_36/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_4/strided_sliceStridedSlice!conv3d_transpose_4/Shape:output:0/conv3d_transpose_4/strided_slice/stack:output:01conv3d_transpose_4/strided_slice/stack_1:output:01conv3d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_4/strided_slice_1StridedSlice!conv3d_transpose_4/Shape:output:01conv3d_transpose_4/strided_slice_1/stack:output:03conv3d_transpose_4/strided_slice_1/stack_1:output:03conv3d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_4/strided_slice_2StridedSlice!conv3d_transpose_4/Shape:output:01conv3d_transpose_4/strided_slice_2/stack:output:03conv3d_transpose_4/strided_slice_2/stack_1:output:03conv3d_transpose_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_4/strided_slice_3StridedSlice!conv3d_transpose_4/Shape:output:01conv3d_transpose_4/strided_slice_3/stack:output:03conv3d_transpose_4/strided_slice_3/stack_1:output:03conv3d_transpose_4/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_4/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_4/mulMul+conv3d_transpose_4/strided_slice_1:output:0!conv3d_transpose_4/mul/y:output:0*
T0*
_output_shapes
: Z
conv3d_transpose_4/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_4/addAddV2conv3d_transpose_4/mul:z:0!conv3d_transpose_4/add/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_4/mul_1Mul+conv3d_transpose_4/strided_slice_2:output:0#conv3d_transpose_4/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_4/add_1AddV2conv3d_transpose_4/mul_1:z:0#conv3d_transpose_4/add_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_4/mul_2Mul+conv3d_transpose_4/strided_slice_3:output:0#conv3d_transpose_4/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_4/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_4/add_2AddV2conv3d_transpose_4/mul_2:z:0#conv3d_transpose_4/add_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_4/stack/4Const*
_output_shapes
: *
dtype0*
value
B :��
conv3d_transpose_4/stackPack)conv3d_transpose_4/strided_slice:output:0conv3d_transpose_4/add:z:0conv3d_transpose_4/add_1:z:0conv3d_transpose_4/add_2:z:0#conv3d_transpose_4/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_4/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_4_conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
#conv3d_transpose_4/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_4/stack:output:0:conv3d_transpose_4/conv3d_transpose/ReadVariableOp:value:0conv3d_36/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
�
)conv3d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_transpose_4/BiasAddBiasAdd,conv3d_transpose_4/conv3d_transpose:output:01conv3d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_37/Conv3D/ReadVariableOpReadVariableOp(conv3d_37_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_37/Conv3DConv3D#conv3d_transpose_4/BiasAdd:output:0'conv3d_37/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_37/BiasAdd/ReadVariableOpReadVariableOp)conv3d_37_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_37/BiasAddBiasAddconv3d_37/Conv3D:output:0(conv3d_37/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_37/ReluReluconv3d_37/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������[
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_4/concatConcatV2conv3d_34/Relu:activations:0conv3d_37/Relu:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_38/Conv3D/ReadVariableOpReadVariableOp(conv3d_38_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_38/Conv3DConv3Dconcatenate_4/concat:output:0'conv3d_38/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_38/BiasAdd/ReadVariableOpReadVariableOp)conv3d_38_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_38/BiasAddBiasAddconv3d_38/Conv3D:output:0(conv3d_38/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_38/ReluReluconv3d_38/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_39/Conv3D/ReadVariableOpReadVariableOp(conv3d_39_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_39/Conv3DConv3Dconv3d_38/Relu:activations:0'conv3d_39/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_39/BiasAdd/ReadVariableOpReadVariableOp)conv3d_39_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_39/BiasAddBiasAddconv3d_39/Conv3D:output:0(conv3d_39/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_39/ReluReluconv3d_39/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_40/Conv3D/ReadVariableOpReadVariableOp(conv3d_40_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_40/Conv3DConv3Dconv3d_39/Relu:activations:0'conv3d_40/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
 conv3d_40/BiasAdd/ReadVariableOpReadVariableOp)conv3d_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_40/BiasAddBiasAddconv3d_40/Conv3D:output:0(conv3d_40/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_40/ReluReluconv3d_40/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������d
conv3d_transpose_5/ShapeShapeconv3d_40/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_5/strided_sliceStridedSlice!conv3d_transpose_5/Shape:output:0/conv3d_transpose_5/strided_slice/stack:output:01conv3d_transpose_5/strided_slice/stack_1:output:01conv3d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_5/strided_slice_1StridedSlice!conv3d_transpose_5/Shape:output:01conv3d_transpose_5/strided_slice_1/stack:output:03conv3d_transpose_5/strided_slice_1/stack_1:output:03conv3d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_5/strided_slice_2StridedSlice!conv3d_transpose_5/Shape:output:01conv3d_transpose_5/strided_slice_2/stack:output:03conv3d_transpose_5/strided_slice_2/stack_1:output:03conv3d_transpose_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_5/strided_slice_3StridedSlice!conv3d_transpose_5/Shape:output:01conv3d_transpose_5/strided_slice_3/stack:output:03conv3d_transpose_5/strided_slice_3/stack_1:output:03conv3d_transpose_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_5/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_5/mulMul+conv3d_transpose_5/strided_slice_1:output:0!conv3d_transpose_5/mul/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_5/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_5/mul_1Mul+conv3d_transpose_5/strided_slice_2:output:0#conv3d_transpose_5/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_5/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_5/mul_2Mul+conv3d_transpose_5/strided_slice_3:output:0#conv3d_transpose_5/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_5/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@�
conv3d_transpose_5/stackPack)conv3d_transpose_5/strided_slice:output:0conv3d_transpose_5/mul:z:0conv3d_transpose_5/mul_1:z:0conv3d_transpose_5/mul_2:z:0#conv3d_transpose_5/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_5/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_5_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
#conv3d_transpose_5/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_5/stack:output:0:conv3d_transpose_5/conv3d_transpose/ReadVariableOp:value:0conv3d_40/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)conv3d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_transpose_5/BiasAddBiasAdd,conv3d_transpose_5/conv3d_transpose:output:01conv3d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_41/Conv3D/ReadVariableOpReadVariableOp(conv3d_41_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_41/Conv3DConv3D#conv3d_transpose_5/BiasAdd:output:0'conv3d_41/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_41/BiasAdd/ReadVariableOpReadVariableOp)conv3d_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_41/BiasAddBiasAddconv3d_41/Conv3D:output:0(conv3d_41/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_41/ReluReluconv3d_41/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@[
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_5/concatConcatV2conv3d_32/Relu:activations:0conv3d_41/Relu:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_42/Conv3D/ReadVariableOpReadVariableOp(conv3d_42_conv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
conv3d_42/Conv3DConv3Dconcatenate_5/concat:output:0'conv3d_42/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_42/BiasAdd/ReadVariableOpReadVariableOp)conv3d_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_42/BiasAddBiasAddconv3d_42/Conv3D:output:0(conv3d_42/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_42/ReluReluconv3d_42/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_43/Conv3D/ReadVariableOpReadVariableOp(conv3d_43_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_43/Conv3DConv3Dconv3d_42/Relu:activations:0'conv3d_43/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_43/BiasAdd/ReadVariableOpReadVariableOp)conv3d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_43/BiasAddBiasAddconv3d_43/Conv3D:output:0(conv3d_43/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_43/ReluReluconv3d_43/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_44/Conv3D/ReadVariableOpReadVariableOp(conv3d_44_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_44/Conv3DConv3Dconv3d_43/Relu:activations:0'conv3d_44/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
 conv3d_44/BiasAdd/ReadVariableOpReadVariableOp)conv3d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_44/BiasAddBiasAddconv3d_44/Conv3D:output:0(conv3d_44/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_44/ReluReluconv3d_44/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@d
conv3d_transpose_6/ShapeShapeconv3d_44/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_6/strided_sliceStridedSlice!conv3d_transpose_6/Shape:output:0/conv3d_transpose_6/strided_slice/stack:output:01conv3d_transpose_6/strided_slice/stack_1:output:01conv3d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_6/strided_slice_1StridedSlice!conv3d_transpose_6/Shape:output:01conv3d_transpose_6/strided_slice_1/stack:output:03conv3d_transpose_6/strided_slice_1/stack_1:output:03conv3d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_6/strided_slice_2StridedSlice!conv3d_transpose_6/Shape:output:01conv3d_transpose_6/strided_slice_2/stack:output:03conv3d_transpose_6/strided_slice_2/stack_1:output:03conv3d_transpose_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_6/strided_slice_3StridedSlice!conv3d_transpose_6/Shape:output:01conv3d_transpose_6/strided_slice_3/stack:output:03conv3d_transpose_6/strided_slice_3/stack_1:output:03conv3d_transpose_6/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_6/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_6/mulMul+conv3d_transpose_6/strided_slice_1:output:0!conv3d_transpose_6/mul/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_6/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_6/mul_1Mul+conv3d_transpose_6/strided_slice_2:output:0#conv3d_transpose_6/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_6/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_6/mul_2Mul+conv3d_transpose_6/strided_slice_3:output:0#conv3d_transpose_6/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_6/stack/4Const*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_6/stackPack)conv3d_transpose_6/strided_slice:output:0conv3d_transpose_6/mul:z:0conv3d_transpose_6/mul_1:z:0conv3d_transpose_6/mul_2:z:0#conv3d_transpose_6/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_6/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_6_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
#conv3d_transpose_6/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_6/stack:output:0:conv3d_transpose_6/conv3d_transpose/ReadVariableOp:value:0conv3d_44/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)conv3d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_transpose_6/BiasAddBiasAdd,conv3d_transpose_6/conv3d_transpose:output:01conv3d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_45/Conv3D/ReadVariableOpReadVariableOp(conv3d_45_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_45/Conv3DConv3D#conv3d_transpose_6/BiasAdd:output:0'conv3d_45/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_45/BiasAdd/ReadVariableOpReadVariableOp)conv3d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_45/BiasAddBiasAddconv3d_45/Conv3D:output:0(conv3d_45/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_45/ReluReluconv3d_45/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ [
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_6/concatConcatV2conv3d_30/Relu:activations:0conv3d_45/Relu:activations:0"concatenate_6/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_46/Conv3D/ReadVariableOpReadVariableOp(conv3d_46_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
conv3d_46/Conv3DConv3Dconcatenate_6/concat:output:0'conv3d_46/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_46/BiasAdd/ReadVariableOpReadVariableOp)conv3d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_46/BiasAddBiasAddconv3d_46/Conv3D:output:0(conv3d_46/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_46/ReluReluconv3d_46/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_47/Conv3D/ReadVariableOpReadVariableOp(conv3d_47_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_47/Conv3DConv3Dconv3d_46/Relu:activations:0'conv3d_47/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_47/BiasAdd/ReadVariableOpReadVariableOp)conv3d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_47/BiasAddBiasAddconv3d_47/Conv3D:output:0(conv3d_47/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_47/ReluReluconv3d_47/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_48/Conv3D/ReadVariableOpReadVariableOp(conv3d_48_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_48/Conv3DConv3Dconv3d_47/Relu:activations:0'conv3d_48/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
 conv3d_48/BiasAdd/ReadVariableOpReadVariableOp)conv3d_48_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_48/BiasAddBiasAddconv3d_48/Conv3D:output:0(conv3d_48/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_48/ReluReluconv3d_48/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ d
conv3d_transpose_7/ShapeShapeconv3d_48/Relu:activations:0*
T0*
_output_shapes
:p
&conv3d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv3d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv3d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv3d_transpose_7/strided_sliceStridedSlice!conv3d_transpose_7/Shape:output:0/conv3d_transpose_7/strided_slice/stack:output:01conv3d_transpose_7/strided_slice/stack_1:output:01conv3d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_7/strided_slice_1StridedSlice!conv3d_transpose_7/Shape:output:01conv3d_transpose_7/strided_slice_1/stack:output:03conv3d_transpose_7/strided_slice_1/stack_1:output:03conv3d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_7/strided_slice_2StridedSlice!conv3d_transpose_7/Shape:output:01conv3d_transpose_7/strided_slice_2/stack:output:03conv3d_transpose_7/strided_slice_2/stack_1:output:03conv3d_transpose_7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv3d_transpose_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv3d_transpose_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv3d_transpose_7/strided_slice_3StridedSlice!conv3d_transpose_7/Shape:output:01conv3d_transpose_7/strided_slice_3/stack:output:03conv3d_transpose_7/strided_slice_3/stack_1:output:03conv3d_transpose_7/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv3d_transpose_7/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/mulMul+conv3d_transpose_7/strided_slice_1:output:0!conv3d_transpose_7/mul/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_7/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/mul_1Mul+conv3d_transpose_7/strided_slice_2:output:0#conv3d_transpose_7/mul_1/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_7/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/mul_2Mul+conv3d_transpose_7/strided_slice_3:output:0#conv3d_transpose_7/mul_2/y:output:0*
T0*
_output_shapes
: \
conv3d_transpose_7/stack/4Const*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_7/stackPack)conv3d_transpose_7/strided_slice:output:0conv3d_transpose_7/mul:z:0conv3d_transpose_7/mul_1:z:0conv3d_transpose_7/mul_2:z:0#conv3d_transpose_7/stack/4:output:0*
N*
T0*
_output_shapes
:�
2conv3d_transpose_7/conv3d_transpose/ReadVariableOpReadVariableOp;conv3d_transpose_7_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
#conv3d_transpose_7/conv3d_transposeConv3DBackpropInputV2!conv3d_transpose_7/stack:output:0:conv3d_transpose_7/conv3d_transpose/ReadVariableOp:value:0conv3d_48/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)conv3d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv3d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_transpose_7/BiasAddBiasAdd,conv3d_transpose_7/conv3d_transpose:output:01conv3d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_49/Conv3D/ReadVariableOpReadVariableOp(conv3d_49_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_49/Conv3DConv3D#conv3d_transpose_7/BiasAdd:output:0'conv3d_49/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_49/BiasAdd/ReadVariableOpReadVariableOp)conv3d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_49/BiasAddBiasAddconv3d_49/Conv3D:output:0(conv3d_49/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_49/ReluReluconv3d_49/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������[
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_7/concatConcatV2conv3d_28/Relu:activations:0conv3d_49/Relu:activations:0"concatenate_7/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_50/Conv3D/ReadVariableOpReadVariableOp(conv3d_50_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_50/Conv3DConv3Dconcatenate_7/concat:output:0'conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_50/BiasAdd/ReadVariableOpReadVariableOp)conv3d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_50/BiasAddBiasAddconv3d_50/Conv3D:output:0(conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_50/ReluReluconv3d_50/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_51/Conv3D/ReadVariableOpReadVariableOp(conv3d_51_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_51/Conv3DConv3Dconv3d_50/Relu:activations:0'conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_51/BiasAdd/ReadVariableOpReadVariableOp)conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_51/BiasAddBiasAddconv3d_51/Conv3D:output:0(conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_51/ReluReluconv3d_51/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_52/Conv3D/ReadVariableOpReadVariableOp(conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_52/Conv3DConv3Dconv3d_51/Relu:activations:0'conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_52/BiasAdd/ReadVariableOpReadVariableOp)conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_52/BiasAddBiasAddconv3d_52/Conv3D:output:0(conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_52/ReluReluconv3d_52/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������}
 cropping3d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
"cropping3d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
"cropping3d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               �
cropping3d_1/strided_sliceStridedSliceconv3d_52/Relu:activations:0)cropping3d_1/strided_slice/stack:output:0+cropping3d_1/strided_slice/stack_1:output:0+cropping3d_1/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8������������������������������������*

begin_mask*
end_mask�
conv3d_53/Conv3D/ReadVariableOpReadVariableOp(conv3d_53_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_53/Conv3DConv3D#cropping3d_1/strided_slice:output:0'conv3d_53/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
 conv3d_53/BiasAdd/ReadVariableOpReadVariableOp)conv3d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_53/BiasAddBiasAddconv3d_53/Conv3D:output:0(conv3d_53/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityconv3d_53/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp!^conv3d_27/BiasAdd/ReadVariableOp ^conv3d_27/Conv3D/ReadVariableOp!^conv3d_28/BiasAdd/ReadVariableOp ^conv3d_28/Conv3D/ReadVariableOp!^conv3d_29/BiasAdd/ReadVariableOp ^conv3d_29/Conv3D/ReadVariableOp!^conv3d_30/BiasAdd/ReadVariableOp ^conv3d_30/Conv3D/ReadVariableOp!^conv3d_31/BiasAdd/ReadVariableOp ^conv3d_31/Conv3D/ReadVariableOp!^conv3d_32/BiasAdd/ReadVariableOp ^conv3d_32/Conv3D/ReadVariableOp!^conv3d_33/BiasAdd/ReadVariableOp ^conv3d_33/Conv3D/ReadVariableOp!^conv3d_34/BiasAdd/ReadVariableOp ^conv3d_34/Conv3D/ReadVariableOp!^conv3d_35/BiasAdd/ReadVariableOp ^conv3d_35/Conv3D/ReadVariableOp!^conv3d_36/BiasAdd/ReadVariableOp ^conv3d_36/Conv3D/ReadVariableOp!^conv3d_37/BiasAdd/ReadVariableOp ^conv3d_37/Conv3D/ReadVariableOp!^conv3d_38/BiasAdd/ReadVariableOp ^conv3d_38/Conv3D/ReadVariableOp!^conv3d_39/BiasAdd/ReadVariableOp ^conv3d_39/Conv3D/ReadVariableOp!^conv3d_40/BiasAdd/ReadVariableOp ^conv3d_40/Conv3D/ReadVariableOp!^conv3d_41/BiasAdd/ReadVariableOp ^conv3d_41/Conv3D/ReadVariableOp!^conv3d_42/BiasAdd/ReadVariableOp ^conv3d_42/Conv3D/ReadVariableOp!^conv3d_43/BiasAdd/ReadVariableOp ^conv3d_43/Conv3D/ReadVariableOp!^conv3d_44/BiasAdd/ReadVariableOp ^conv3d_44/Conv3D/ReadVariableOp!^conv3d_45/BiasAdd/ReadVariableOp ^conv3d_45/Conv3D/ReadVariableOp!^conv3d_46/BiasAdd/ReadVariableOp ^conv3d_46/Conv3D/ReadVariableOp!^conv3d_47/BiasAdd/ReadVariableOp ^conv3d_47/Conv3D/ReadVariableOp!^conv3d_48/BiasAdd/ReadVariableOp ^conv3d_48/Conv3D/ReadVariableOp!^conv3d_49/BiasAdd/ReadVariableOp ^conv3d_49/Conv3D/ReadVariableOp!^conv3d_50/BiasAdd/ReadVariableOp ^conv3d_50/Conv3D/ReadVariableOp!^conv3d_51/BiasAdd/ReadVariableOp ^conv3d_51/Conv3D/ReadVariableOp!^conv3d_52/BiasAdd/ReadVariableOp ^conv3d_52/Conv3D/ReadVariableOp!^conv3d_53/BiasAdd/ReadVariableOp ^conv3d_53/Conv3D/ReadVariableOp*^conv3d_transpose_4/BiasAdd/ReadVariableOp3^conv3d_transpose_4/conv3d_transpose/ReadVariableOp*^conv3d_transpose_5/BiasAdd/ReadVariableOp3^conv3d_transpose_5/conv3d_transpose/ReadVariableOp*^conv3d_transpose_6/BiasAdd/ReadVariableOp3^conv3d_transpose_6/conv3d_transpose/ReadVariableOp*^conv3d_transpose_7/BiasAdd/ReadVariableOp3^conv3d_transpose_7/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv3d_27/BiasAdd/ReadVariableOp conv3d_27/BiasAdd/ReadVariableOp2B
conv3d_27/Conv3D/ReadVariableOpconv3d_27/Conv3D/ReadVariableOp2D
 conv3d_28/BiasAdd/ReadVariableOp conv3d_28/BiasAdd/ReadVariableOp2B
conv3d_28/Conv3D/ReadVariableOpconv3d_28/Conv3D/ReadVariableOp2D
 conv3d_29/BiasAdd/ReadVariableOp conv3d_29/BiasAdd/ReadVariableOp2B
conv3d_29/Conv3D/ReadVariableOpconv3d_29/Conv3D/ReadVariableOp2D
 conv3d_30/BiasAdd/ReadVariableOp conv3d_30/BiasAdd/ReadVariableOp2B
conv3d_30/Conv3D/ReadVariableOpconv3d_30/Conv3D/ReadVariableOp2D
 conv3d_31/BiasAdd/ReadVariableOp conv3d_31/BiasAdd/ReadVariableOp2B
conv3d_31/Conv3D/ReadVariableOpconv3d_31/Conv3D/ReadVariableOp2D
 conv3d_32/BiasAdd/ReadVariableOp conv3d_32/BiasAdd/ReadVariableOp2B
conv3d_32/Conv3D/ReadVariableOpconv3d_32/Conv3D/ReadVariableOp2D
 conv3d_33/BiasAdd/ReadVariableOp conv3d_33/BiasAdd/ReadVariableOp2B
conv3d_33/Conv3D/ReadVariableOpconv3d_33/Conv3D/ReadVariableOp2D
 conv3d_34/BiasAdd/ReadVariableOp conv3d_34/BiasAdd/ReadVariableOp2B
conv3d_34/Conv3D/ReadVariableOpconv3d_34/Conv3D/ReadVariableOp2D
 conv3d_35/BiasAdd/ReadVariableOp conv3d_35/BiasAdd/ReadVariableOp2B
conv3d_35/Conv3D/ReadVariableOpconv3d_35/Conv3D/ReadVariableOp2D
 conv3d_36/BiasAdd/ReadVariableOp conv3d_36/BiasAdd/ReadVariableOp2B
conv3d_36/Conv3D/ReadVariableOpconv3d_36/Conv3D/ReadVariableOp2D
 conv3d_37/BiasAdd/ReadVariableOp conv3d_37/BiasAdd/ReadVariableOp2B
conv3d_37/Conv3D/ReadVariableOpconv3d_37/Conv3D/ReadVariableOp2D
 conv3d_38/BiasAdd/ReadVariableOp conv3d_38/BiasAdd/ReadVariableOp2B
conv3d_38/Conv3D/ReadVariableOpconv3d_38/Conv3D/ReadVariableOp2D
 conv3d_39/BiasAdd/ReadVariableOp conv3d_39/BiasAdd/ReadVariableOp2B
conv3d_39/Conv3D/ReadVariableOpconv3d_39/Conv3D/ReadVariableOp2D
 conv3d_40/BiasAdd/ReadVariableOp conv3d_40/BiasAdd/ReadVariableOp2B
conv3d_40/Conv3D/ReadVariableOpconv3d_40/Conv3D/ReadVariableOp2D
 conv3d_41/BiasAdd/ReadVariableOp conv3d_41/BiasAdd/ReadVariableOp2B
conv3d_41/Conv3D/ReadVariableOpconv3d_41/Conv3D/ReadVariableOp2D
 conv3d_42/BiasAdd/ReadVariableOp conv3d_42/BiasAdd/ReadVariableOp2B
conv3d_42/Conv3D/ReadVariableOpconv3d_42/Conv3D/ReadVariableOp2D
 conv3d_43/BiasAdd/ReadVariableOp conv3d_43/BiasAdd/ReadVariableOp2B
conv3d_43/Conv3D/ReadVariableOpconv3d_43/Conv3D/ReadVariableOp2D
 conv3d_44/BiasAdd/ReadVariableOp conv3d_44/BiasAdd/ReadVariableOp2B
conv3d_44/Conv3D/ReadVariableOpconv3d_44/Conv3D/ReadVariableOp2D
 conv3d_45/BiasAdd/ReadVariableOp conv3d_45/BiasAdd/ReadVariableOp2B
conv3d_45/Conv3D/ReadVariableOpconv3d_45/Conv3D/ReadVariableOp2D
 conv3d_46/BiasAdd/ReadVariableOp conv3d_46/BiasAdd/ReadVariableOp2B
conv3d_46/Conv3D/ReadVariableOpconv3d_46/Conv3D/ReadVariableOp2D
 conv3d_47/BiasAdd/ReadVariableOp conv3d_47/BiasAdd/ReadVariableOp2B
conv3d_47/Conv3D/ReadVariableOpconv3d_47/Conv3D/ReadVariableOp2D
 conv3d_48/BiasAdd/ReadVariableOp conv3d_48/BiasAdd/ReadVariableOp2B
conv3d_48/Conv3D/ReadVariableOpconv3d_48/Conv3D/ReadVariableOp2D
 conv3d_49/BiasAdd/ReadVariableOp conv3d_49/BiasAdd/ReadVariableOp2B
conv3d_49/Conv3D/ReadVariableOpconv3d_49/Conv3D/ReadVariableOp2D
 conv3d_50/BiasAdd/ReadVariableOp conv3d_50/BiasAdd/ReadVariableOp2B
conv3d_50/Conv3D/ReadVariableOpconv3d_50/Conv3D/ReadVariableOp2D
 conv3d_51/BiasAdd/ReadVariableOp conv3d_51/BiasAdd/ReadVariableOp2B
conv3d_51/Conv3D/ReadVariableOpconv3d_51/Conv3D/ReadVariableOp2D
 conv3d_52/BiasAdd/ReadVariableOp conv3d_52/BiasAdd/ReadVariableOp2B
conv3d_52/Conv3D/ReadVariableOpconv3d_52/Conv3D/ReadVariableOp2D
 conv3d_53/BiasAdd/ReadVariableOp conv3d_53/BiasAdd/ReadVariableOp2B
conv3d_53/Conv3D/ReadVariableOpconv3d_53/Conv3D/ReadVariableOp2V
)conv3d_transpose_4/BiasAdd/ReadVariableOp)conv3d_transpose_4/BiasAdd/ReadVariableOp2h
2conv3d_transpose_4/conv3d_transpose/ReadVariableOp2conv3d_transpose_4/conv3d_transpose/ReadVariableOp2V
)conv3d_transpose_5/BiasAdd/ReadVariableOp)conv3d_transpose_5/BiasAdd/ReadVariableOp2h
2conv3d_transpose_5/conv3d_transpose/ReadVariableOp2conv3d_transpose_5/conv3d_transpose/ReadVariableOp2V
)conv3d_transpose_6/BiasAdd/ReadVariableOp)conv3d_transpose_6/BiasAdd/ReadVariableOp2h
2conv3d_transpose_6/conv3d_transpose/ReadVariableOp2conv3d_transpose_6/conv3d_transpose/ReadVariableOp2V
)conv3d_transpose_7/BiasAdd/ReadVariableOp)conv3d_transpose_7/BiasAdd/ReadVariableOp2h
2conv3d_transpose_7/conv3d_transpose/ReadVariableOp2conv3d_transpose_7/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
t
H__inference_concatenate_5_layer_call_and_return_conditional_losses_58627
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9�������������������������������������
IdentityIdentityconcat:output:0*
T0*O
_output_shapes=
;:9�������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesv
t:8������������������������������������@:8������������������������������������@:x t
N
_output_shapes<
::8������������������������������������@
"
_user_specified_name
inputs/0:xt
N
_output_shapes<
::8������������������������������������@
"
_user_specified_name
inputs/1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
b
input_2W
serving_default_input_2:08������������������������������������d
	conv3d_53W
StatefulPartitionedCall:08������������������������������������tensorflow/serving/predict:��
�
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
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
�

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
�

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
�

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
�

}kernel
~bias
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate;m�<m�Cm�Dm�Qm�Rm�Ym�Zm�gm�hm�om�pm�}m�~m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�;v�<v�Cv�Dv�Qv�Rv�Yv�Zv�gv�hv�ov�pv�}v�~v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
 "
trackable_list_wrapper
�
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
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61"
trackable_list_wrapper
�
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
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
3_default_save_signature
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_model_1_layer_call_fn_55889
'__inference_model_1_layer_call_fn_57216
'__inference_model_1_layer_call_fn_57345
'__inference_model_1_layer_call_fn_56743�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_model_1_layer_call_and_return_conditional_losses_57685
B__inference_model_1_layer_call_and_return_conditional_losses_58025
B__inference_model_1_layer_call_and_return_conditional_losses_56912
B__inference_model_1_layer_call_and_return_conditional_losses_57081�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_54968input_2"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�2�
0__inference_zero_padding3d_1_layer_call_fn_58161�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_58167�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,2conv3d_27/kernel
:2conv3d_27/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_27_layer_call_fn_58176�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_27_layer_call_and_return_conditional_losses_58187�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,2conv3d_28/kernel
:2conv3d_28/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_28_layer_call_fn_58196�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_28_layer_call_and_return_conditional_losses_58207�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_max_pooling3d_4_layer_call_fn_58212�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_58217�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:, 2conv3d_29/kernel
: 2conv3d_29/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_29_layer_call_fn_58226�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_29_layer_call_and_return_conditional_losses_58237�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,  2conv3d_30/kernel
: 2conv3d_30/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_30_layer_call_fn_58246�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_30_layer_call_and_return_conditional_losses_58257�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_max_pooling3d_5_layer_call_fn_58262�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_58267�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:, @2conv3d_31/kernel
:@2conv3d_31/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_31_layer_call_fn_58276�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_31_layer_call_and_return_conditional_losses_58287�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,@@2conv3d_32/kernel
:@2conv3d_32/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_32_layer_call_fn_58296�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_32_layer_call_and_return_conditional_losses_58307�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_max_pooling3d_6_layer_call_fn_58312�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_58317�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/:-@�2conv3d_33/kernel
:�2conv3d_33/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_33_layer_call_fn_58326�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_33_layer_call_and_return_conditional_losses_58337�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0:.��2conv3d_34/kernel
:�2conv3d_34/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_34_layer_call_fn_58346�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_34_layer_call_and_return_conditional_losses_58357�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_max_pooling3d_7_layer_call_fn_58362�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_58367�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0:.��2conv3d_35/kernel
:�2conv3d_35/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_35_layer_call_fn_58376�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_35_layer_call_and_return_conditional_losses_58387�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0:.��2conv3d_36/kernel
:�2conv3d_36/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_36_layer_call_fn_58396�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_36_layer_call_and_return_conditional_losses_58407�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
9:7��2conv3d_transpose_4/kernel
&:$�2conv3d_transpose_4/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
2__inference_conv3d_transpose_4_layer_call_fn_58416�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_58457�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0:.��2conv3d_37/kernel
:�2conv3d_37/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_37_layer_call_fn_58466�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_37_layer_call_and_return_conditional_losses_58477�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_concatenate_4_layer_call_fn_58483�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_concatenate_4_layer_call_and_return_conditional_losses_58490�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0:.��2conv3d_38/kernel
:�2conv3d_38/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_38_layer_call_fn_58499�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_38_layer_call_and_return_conditional_losses_58510�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0:.��2conv3d_39/kernel
:�2conv3d_39/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_39_layer_call_fn_58519�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_39_layer_call_and_return_conditional_losses_58530�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0:.��2conv3d_40/kernel
:�2conv3d_40/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_40_layer_call_fn_58539�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_40_layer_call_and_return_conditional_losses_58550�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
8:6@�2conv3d_transpose_5/kernel
%:#@2conv3d_transpose_5/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
2__inference_conv3d_transpose_5_layer_call_fn_58559�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_58594�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,@@2conv3d_41/kernel
:@2conv3d_41/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_41_layer_call_fn_58603�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_41_layer_call_and_return_conditional_losses_58614�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_concatenate_5_layer_call_fn_58620�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_concatenate_5_layer_call_and_return_conditional_losses_58627�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/:-�@2conv3d_42/kernel
:@2conv3d_42/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_42_layer_call_fn_58636�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_42_layer_call_and_return_conditional_losses_58647�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,@@2conv3d_43/kernel
:@2conv3d_43/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_43_layer_call_fn_58656�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_43_layer_call_and_return_conditional_losses_58667�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,@@2conv3d_44/kernel
:@2conv3d_44/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_44_layer_call_fn_58676�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_44_layer_call_and_return_conditional_losses_58687�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
7:5 @2conv3d_transpose_6/kernel
%:# 2conv3d_transpose_6/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
2__inference_conv3d_transpose_6_layer_call_fn_58696�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_58731�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,  2conv3d_45/kernel
: 2conv3d_45/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_45_layer_call_fn_58740�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_45_layer_call_and_return_conditional_losses_58751�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_concatenate_6_layer_call_fn_58757�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_concatenate_6_layer_call_and_return_conditional_losses_58764�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,@ 2conv3d_46/kernel
: 2conv3d_46/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_46_layer_call_fn_58773�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_46_layer_call_and_return_conditional_losses_58784�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,  2conv3d_47/kernel
: 2conv3d_47/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_47_layer_call_fn_58793�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_47_layer_call_and_return_conditional_losses_58804�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,  2conv3d_48/kernel
: 2conv3d_48/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_48_layer_call_fn_58813�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_48_layer_call_and_return_conditional_losses_58824�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
7:5 2conv3d_transpose_7/kernel
%:#2conv3d_transpose_7/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
2__inference_conv3d_transpose_7_layer_call_fn_58833�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_58868�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,2conv3d_49/kernel
:2conv3d_49/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_49_layer_call_fn_58877�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_49_layer_call_and_return_conditional_losses_58888�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_concatenate_7_layer_call_fn_58894�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_concatenate_7_layer_call_and_return_conditional_losses_58901�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:, 2conv3d_50/kernel
:2conv3d_50/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_50_layer_call_fn_58910�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_50_layer_call_and_return_conditional_losses_58921�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,2conv3d_51/kernel
:2conv3d_51/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_51_layer_call_fn_58930�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_51_layer_call_and_return_conditional_losses_58941�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,2conv3d_52/kernel
:2conv3d_52/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_52_layer_call_fn_58950�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_52_layer_call_and_return_conditional_losses_58961�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_cropping3d_1_layer_call_fn_58966�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_58974�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,2conv3d_53/kernel
:2conv3d_53/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_53_layer_call_fn_58983�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_53_layer_call_and_return_conditional_losses_58993�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
�
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
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_signature_wrapper_58156input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
3:12Adam/conv3d_27/kernel/m
!:2Adam/conv3d_27/bias/m
3:12Adam/conv3d_28/kernel/m
!:2Adam/conv3d_28/bias/m
3:1 2Adam/conv3d_29/kernel/m
!: 2Adam/conv3d_29/bias/m
3:1  2Adam/conv3d_30/kernel/m
!: 2Adam/conv3d_30/bias/m
3:1 @2Adam/conv3d_31/kernel/m
!:@2Adam/conv3d_31/bias/m
3:1@@2Adam/conv3d_32/kernel/m
!:@2Adam/conv3d_32/bias/m
4:2@�2Adam/conv3d_33/kernel/m
": �2Adam/conv3d_33/bias/m
5:3��2Adam/conv3d_34/kernel/m
": �2Adam/conv3d_34/bias/m
5:3��2Adam/conv3d_35/kernel/m
": �2Adam/conv3d_35/bias/m
5:3��2Adam/conv3d_36/kernel/m
": �2Adam/conv3d_36/bias/m
>:<��2 Adam/conv3d_transpose_4/kernel/m
+:)�2Adam/conv3d_transpose_4/bias/m
5:3��2Adam/conv3d_37/kernel/m
": �2Adam/conv3d_37/bias/m
5:3��2Adam/conv3d_38/kernel/m
": �2Adam/conv3d_38/bias/m
5:3��2Adam/conv3d_39/kernel/m
": �2Adam/conv3d_39/bias/m
5:3��2Adam/conv3d_40/kernel/m
": �2Adam/conv3d_40/bias/m
=:;@�2 Adam/conv3d_transpose_5/kernel/m
*:(@2Adam/conv3d_transpose_5/bias/m
3:1@@2Adam/conv3d_41/kernel/m
!:@2Adam/conv3d_41/bias/m
4:2�@2Adam/conv3d_42/kernel/m
!:@2Adam/conv3d_42/bias/m
3:1@@2Adam/conv3d_43/kernel/m
!:@2Adam/conv3d_43/bias/m
3:1@@2Adam/conv3d_44/kernel/m
!:@2Adam/conv3d_44/bias/m
<:: @2 Adam/conv3d_transpose_6/kernel/m
*:( 2Adam/conv3d_transpose_6/bias/m
3:1  2Adam/conv3d_45/kernel/m
!: 2Adam/conv3d_45/bias/m
3:1@ 2Adam/conv3d_46/kernel/m
!: 2Adam/conv3d_46/bias/m
3:1  2Adam/conv3d_47/kernel/m
!: 2Adam/conv3d_47/bias/m
3:1  2Adam/conv3d_48/kernel/m
!: 2Adam/conv3d_48/bias/m
<:: 2 Adam/conv3d_transpose_7/kernel/m
*:(2Adam/conv3d_transpose_7/bias/m
3:12Adam/conv3d_49/kernel/m
!:2Adam/conv3d_49/bias/m
3:1 2Adam/conv3d_50/kernel/m
!:2Adam/conv3d_50/bias/m
3:12Adam/conv3d_51/kernel/m
!:2Adam/conv3d_51/bias/m
3:12Adam/conv3d_52/kernel/m
!:2Adam/conv3d_52/bias/m
3:12Adam/conv3d_53/kernel/m
!:2Adam/conv3d_53/bias/m
3:12Adam/conv3d_27/kernel/v
!:2Adam/conv3d_27/bias/v
3:12Adam/conv3d_28/kernel/v
!:2Adam/conv3d_28/bias/v
3:1 2Adam/conv3d_29/kernel/v
!: 2Adam/conv3d_29/bias/v
3:1  2Adam/conv3d_30/kernel/v
!: 2Adam/conv3d_30/bias/v
3:1 @2Adam/conv3d_31/kernel/v
!:@2Adam/conv3d_31/bias/v
3:1@@2Adam/conv3d_32/kernel/v
!:@2Adam/conv3d_32/bias/v
4:2@�2Adam/conv3d_33/kernel/v
": �2Adam/conv3d_33/bias/v
5:3��2Adam/conv3d_34/kernel/v
": �2Adam/conv3d_34/bias/v
5:3��2Adam/conv3d_35/kernel/v
": �2Adam/conv3d_35/bias/v
5:3��2Adam/conv3d_36/kernel/v
": �2Adam/conv3d_36/bias/v
>:<��2 Adam/conv3d_transpose_4/kernel/v
+:)�2Adam/conv3d_transpose_4/bias/v
5:3��2Adam/conv3d_37/kernel/v
": �2Adam/conv3d_37/bias/v
5:3��2Adam/conv3d_38/kernel/v
": �2Adam/conv3d_38/bias/v
5:3��2Adam/conv3d_39/kernel/v
": �2Adam/conv3d_39/bias/v
5:3��2Adam/conv3d_40/kernel/v
": �2Adam/conv3d_40/bias/v
=:;@�2 Adam/conv3d_transpose_5/kernel/v
*:(@2Adam/conv3d_transpose_5/bias/v
3:1@@2Adam/conv3d_41/kernel/v
!:@2Adam/conv3d_41/bias/v
4:2�@2Adam/conv3d_42/kernel/v
!:@2Adam/conv3d_42/bias/v
3:1@@2Adam/conv3d_43/kernel/v
!:@2Adam/conv3d_43/bias/v
3:1@@2Adam/conv3d_44/kernel/v
!:@2Adam/conv3d_44/bias/v
<:: @2 Adam/conv3d_transpose_6/kernel/v
*:( 2Adam/conv3d_transpose_6/bias/v
3:1  2Adam/conv3d_45/kernel/v
!: 2Adam/conv3d_45/bias/v
3:1@ 2Adam/conv3d_46/kernel/v
!: 2Adam/conv3d_46/bias/v
3:1  2Adam/conv3d_47/kernel/v
!: 2Adam/conv3d_47/bias/v
3:1  2Adam/conv3d_48/kernel/v
!: 2Adam/conv3d_48/bias/v
<:: 2 Adam/conv3d_transpose_7/kernel/v
*:(2Adam/conv3d_transpose_7/bias/v
3:12Adam/conv3d_49/kernel/v
!:2Adam/conv3d_49/bias/v
3:1 2Adam/conv3d_50/kernel/v
!:2Adam/conv3d_50/bias/v
3:12Adam/conv3d_51/kernel/v
!:2Adam/conv3d_51/bias/v
3:12Adam/conv3d_52/kernel/v
!:2Adam/conv3d_52/bias/v
3:12Adam/conv3d_53/kernel/v
!:2Adam/conv3d_53/bias/v�
 __inference__wrapped_model_54968�n;<CDQRYZghop}~������������������������������������������������W�T
M�J
H�E
input_28������������������������������������
� "\�Y
W
	conv3d_53J�G
	conv3d_538�������������������������������������
H__inference_concatenate_4_layer_call_and_return_conditional_losses_58490����
���
���
J�G
inputs/09�������������������������������������
J�G
inputs/19�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
-__inference_concatenate_4_layer_call_fn_58483����
���
���
J�G
inputs/09�������������������������������������
J�G
inputs/19�������������������������������������
� "@�=9��������������������������������������
H__inference_concatenate_5_layer_call_and_return_conditional_losses_58627����
���
���
I�F
inputs/08������������������������������������@
I�F
inputs/18������������������������������������@
� "M�J
C�@
09�������������������������������������
� �
-__inference_concatenate_5_layer_call_fn_58620����
���
���
I�F
inputs/08������������������������������������@
I�F
inputs/18������������������������������������@
� "@�=9��������������������������������������
H__inference_concatenate_6_layer_call_and_return_conditional_losses_58764����
���
���
I�F
inputs/08������������������������������������ 
I�F
inputs/18������������������������������������ 
� "L�I
B�?
08������������������������������������@
� �
-__inference_concatenate_6_layer_call_fn_58757����
���
���
I�F
inputs/08������������������������������������ 
I�F
inputs/18������������������������������������ 
� "?�<8������������������������������������@�
H__inference_concatenate_7_layer_call_and_return_conditional_losses_58901����
���
���
I�F
inputs/08������������������������������������
I�F
inputs/18������������������������������������
� "L�I
B�?
08������������������������������������ 
� �
-__inference_concatenate_7_layer_call_fn_58894����
���
���
I�F
inputs/08������������������������������������
I�F
inputs/18������������������������������������
� "?�<8������������������������������������ �
D__inference_conv3d_27_layer_call_and_return_conditional_losses_58187�;<V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
)__inference_conv3d_27_layer_call_fn_58176�;<V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
D__inference_conv3d_28_layer_call_and_return_conditional_losses_58207�CDV�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
)__inference_conv3d_28_layer_call_fn_58196�CDV�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
D__inference_conv3d_29_layer_call_and_return_conditional_losses_58237�QRV�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������ 
� �
)__inference_conv3d_29_layer_call_fn_58226�QRV�S
L�I
G�D
inputs8������������������������������������
� "?�<8������������������������������������ �
D__inference_conv3d_30_layer_call_and_return_conditional_losses_58257�YZV�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
)__inference_conv3d_30_layer_call_fn_58246�YZV�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
D__inference_conv3d_31_layer_call_and_return_conditional_losses_58287�ghV�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������@
� �
)__inference_conv3d_31_layer_call_fn_58276�ghV�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������@�
D__inference_conv3d_32_layer_call_and_return_conditional_losses_58307�opV�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
)__inference_conv3d_32_layer_call_fn_58296�opV�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
D__inference_conv3d_33_layer_call_and_return_conditional_losses_58337�}~V�S
L�I
G�D
inputs8������������������������������������@
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_33_layer_call_fn_58326�}~V�S
L�I
G�D
inputs8������������������������������������@
� "@�=9��������������������������������������
D__inference_conv3d_34_layer_call_and_return_conditional_losses_58357���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_34_layer_call_fn_58346���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
D__inference_conv3d_35_layer_call_and_return_conditional_losses_58387���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_35_layer_call_fn_58376���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
D__inference_conv3d_36_layer_call_and_return_conditional_losses_58407���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_36_layer_call_fn_58396���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
D__inference_conv3d_37_layer_call_and_return_conditional_losses_58477���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_37_layer_call_fn_58466���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
D__inference_conv3d_38_layer_call_and_return_conditional_losses_58510���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_38_layer_call_fn_58499���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
D__inference_conv3d_39_layer_call_and_return_conditional_losses_58530���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_39_layer_call_fn_58519���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
D__inference_conv3d_40_layer_call_and_return_conditional_losses_58550���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
)__inference_conv3d_40_layer_call_fn_58539���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
D__inference_conv3d_41_layer_call_and_return_conditional_losses_58614���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
)__inference_conv3d_41_layer_call_fn_58603���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
D__inference_conv3d_42_layer_call_and_return_conditional_losses_58647���W�T
M�J
H�E
inputs9�������������������������������������
� "L�I
B�?
08������������������������������������@
� �
)__inference_conv3d_42_layer_call_fn_58636���W�T
M�J
H�E
inputs9�������������������������������������
� "?�<8������������������������������������@�
D__inference_conv3d_43_layer_call_and_return_conditional_losses_58667���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
)__inference_conv3d_43_layer_call_fn_58656���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
D__inference_conv3d_44_layer_call_and_return_conditional_losses_58687���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
)__inference_conv3d_44_layer_call_fn_58676���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
D__inference_conv3d_45_layer_call_and_return_conditional_losses_58751���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
)__inference_conv3d_45_layer_call_fn_58740���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
D__inference_conv3d_46_layer_call_and_return_conditional_losses_58784���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������ 
� �
)__inference_conv3d_46_layer_call_fn_58773���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������ �
D__inference_conv3d_47_layer_call_and_return_conditional_losses_58804���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
)__inference_conv3d_47_layer_call_fn_58793���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
D__inference_conv3d_48_layer_call_and_return_conditional_losses_58824���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
)__inference_conv3d_48_layer_call_fn_58813���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
D__inference_conv3d_49_layer_call_and_return_conditional_losses_58888���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
)__inference_conv3d_49_layer_call_fn_58877���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
D__inference_conv3d_50_layer_call_and_return_conditional_losses_58921���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������
� �
)__inference_conv3d_50_layer_call_fn_58910���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8�������������������������������������
D__inference_conv3d_51_layer_call_and_return_conditional_losses_58941���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
)__inference_conv3d_51_layer_call_fn_58930���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
D__inference_conv3d_52_layer_call_and_return_conditional_losses_58961���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
)__inference_conv3d_52_layer_call_fn_58950���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
D__inference_conv3d_53_layer_call_and_return_conditional_losses_58993���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
)__inference_conv3d_53_layer_call_fn_58983���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
M__inference_conv3d_transpose_4_layer_call_and_return_conditional_losses_58457���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
2__inference_conv3d_transpose_4_layer_call_fn_58416���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
M__inference_conv3d_transpose_5_layer_call_and_return_conditional_losses_58594���W�T
M�J
H�E
inputs9�������������������������������������
� "L�I
B�?
08������������������������������������@
� �
2__inference_conv3d_transpose_5_layer_call_fn_58559���W�T
M�J
H�E
inputs9�������������������������������������
� "?�<8������������������������������������@�
M__inference_conv3d_transpose_6_layer_call_and_return_conditional_losses_58731���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������ 
� �
2__inference_conv3d_transpose_6_layer_call_fn_58696���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������ �
M__inference_conv3d_transpose_7_layer_call_and_return_conditional_losses_58868���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������
� �
2__inference_conv3d_transpose_7_layer_call_fn_58833���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8�������������������������������������
G__inference_cropping3d_1_layer_call_and_return_conditional_losses_58974�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
,__inference_cropping3d_1_layer_call_fn_58966�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
J__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_58217�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
/__inference_max_pooling3d_4_layer_call_fn_58212�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
J__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_58267�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
/__inference_max_pooling3d_5_layer_call_fn_58262�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
J__inference_max_pooling3d_6_layer_call_and_return_conditional_losses_58317�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
/__inference_max_pooling3d_6_layer_call_fn_58312�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
J__inference_max_pooling3d_7_layer_call_and_return_conditional_losses_58367�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
/__inference_max_pooling3d_7_layer_call_fn_58362�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
B__inference_model_1_layer_call_and_return_conditional_losses_56912�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_28������������������������������������
p 

 
� "L�I
B�?
08������������������������������������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_57081�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_28������������������������������������
p

 
� "L�I
B�?
08������������������������������������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_57685�n;<CDQRYZghop}~������������������������������������������������^�[
T�Q
G�D
inputs8������������������������������������
p 

 
� "L�I
B�?
08������������������������������������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_58025�n;<CDQRYZghop}~������������������������������������������������^�[
T�Q
G�D
inputs8������������������������������������
p

 
� "L�I
B�?
08������������������������������������
� �
'__inference_model_1_layer_call_fn_55889�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_28������������������������������������
p 

 
� "?�<8�������������������������������������
'__inference_model_1_layer_call_fn_56743�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_28������������������������������������
p

 
� "?�<8�������������������������������������
'__inference_model_1_layer_call_fn_57216�n;<CDQRYZghop}~������������������������������������������������^�[
T�Q
G�D
inputs8������������������������������������
p 

 
� "?�<8�������������������������������������
'__inference_model_1_layer_call_fn_57345�n;<CDQRYZghop}~������������������������������������������������^�[
T�Q
G�D
inputs8������������������������������������
p

 
� "?�<8�������������������������������������
#__inference_signature_wrapper_58156�n;<CDQRYZghop}~������������������������������������������������b�_
� 
X�U
S
input_2H�E
input_28������������������������������������"\�Y
W
	conv3d_53J�G
	conv3d_538�������������������������������������
K__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_58167�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
0__inference_zero_padding3d_1_layer_call_fn_58161�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA���������������������������������������������