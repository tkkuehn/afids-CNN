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
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��/
�
conv3d_189/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_189/kernel
�
%conv3d_189/kernel/Read/ReadVariableOpReadVariableOpconv3d_189/kernel**
_output_shapes
:*
dtype0
v
conv3d_189/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_189/bias
o
#conv3d_189/bias/Read/ReadVariableOpReadVariableOpconv3d_189/bias*
_output_shapes
:*
dtype0
�
conv3d_190/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_190/kernel
�
%conv3d_190/kernel/Read/ReadVariableOpReadVariableOpconv3d_190/kernel**
_output_shapes
:*
dtype0
v
conv3d_190/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_190/bias
o
#conv3d_190/bias/Read/ReadVariableOpReadVariableOpconv3d_190/bias*
_output_shapes
:*
dtype0
�
conv3d_191/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_191/kernel
�
%conv3d_191/kernel/Read/ReadVariableOpReadVariableOpconv3d_191/kernel**
_output_shapes
: *
dtype0
v
conv3d_191/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_191/bias
o
#conv3d_191/bias/Read/ReadVariableOpReadVariableOpconv3d_191/bias*
_output_shapes
: *
dtype0
�
conv3d_192/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_192/kernel
�
%conv3d_192/kernel/Read/ReadVariableOpReadVariableOpconv3d_192/kernel**
_output_shapes
:  *
dtype0
v
conv3d_192/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_192/bias
o
#conv3d_192/bias/Read/ReadVariableOpReadVariableOpconv3d_192/bias*
_output_shapes
: *
dtype0
�
conv3d_193/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv3d_193/kernel
�
%conv3d_193/kernel/Read/ReadVariableOpReadVariableOpconv3d_193/kernel**
_output_shapes
: @*
dtype0
v
conv3d_193/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_193/bias
o
#conv3d_193/bias/Read/ReadVariableOpReadVariableOpconv3d_193/bias*
_output_shapes
:@*
dtype0
�
conv3d_194/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_194/kernel
�
%conv3d_194/kernel/Read/ReadVariableOpReadVariableOpconv3d_194/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_194/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_194/bias
o
#conv3d_194/bias/Read/ReadVariableOpReadVariableOpconv3d_194/bias*
_output_shapes
:@*
dtype0
�
conv3d_195/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*"
shared_nameconv3d_195/kernel
�
%conv3d_195/kernel/Read/ReadVariableOpReadVariableOpconv3d_195/kernel*+
_output_shapes
:@�*
dtype0
w
conv3d_195/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_195/bias
p
#conv3d_195/bias/Read/ReadVariableOpReadVariableOpconv3d_195/bias*
_output_shapes	
:�*
dtype0
�
conv3d_196/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*"
shared_nameconv3d_196/kernel
�
%conv3d_196/kernel/Read/ReadVariableOpReadVariableOpconv3d_196/kernel*,
_output_shapes
:��*
dtype0
w
conv3d_196/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_196/bias
p
#conv3d_196/bias/Read/ReadVariableOpReadVariableOpconv3d_196/bias*
_output_shapes	
:�*
dtype0
�
conv3d_197/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*"
shared_nameconv3d_197/kernel
�
%conv3d_197/kernel/Read/ReadVariableOpReadVariableOpconv3d_197/kernel*,
_output_shapes
:��*
dtype0
w
conv3d_197/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_197/bias
p
#conv3d_197/bias/Read/ReadVariableOpReadVariableOpconv3d_197/bias*
_output_shapes	
:�*
dtype0
�
conv3d_198/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*"
shared_nameconv3d_198/kernel
�
%conv3d_198/kernel/Read/ReadVariableOpReadVariableOpconv3d_198/kernel*,
_output_shapes
:��*
dtype0
w
conv3d_198/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_198/bias
p
#conv3d_198/bias/Read/ReadVariableOpReadVariableOpconv3d_198/bias*
_output_shapes	
:�*
dtype0
�
conv3d_transpose_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*+
shared_nameconv3d_transpose_28/kernel
�
.conv3d_transpose_28/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_28/kernel*,
_output_shapes
:��*
dtype0
�
conv3d_transpose_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameconv3d_transpose_28/bias
�
,conv3d_transpose_28/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_28/bias*
_output_shapes	
:�*
dtype0
�
conv3d_199/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*"
shared_nameconv3d_199/kernel
�
%conv3d_199/kernel/Read/ReadVariableOpReadVariableOpconv3d_199/kernel*,
_output_shapes
:��*
dtype0
w
conv3d_199/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_199/bias
p
#conv3d_199/bias/Read/ReadVariableOpReadVariableOpconv3d_199/bias*
_output_shapes	
:�*
dtype0
�
conv3d_200/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*"
shared_nameconv3d_200/kernel
�
%conv3d_200/kernel/Read/ReadVariableOpReadVariableOpconv3d_200/kernel*,
_output_shapes
:��*
dtype0
w
conv3d_200/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_200/bias
p
#conv3d_200/bias/Read/ReadVariableOpReadVariableOpconv3d_200/bias*
_output_shapes	
:�*
dtype0
�
conv3d_201/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*"
shared_nameconv3d_201/kernel
�
%conv3d_201/kernel/Read/ReadVariableOpReadVariableOpconv3d_201/kernel*,
_output_shapes
:��*
dtype0
w
conv3d_201/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_201/bias
p
#conv3d_201/bias/Read/ReadVariableOpReadVariableOpconv3d_201/bias*
_output_shapes	
:�*
dtype0
�
conv3d_202/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*"
shared_nameconv3d_202/kernel
�
%conv3d_202/kernel/Read/ReadVariableOpReadVariableOpconv3d_202/kernel*,
_output_shapes
:��*
dtype0
w
conv3d_202/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv3d_202/bias
p
#conv3d_202/bias/Read/ReadVariableOpReadVariableOpconv3d_202/bias*
_output_shapes	
:�*
dtype0
�
conv3d_transpose_29/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*+
shared_nameconv3d_transpose_29/kernel
�
.conv3d_transpose_29/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_29/kernel*+
_output_shapes
:@�*
dtype0
�
conv3d_transpose_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv3d_transpose_29/bias
�
,conv3d_transpose_29/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_29/bias*
_output_shapes
:@*
dtype0
�
conv3d_203/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_203/kernel
�
%conv3d_203/kernel/Read/ReadVariableOpReadVariableOpconv3d_203/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_203/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_203/bias
o
#conv3d_203/bias/Read/ReadVariableOpReadVariableOpconv3d_203/bias*
_output_shapes
:@*
dtype0
�
conv3d_204/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:�@*"
shared_nameconv3d_204/kernel
�
%conv3d_204/kernel/Read/ReadVariableOpReadVariableOpconv3d_204/kernel*+
_output_shapes
:�@*
dtype0
v
conv3d_204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_204/bias
o
#conv3d_204/bias/Read/ReadVariableOpReadVariableOpconv3d_204/bias*
_output_shapes
:@*
dtype0
�
conv3d_205/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_205/kernel
�
%conv3d_205/kernel/Read/ReadVariableOpReadVariableOpconv3d_205/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_205/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_205/bias
o
#conv3d_205/bias/Read/ReadVariableOpReadVariableOpconv3d_205/bias*
_output_shapes
:@*
dtype0
�
conv3d_206/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_206/kernel
�
%conv3d_206/kernel/Read/ReadVariableOpReadVariableOpconv3d_206/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_206/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_206/bias
o
#conv3d_206/bias/Read/ReadVariableOpReadVariableOpconv3d_206/bias*
_output_shapes
:@*
dtype0
�
conv3d_transpose_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv3d_transpose_30/kernel
�
.conv3d_transpose_30/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_30/kernel**
_output_shapes
: @*
dtype0
�
conv3d_transpose_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv3d_transpose_30/bias
�
,conv3d_transpose_30/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_30/bias*
_output_shapes
: *
dtype0
�
conv3d_207/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_207/kernel
�
%conv3d_207/kernel/Read/ReadVariableOpReadVariableOpconv3d_207/kernel**
_output_shapes
:  *
dtype0
v
conv3d_207/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_207/bias
o
#conv3d_207/bias/Read/ReadVariableOpReadVariableOpconv3d_207/bias*
_output_shapes
: *
dtype0
�
conv3d_208/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv3d_208/kernel
�
%conv3d_208/kernel/Read/ReadVariableOpReadVariableOpconv3d_208/kernel**
_output_shapes
:@ *
dtype0
v
conv3d_208/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_208/bias
o
#conv3d_208/bias/Read/ReadVariableOpReadVariableOpconv3d_208/bias*
_output_shapes
: *
dtype0
�
conv3d_209/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_209/kernel
�
%conv3d_209/kernel/Read/ReadVariableOpReadVariableOpconv3d_209/kernel**
_output_shapes
:  *
dtype0
v
conv3d_209/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_209/bias
o
#conv3d_209/bias/Read/ReadVariableOpReadVariableOpconv3d_209/bias*
_output_shapes
: *
dtype0
�
conv3d_210/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_210/kernel
�
%conv3d_210/kernel/Read/ReadVariableOpReadVariableOpconv3d_210/kernel**
_output_shapes
:  *
dtype0
v
conv3d_210/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_210/bias
o
#conv3d_210/bias/Read/ReadVariableOpReadVariableOpconv3d_210/bias*
_output_shapes
: *
dtype0
�
conv3d_transpose_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv3d_transpose_31/kernel
�
.conv3d_transpose_31/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_31/kernel**
_output_shapes
: *
dtype0
�
conv3d_transpose_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv3d_transpose_31/bias
�
,conv3d_transpose_31/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_31/bias*
_output_shapes
:*
dtype0
�
conv3d_211/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_211/kernel
�
%conv3d_211/kernel/Read/ReadVariableOpReadVariableOpconv3d_211/kernel**
_output_shapes
:*
dtype0
v
conv3d_211/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_211/bias
o
#conv3d_211/bias/Read/ReadVariableOpReadVariableOpconv3d_211/bias*
_output_shapes
:*
dtype0
�
conv3d_212/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_212/kernel
�
%conv3d_212/kernel/Read/ReadVariableOpReadVariableOpconv3d_212/kernel**
_output_shapes
: *
dtype0
v
conv3d_212/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_212/bias
o
#conv3d_212/bias/Read/ReadVariableOpReadVariableOpconv3d_212/bias*
_output_shapes
:*
dtype0
�
conv3d_213/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_213/kernel
�
%conv3d_213/kernel/Read/ReadVariableOpReadVariableOpconv3d_213/kernel**
_output_shapes
:*
dtype0
v
conv3d_213/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_213/bias
o
#conv3d_213/bias/Read/ReadVariableOpReadVariableOpconv3d_213/bias*
_output_shapes
:*
dtype0
�
conv3d_214/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_214/kernel
�
%conv3d_214/kernel/Read/ReadVariableOpReadVariableOpconv3d_214/kernel**
_output_shapes
:*
dtype0
v
conv3d_214/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_214/bias
o
#conv3d_214/bias/Read/ReadVariableOpReadVariableOpconv3d_214/bias*
_output_shapes
:*
dtype0
�
conv3d_215/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_215/kernel
�
%conv3d_215/kernel/Read/ReadVariableOpReadVariableOpconv3d_215/kernel**
_output_shapes
:*
dtype0
v
conv3d_215/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_215/bias
o
#conv3d_215/bias/Read/ReadVariableOpReadVariableOpconv3d_215/bias*
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
Adam/conv3d_189/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_189/kernel/m
�
,Adam/conv3d_189/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_189/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_189/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_189/bias/m
}
*Adam/conv3d_189/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_189/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_190/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_190/kernel/m
�
,Adam/conv3d_190/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_190/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_190/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_190/bias/m
}
*Adam/conv3d_190/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_190/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_191/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_191/kernel/m
�
,Adam/conv3d_191/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_191/kernel/m**
_output_shapes
: *
dtype0
�
Adam/conv3d_191/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_191/bias/m
}
*Adam/conv3d_191/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_191/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_192/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_192/kernel/m
�
,Adam/conv3d_192/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_192/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_192/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_192/bias/m
}
*Adam/conv3d_192/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_192/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_193/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_193/kernel/m
�
,Adam/conv3d_193/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_193/kernel/m**
_output_shapes
: @*
dtype0
�
Adam/conv3d_193/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_193/bias/m
}
*Adam/conv3d_193/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_193/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_194/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_194/kernel/m
�
,Adam/conv3d_194/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_194/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_194/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_194/bias/m
}
*Adam/conv3d_194/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_194/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_195/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*)
shared_nameAdam/conv3d_195/kernel/m
�
,Adam/conv3d_195/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_195/kernel/m*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_195/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_195/bias/m
~
*Adam/conv3d_195/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_195/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_196/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_196/kernel/m
�
,Adam/conv3d_196/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_196/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_196/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_196/bias/m
~
*Adam/conv3d_196/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_196/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_197/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_197/kernel/m
�
,Adam/conv3d_197/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_197/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_197/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_197/bias/m
~
*Adam/conv3d_197/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_197/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_198/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_198/kernel/m
�
,Adam/conv3d_198/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_198/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_198/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_198/bias/m
~
*Adam/conv3d_198/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_198/bias/m*
_output_shapes	
:�*
dtype0
�
!Adam/conv3d_transpose_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*2
shared_name#!Adam/conv3d_transpose_28/kernel/m
�
5Adam/conv3d_transpose_28/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_28/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_transpose_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!Adam/conv3d_transpose_28/bias/m
�
3Adam/conv3d_transpose_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_28/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_199/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_199/kernel/m
�
,Adam/conv3d_199/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_199/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_199/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_199/bias/m
~
*Adam/conv3d_199/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_199/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_200/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_200/kernel/m
�
,Adam/conv3d_200/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_200/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_200/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_200/bias/m
~
*Adam/conv3d_200/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_200/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_201/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_201/kernel/m
�
,Adam/conv3d_201/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_201/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_201/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_201/bias/m
~
*Adam/conv3d_201/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_201/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_202/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_202/kernel/m
�
,Adam/conv3d_202/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_202/kernel/m*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_202/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_202/bias/m
~
*Adam/conv3d_202/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_202/bias/m*
_output_shapes	
:�*
dtype0
�
!Adam/conv3d_transpose_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*2
shared_name#!Adam/conv3d_transpose_29/kernel/m
�
5Adam/conv3d_transpose_29/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_29/kernel/m*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_transpose_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_29/bias/m
�
3Adam/conv3d_transpose_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_29/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_203/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_203/kernel/m
�
,Adam/conv3d_203/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_203/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_203/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_203/bias/m
}
*Adam/conv3d_203/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_203/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:�@*)
shared_nameAdam/conv3d_204/kernel/m
�
,Adam/conv3d_204/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_204/kernel/m*+
_output_shapes
:�@*
dtype0
�
Adam/conv3d_204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_204/bias/m
}
*Adam/conv3d_204/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_204/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_205/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_205/kernel/m
�
,Adam/conv3d_205/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_205/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_205/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_205/bias/m
}
*Adam/conv3d_205/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_205/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv3d_206/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_206/kernel/m
�
,Adam/conv3d_206/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_206/kernel/m**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_206/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_206/bias/m
}
*Adam/conv3d_206/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_206/bias/m*
_output_shapes
:@*
dtype0
�
!Adam/conv3d_transpose_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_30/kernel/m
�
5Adam/conv3d_transpose_30/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_30/kernel/m**
_output_shapes
: @*
dtype0
�
Adam/conv3d_transpose_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_30/bias/m
�
3Adam/conv3d_transpose_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_30/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_207/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_207/kernel/m
�
,Adam/conv3d_207/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_207/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_207/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_207/bias/m
}
*Adam/conv3d_207/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_207/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_208/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_208/kernel/m
�
,Adam/conv3d_208/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_208/kernel/m**
_output_shapes
:@ *
dtype0
�
Adam/conv3d_208/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_208/bias/m
}
*Adam/conv3d_208/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_208/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_209/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_209/kernel/m
�
,Adam/conv3d_209/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_209/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_209/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_209/bias/m
}
*Adam/conv3d_209/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_209/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv3d_210/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_210/kernel/m
�
,Adam/conv3d_210/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_210/kernel/m**
_output_shapes
:  *
dtype0
�
Adam/conv3d_210/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_210/bias/m
}
*Adam/conv3d_210/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_210/bias/m*
_output_shapes
: *
dtype0
�
!Adam/conv3d_transpose_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_31/kernel/m
�
5Adam/conv3d_transpose_31/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_31/kernel/m**
_output_shapes
: *
dtype0
�
Adam/conv3d_transpose_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_31/bias/m
�
3Adam/conv3d_transpose_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_31/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_211/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_211/kernel/m
�
,Adam/conv3d_211/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_211/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_211/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_211/bias/m
}
*Adam/conv3d_211/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_211/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_212/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_212/kernel/m
�
,Adam/conv3d_212/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_212/kernel/m**
_output_shapes
: *
dtype0
�
Adam/conv3d_212/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_212/bias/m
}
*Adam/conv3d_212/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_212/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_213/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_213/kernel/m
�
,Adam/conv3d_213/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_213/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_213/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_213/bias/m
}
*Adam/conv3d_213/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_213/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_214/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_214/kernel/m
�
,Adam/conv3d_214/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_214/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_214/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_214/bias/m
}
*Adam/conv3d_214/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_214/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_215/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_215/kernel/m
�
,Adam/conv3d_215/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_215/kernel/m**
_output_shapes
:*
dtype0
�
Adam/conv3d_215/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_215/bias/m
}
*Adam/conv3d_215/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_215/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv3d_189/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_189/kernel/v
�
,Adam/conv3d_189/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_189/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_189/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_189/bias/v
}
*Adam/conv3d_189/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_189/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_190/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_190/kernel/v
�
,Adam/conv3d_190/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_190/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_190/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_190/bias/v
}
*Adam/conv3d_190/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_190/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_191/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_191/kernel/v
�
,Adam/conv3d_191/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_191/kernel/v**
_output_shapes
: *
dtype0
�
Adam/conv3d_191/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_191/bias/v
}
*Adam/conv3d_191/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_191/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_192/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_192/kernel/v
�
,Adam/conv3d_192/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_192/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_192/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_192/bias/v
}
*Adam/conv3d_192/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_192/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_193/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_193/kernel/v
�
,Adam/conv3d_193/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_193/kernel/v**
_output_shapes
: @*
dtype0
�
Adam/conv3d_193/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_193/bias/v
}
*Adam/conv3d_193/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_193/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_194/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_194/kernel/v
�
,Adam/conv3d_194/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_194/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_194/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_194/bias/v
}
*Adam/conv3d_194/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_194/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_195/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*)
shared_nameAdam/conv3d_195/kernel/v
�
,Adam/conv3d_195/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_195/kernel/v*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_195/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_195/bias/v
~
*Adam/conv3d_195/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_195/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_196/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_196/kernel/v
�
,Adam/conv3d_196/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_196/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_196/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_196/bias/v
~
*Adam/conv3d_196/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_196/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_197/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_197/kernel/v
�
,Adam/conv3d_197/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_197/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_197/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_197/bias/v
~
*Adam/conv3d_197/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_197/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_198/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_198/kernel/v
�
,Adam/conv3d_198/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_198/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_198/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_198/bias/v
~
*Adam/conv3d_198/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_198/bias/v*
_output_shapes	
:�*
dtype0
�
!Adam/conv3d_transpose_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*2
shared_name#!Adam/conv3d_transpose_28/kernel/v
�
5Adam/conv3d_transpose_28/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_28/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_transpose_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!Adam/conv3d_transpose_28/bias/v
�
3Adam/conv3d_transpose_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_28/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_199/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_199/kernel/v
�
,Adam/conv3d_199/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_199/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_199/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_199/bias/v
~
*Adam/conv3d_199/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_199/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_200/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_200/kernel/v
�
,Adam/conv3d_200/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_200/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_200/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_200/bias/v
~
*Adam/conv3d_200/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_200/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_201/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_201/kernel/v
�
,Adam/conv3d_201/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_201/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_201/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_201/bias/v
~
*Adam/conv3d_201/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_201/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv3d_202/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*)
shared_nameAdam/conv3d_202/kernel/v
�
,Adam/conv3d_202/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_202/kernel/v*,
_output_shapes
:��*
dtype0
�
Adam/conv3d_202/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/conv3d_202/bias/v
~
*Adam/conv3d_202/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_202/bias/v*
_output_shapes	
:�*
dtype0
�
!Adam/conv3d_transpose_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*2
shared_name#!Adam/conv3d_transpose_29/kernel/v
�
5Adam/conv3d_transpose_29/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_29/kernel/v*+
_output_shapes
:@�*
dtype0
�
Adam/conv3d_transpose_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_29/bias/v
�
3Adam/conv3d_transpose_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_29/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_203/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_203/kernel/v
�
,Adam/conv3d_203/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_203/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_203/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_203/bias/v
}
*Adam/conv3d_203/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_203/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:�@*)
shared_nameAdam/conv3d_204/kernel/v
�
,Adam/conv3d_204/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_204/kernel/v*+
_output_shapes
:�@*
dtype0
�
Adam/conv3d_204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_204/bias/v
}
*Adam/conv3d_204/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_204/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_205/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_205/kernel/v
�
,Adam/conv3d_205/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_205/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_205/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_205/bias/v
}
*Adam/conv3d_205/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_205/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv3d_206/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_206/kernel/v
�
,Adam/conv3d_206/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_206/kernel/v**
_output_shapes
:@@*
dtype0
�
Adam/conv3d_206/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_206/bias/v
}
*Adam/conv3d_206/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_206/bias/v*
_output_shapes
:@*
dtype0
�
!Adam/conv3d_transpose_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_30/kernel/v
�
5Adam/conv3d_transpose_30/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_30/kernel/v**
_output_shapes
: @*
dtype0
�
Adam/conv3d_transpose_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_30/bias/v
�
3Adam/conv3d_transpose_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_30/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_207/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_207/kernel/v
�
,Adam/conv3d_207/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_207/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_207/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_207/bias/v
}
*Adam/conv3d_207/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_207/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_208/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_208/kernel/v
�
,Adam/conv3d_208/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_208/kernel/v**
_output_shapes
:@ *
dtype0
�
Adam/conv3d_208/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_208/bias/v
}
*Adam/conv3d_208/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_208/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_209/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_209/kernel/v
�
,Adam/conv3d_209/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_209/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_209/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_209/bias/v
}
*Adam/conv3d_209/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_209/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv3d_210/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_210/kernel/v
�
,Adam/conv3d_210/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_210/kernel/v**
_output_shapes
:  *
dtype0
�
Adam/conv3d_210/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_210/bias/v
}
*Adam/conv3d_210/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_210/bias/v*
_output_shapes
: *
dtype0
�
!Adam/conv3d_transpose_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_31/kernel/v
�
5Adam/conv3d_transpose_31/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_31/kernel/v**
_output_shapes
: *
dtype0
�
Adam/conv3d_transpose_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_31/bias/v
�
3Adam/conv3d_transpose_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_31/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_211/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_211/kernel/v
�
,Adam/conv3d_211/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_211/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_211/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_211/bias/v
}
*Adam/conv3d_211/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_211/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_212/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_212/kernel/v
�
,Adam/conv3d_212/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_212/kernel/v**
_output_shapes
: *
dtype0
�
Adam/conv3d_212/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_212/bias/v
}
*Adam/conv3d_212/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_212/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_213/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_213/kernel/v
�
,Adam/conv3d_213/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_213/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_213/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_213/bias/v
}
*Adam/conv3d_213/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_213/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_214/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_214/kernel/v
�
,Adam/conv3d_214/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_214/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_214/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_214/bias/v
}
*Adam/conv3d_214/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_214/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv3d_215/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_215/kernel/v
�
,Adam/conv3d_215/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_215/kernel/v**
_output_shapes
:*
dtype0
�
Adam/conv3d_215/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_215/bias/v
}
*Adam/conv3d_215/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_215/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ї
valueŇB�� B��
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
a[
VARIABLE_VALUEconv3d_189/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_189/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEconv3d_190/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_190/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEconv3d_191/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_191/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEconv3d_192/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_192/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEconv3d_193/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_193/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEconv3d_194/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_194/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEconv3d_195/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_195/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEconv3d_196/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_196/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_197/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_197/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_198/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_198/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUEconv3d_transpose_28/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_28/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_199/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_199/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_200/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_200/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_201/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_201/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_202/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_202/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUEconv3d_transpose_29/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_29/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_203/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_203/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_204/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_204/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_205/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_205/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_206/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_206/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUEconv3d_transpose_30/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_30/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_207/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_207/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_208/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_208/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_209/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_209/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_210/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_210/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUEconv3d_transpose_31/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_31/bias5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_211/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_211/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_212/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_212/bias5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_213/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_213/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_214/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_214/bias5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
b\
VARIABLE_VALUEconv3d_215/kernel7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_215/bias5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
�~
VARIABLE_VALUEAdam/conv3d_189/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_189/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_190/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_190/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_191/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_191/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_192/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_192/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_193/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_193/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_194/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_194/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_195/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_195/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_196/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_196/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_197/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_197/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_198/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_198/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_28/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_28/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_199/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_199/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_200/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_200/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_201/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_201/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_202/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_202/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_29/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_29/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_203/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_203/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_204/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_204/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_205/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_205/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_206/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_206/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_30/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_30/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_207/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_207/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_208/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_208/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_209/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_209/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_210/kernel/mSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_210/bias/mQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_31/kernel/mSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_31/bias/mQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_211/kernel/mSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_211/bias/mQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_212/kernel/mSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_212/bias/mQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_213/kernel/mSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_213/bias/mQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_214/kernel/mSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_214/bias/mQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_215/kernel/mSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_215/bias/mQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_189/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_189/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_190/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_190/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_191/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_191/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_192/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_192/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_193/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_193/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_194/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_194/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_195/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_195/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_196/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_196/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_197/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_197/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv3d_198/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv3d_198/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_28/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_28/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_199/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_199/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_200/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_200/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_201/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_201/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_202/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_202/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_29/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_29/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_203/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_203/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_204/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_204/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_205/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_205/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_206/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_206/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_30/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_30/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_207/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_207/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_208/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_208/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_209/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_209/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_210/kernel/vSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_210/bias/vQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/conv3d_transpose_31/kernel/vSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv3d_transpose_31/bias/vQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_211/kernel/vSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_211/bias/vQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_212/kernel/vSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_212/bias/vQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_213/kernel/vSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_213/bias/vQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_214/kernel/vSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_214/bias/vQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEAdam/conv3d_215/kernel/vSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/conv3d_215/bias/vQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_8Placeholder*N
_output_shapes<
::8������������������������������������*
dtype0*C
shape::8������������������������������������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8conv3d_189/kernelconv3d_189/biasconv3d_190/kernelconv3d_190/biasconv3d_191/kernelconv3d_191/biasconv3d_192/kernelconv3d_192/biasconv3d_193/kernelconv3d_193/biasconv3d_194/kernelconv3d_194/biasconv3d_195/kernelconv3d_195/biasconv3d_196/kernelconv3d_196/biasconv3d_197/kernelconv3d_197/biasconv3d_198/kernelconv3d_198/biasconv3d_transpose_28/kernelconv3d_transpose_28/biasconv3d_199/kernelconv3d_199/biasconv3d_200/kernelconv3d_200/biasconv3d_201/kernelconv3d_201/biasconv3d_202/kernelconv3d_202/biasconv3d_transpose_29/kernelconv3d_transpose_29/biasconv3d_203/kernelconv3d_203/biasconv3d_204/kernelconv3d_204/biasconv3d_205/kernelconv3d_205/biasconv3d_206/kernelconv3d_206/biasconv3d_transpose_30/kernelconv3d_transpose_30/biasconv3d_207/kernelconv3d_207/biasconv3d_208/kernelconv3d_208/biasconv3d_209/kernelconv3d_209/biasconv3d_210/kernelconv3d_210/biasconv3d_transpose_31/kernelconv3d_transpose_31/biasconv3d_211/kernelconv3d_211/biasconv3d_212/kernelconv3d_212/biasconv3d_213/kernelconv3d_213/biasconv3d_214/kernelconv3d_214/biasconv3d_215/kernelconv3d_215/bias*J
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
GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_241144
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�E
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_189/kernel/Read/ReadVariableOp#conv3d_189/bias/Read/ReadVariableOp%conv3d_190/kernel/Read/ReadVariableOp#conv3d_190/bias/Read/ReadVariableOp%conv3d_191/kernel/Read/ReadVariableOp#conv3d_191/bias/Read/ReadVariableOp%conv3d_192/kernel/Read/ReadVariableOp#conv3d_192/bias/Read/ReadVariableOp%conv3d_193/kernel/Read/ReadVariableOp#conv3d_193/bias/Read/ReadVariableOp%conv3d_194/kernel/Read/ReadVariableOp#conv3d_194/bias/Read/ReadVariableOp%conv3d_195/kernel/Read/ReadVariableOp#conv3d_195/bias/Read/ReadVariableOp%conv3d_196/kernel/Read/ReadVariableOp#conv3d_196/bias/Read/ReadVariableOp%conv3d_197/kernel/Read/ReadVariableOp#conv3d_197/bias/Read/ReadVariableOp%conv3d_198/kernel/Read/ReadVariableOp#conv3d_198/bias/Read/ReadVariableOp.conv3d_transpose_28/kernel/Read/ReadVariableOp,conv3d_transpose_28/bias/Read/ReadVariableOp%conv3d_199/kernel/Read/ReadVariableOp#conv3d_199/bias/Read/ReadVariableOp%conv3d_200/kernel/Read/ReadVariableOp#conv3d_200/bias/Read/ReadVariableOp%conv3d_201/kernel/Read/ReadVariableOp#conv3d_201/bias/Read/ReadVariableOp%conv3d_202/kernel/Read/ReadVariableOp#conv3d_202/bias/Read/ReadVariableOp.conv3d_transpose_29/kernel/Read/ReadVariableOp,conv3d_transpose_29/bias/Read/ReadVariableOp%conv3d_203/kernel/Read/ReadVariableOp#conv3d_203/bias/Read/ReadVariableOp%conv3d_204/kernel/Read/ReadVariableOp#conv3d_204/bias/Read/ReadVariableOp%conv3d_205/kernel/Read/ReadVariableOp#conv3d_205/bias/Read/ReadVariableOp%conv3d_206/kernel/Read/ReadVariableOp#conv3d_206/bias/Read/ReadVariableOp.conv3d_transpose_30/kernel/Read/ReadVariableOp,conv3d_transpose_30/bias/Read/ReadVariableOp%conv3d_207/kernel/Read/ReadVariableOp#conv3d_207/bias/Read/ReadVariableOp%conv3d_208/kernel/Read/ReadVariableOp#conv3d_208/bias/Read/ReadVariableOp%conv3d_209/kernel/Read/ReadVariableOp#conv3d_209/bias/Read/ReadVariableOp%conv3d_210/kernel/Read/ReadVariableOp#conv3d_210/bias/Read/ReadVariableOp.conv3d_transpose_31/kernel/Read/ReadVariableOp,conv3d_transpose_31/bias/Read/ReadVariableOp%conv3d_211/kernel/Read/ReadVariableOp#conv3d_211/bias/Read/ReadVariableOp%conv3d_212/kernel/Read/ReadVariableOp#conv3d_212/bias/Read/ReadVariableOp%conv3d_213/kernel/Read/ReadVariableOp#conv3d_213/bias/Read/ReadVariableOp%conv3d_214/kernel/Read/ReadVariableOp#conv3d_214/bias/Read/ReadVariableOp%conv3d_215/kernel/Read/ReadVariableOp#conv3d_215/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv3d_189/kernel/m/Read/ReadVariableOp*Adam/conv3d_189/bias/m/Read/ReadVariableOp,Adam/conv3d_190/kernel/m/Read/ReadVariableOp*Adam/conv3d_190/bias/m/Read/ReadVariableOp,Adam/conv3d_191/kernel/m/Read/ReadVariableOp*Adam/conv3d_191/bias/m/Read/ReadVariableOp,Adam/conv3d_192/kernel/m/Read/ReadVariableOp*Adam/conv3d_192/bias/m/Read/ReadVariableOp,Adam/conv3d_193/kernel/m/Read/ReadVariableOp*Adam/conv3d_193/bias/m/Read/ReadVariableOp,Adam/conv3d_194/kernel/m/Read/ReadVariableOp*Adam/conv3d_194/bias/m/Read/ReadVariableOp,Adam/conv3d_195/kernel/m/Read/ReadVariableOp*Adam/conv3d_195/bias/m/Read/ReadVariableOp,Adam/conv3d_196/kernel/m/Read/ReadVariableOp*Adam/conv3d_196/bias/m/Read/ReadVariableOp,Adam/conv3d_197/kernel/m/Read/ReadVariableOp*Adam/conv3d_197/bias/m/Read/ReadVariableOp,Adam/conv3d_198/kernel/m/Read/ReadVariableOp*Adam/conv3d_198/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_28/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_28/bias/m/Read/ReadVariableOp,Adam/conv3d_199/kernel/m/Read/ReadVariableOp*Adam/conv3d_199/bias/m/Read/ReadVariableOp,Adam/conv3d_200/kernel/m/Read/ReadVariableOp*Adam/conv3d_200/bias/m/Read/ReadVariableOp,Adam/conv3d_201/kernel/m/Read/ReadVariableOp*Adam/conv3d_201/bias/m/Read/ReadVariableOp,Adam/conv3d_202/kernel/m/Read/ReadVariableOp*Adam/conv3d_202/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_29/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_29/bias/m/Read/ReadVariableOp,Adam/conv3d_203/kernel/m/Read/ReadVariableOp*Adam/conv3d_203/bias/m/Read/ReadVariableOp,Adam/conv3d_204/kernel/m/Read/ReadVariableOp*Adam/conv3d_204/bias/m/Read/ReadVariableOp,Adam/conv3d_205/kernel/m/Read/ReadVariableOp*Adam/conv3d_205/bias/m/Read/ReadVariableOp,Adam/conv3d_206/kernel/m/Read/ReadVariableOp*Adam/conv3d_206/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_30/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_30/bias/m/Read/ReadVariableOp,Adam/conv3d_207/kernel/m/Read/ReadVariableOp*Adam/conv3d_207/bias/m/Read/ReadVariableOp,Adam/conv3d_208/kernel/m/Read/ReadVariableOp*Adam/conv3d_208/bias/m/Read/ReadVariableOp,Adam/conv3d_209/kernel/m/Read/ReadVariableOp*Adam/conv3d_209/bias/m/Read/ReadVariableOp,Adam/conv3d_210/kernel/m/Read/ReadVariableOp*Adam/conv3d_210/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_31/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_31/bias/m/Read/ReadVariableOp,Adam/conv3d_211/kernel/m/Read/ReadVariableOp*Adam/conv3d_211/bias/m/Read/ReadVariableOp,Adam/conv3d_212/kernel/m/Read/ReadVariableOp*Adam/conv3d_212/bias/m/Read/ReadVariableOp,Adam/conv3d_213/kernel/m/Read/ReadVariableOp*Adam/conv3d_213/bias/m/Read/ReadVariableOp,Adam/conv3d_214/kernel/m/Read/ReadVariableOp*Adam/conv3d_214/bias/m/Read/ReadVariableOp,Adam/conv3d_215/kernel/m/Read/ReadVariableOp*Adam/conv3d_215/bias/m/Read/ReadVariableOp,Adam/conv3d_189/kernel/v/Read/ReadVariableOp*Adam/conv3d_189/bias/v/Read/ReadVariableOp,Adam/conv3d_190/kernel/v/Read/ReadVariableOp*Adam/conv3d_190/bias/v/Read/ReadVariableOp,Adam/conv3d_191/kernel/v/Read/ReadVariableOp*Adam/conv3d_191/bias/v/Read/ReadVariableOp,Adam/conv3d_192/kernel/v/Read/ReadVariableOp*Adam/conv3d_192/bias/v/Read/ReadVariableOp,Adam/conv3d_193/kernel/v/Read/ReadVariableOp*Adam/conv3d_193/bias/v/Read/ReadVariableOp,Adam/conv3d_194/kernel/v/Read/ReadVariableOp*Adam/conv3d_194/bias/v/Read/ReadVariableOp,Adam/conv3d_195/kernel/v/Read/ReadVariableOp*Adam/conv3d_195/bias/v/Read/ReadVariableOp,Adam/conv3d_196/kernel/v/Read/ReadVariableOp*Adam/conv3d_196/bias/v/Read/ReadVariableOp,Adam/conv3d_197/kernel/v/Read/ReadVariableOp*Adam/conv3d_197/bias/v/Read/ReadVariableOp,Adam/conv3d_198/kernel/v/Read/ReadVariableOp*Adam/conv3d_198/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_28/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_28/bias/v/Read/ReadVariableOp,Adam/conv3d_199/kernel/v/Read/ReadVariableOp*Adam/conv3d_199/bias/v/Read/ReadVariableOp,Adam/conv3d_200/kernel/v/Read/ReadVariableOp*Adam/conv3d_200/bias/v/Read/ReadVariableOp,Adam/conv3d_201/kernel/v/Read/ReadVariableOp*Adam/conv3d_201/bias/v/Read/ReadVariableOp,Adam/conv3d_202/kernel/v/Read/ReadVariableOp*Adam/conv3d_202/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_29/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_29/bias/v/Read/ReadVariableOp,Adam/conv3d_203/kernel/v/Read/ReadVariableOp*Adam/conv3d_203/bias/v/Read/ReadVariableOp,Adam/conv3d_204/kernel/v/Read/ReadVariableOp*Adam/conv3d_204/bias/v/Read/ReadVariableOp,Adam/conv3d_205/kernel/v/Read/ReadVariableOp*Adam/conv3d_205/bias/v/Read/ReadVariableOp,Adam/conv3d_206/kernel/v/Read/ReadVariableOp*Adam/conv3d_206/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_30/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_30/bias/v/Read/ReadVariableOp,Adam/conv3d_207/kernel/v/Read/ReadVariableOp*Adam/conv3d_207/bias/v/Read/ReadVariableOp,Adam/conv3d_208/kernel/v/Read/ReadVariableOp*Adam/conv3d_208/bias/v/Read/ReadVariableOp,Adam/conv3d_209/kernel/v/Read/ReadVariableOp*Adam/conv3d_209/bias/v/Read/ReadVariableOp,Adam/conv3d_210/kernel/v/Read/ReadVariableOp*Adam/conv3d_210/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_31/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_31/bias/v/Read/ReadVariableOp,Adam/conv3d_211/kernel/v/Read/ReadVariableOp*Adam/conv3d_211/bias/v/Read/ReadVariableOp,Adam/conv3d_212/kernel/v/Read/ReadVariableOp*Adam/conv3d_212/bias/v/Read/ReadVariableOp,Adam/conv3d_213/kernel/v/Read/ReadVariableOp*Adam/conv3d_213/bias/v/Read/ReadVariableOp,Adam/conv3d_214/kernel/v/Read/ReadVariableOp*Adam/conv3d_214/bias/v/Read/ReadVariableOp,Adam/conv3d_215/kernel/v/Read/ReadVariableOp*Adam/conv3d_215/bias/v/Read/ReadVariableOpConst*�
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_242589
�'
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_189/kernelconv3d_189/biasconv3d_190/kernelconv3d_190/biasconv3d_191/kernelconv3d_191/biasconv3d_192/kernelconv3d_192/biasconv3d_193/kernelconv3d_193/biasconv3d_194/kernelconv3d_194/biasconv3d_195/kernelconv3d_195/biasconv3d_196/kernelconv3d_196/biasconv3d_197/kernelconv3d_197/biasconv3d_198/kernelconv3d_198/biasconv3d_transpose_28/kernelconv3d_transpose_28/biasconv3d_199/kernelconv3d_199/biasconv3d_200/kernelconv3d_200/biasconv3d_201/kernelconv3d_201/biasconv3d_202/kernelconv3d_202/biasconv3d_transpose_29/kernelconv3d_transpose_29/biasconv3d_203/kernelconv3d_203/biasconv3d_204/kernelconv3d_204/biasconv3d_205/kernelconv3d_205/biasconv3d_206/kernelconv3d_206/biasconv3d_transpose_30/kernelconv3d_transpose_30/biasconv3d_207/kernelconv3d_207/biasconv3d_208/kernelconv3d_208/biasconv3d_209/kernelconv3d_209/biasconv3d_210/kernelconv3d_210/biasconv3d_transpose_31/kernelconv3d_transpose_31/biasconv3d_211/kernelconv3d_211/biasconv3d_212/kernelconv3d_212/biasconv3d_213/kernelconv3d_213/biasconv3d_214/kernelconv3d_214/biasconv3d_215/kernelconv3d_215/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_189/kernel/mAdam/conv3d_189/bias/mAdam/conv3d_190/kernel/mAdam/conv3d_190/bias/mAdam/conv3d_191/kernel/mAdam/conv3d_191/bias/mAdam/conv3d_192/kernel/mAdam/conv3d_192/bias/mAdam/conv3d_193/kernel/mAdam/conv3d_193/bias/mAdam/conv3d_194/kernel/mAdam/conv3d_194/bias/mAdam/conv3d_195/kernel/mAdam/conv3d_195/bias/mAdam/conv3d_196/kernel/mAdam/conv3d_196/bias/mAdam/conv3d_197/kernel/mAdam/conv3d_197/bias/mAdam/conv3d_198/kernel/mAdam/conv3d_198/bias/m!Adam/conv3d_transpose_28/kernel/mAdam/conv3d_transpose_28/bias/mAdam/conv3d_199/kernel/mAdam/conv3d_199/bias/mAdam/conv3d_200/kernel/mAdam/conv3d_200/bias/mAdam/conv3d_201/kernel/mAdam/conv3d_201/bias/mAdam/conv3d_202/kernel/mAdam/conv3d_202/bias/m!Adam/conv3d_transpose_29/kernel/mAdam/conv3d_transpose_29/bias/mAdam/conv3d_203/kernel/mAdam/conv3d_203/bias/mAdam/conv3d_204/kernel/mAdam/conv3d_204/bias/mAdam/conv3d_205/kernel/mAdam/conv3d_205/bias/mAdam/conv3d_206/kernel/mAdam/conv3d_206/bias/m!Adam/conv3d_transpose_30/kernel/mAdam/conv3d_transpose_30/bias/mAdam/conv3d_207/kernel/mAdam/conv3d_207/bias/mAdam/conv3d_208/kernel/mAdam/conv3d_208/bias/mAdam/conv3d_209/kernel/mAdam/conv3d_209/bias/mAdam/conv3d_210/kernel/mAdam/conv3d_210/bias/m!Adam/conv3d_transpose_31/kernel/mAdam/conv3d_transpose_31/bias/mAdam/conv3d_211/kernel/mAdam/conv3d_211/bias/mAdam/conv3d_212/kernel/mAdam/conv3d_212/bias/mAdam/conv3d_213/kernel/mAdam/conv3d_213/bias/mAdam/conv3d_214/kernel/mAdam/conv3d_214/bias/mAdam/conv3d_215/kernel/mAdam/conv3d_215/bias/mAdam/conv3d_189/kernel/vAdam/conv3d_189/bias/vAdam/conv3d_190/kernel/vAdam/conv3d_190/bias/vAdam/conv3d_191/kernel/vAdam/conv3d_191/bias/vAdam/conv3d_192/kernel/vAdam/conv3d_192/bias/vAdam/conv3d_193/kernel/vAdam/conv3d_193/bias/vAdam/conv3d_194/kernel/vAdam/conv3d_194/bias/vAdam/conv3d_195/kernel/vAdam/conv3d_195/bias/vAdam/conv3d_196/kernel/vAdam/conv3d_196/bias/vAdam/conv3d_197/kernel/vAdam/conv3d_197/bias/vAdam/conv3d_198/kernel/vAdam/conv3d_198/bias/v!Adam/conv3d_transpose_28/kernel/vAdam/conv3d_transpose_28/bias/vAdam/conv3d_199/kernel/vAdam/conv3d_199/bias/vAdam/conv3d_200/kernel/vAdam/conv3d_200/bias/vAdam/conv3d_201/kernel/vAdam/conv3d_201/bias/vAdam/conv3d_202/kernel/vAdam/conv3d_202/bias/v!Adam/conv3d_transpose_29/kernel/vAdam/conv3d_transpose_29/bias/vAdam/conv3d_203/kernel/vAdam/conv3d_203/bias/vAdam/conv3d_204/kernel/vAdam/conv3d_204/bias/vAdam/conv3d_205/kernel/vAdam/conv3d_205/bias/vAdam/conv3d_206/kernel/vAdam/conv3d_206/bias/v!Adam/conv3d_transpose_30/kernel/vAdam/conv3d_transpose_30/bias/vAdam/conv3d_207/kernel/vAdam/conv3d_207/bias/vAdam/conv3d_208/kernel/vAdam/conv3d_208/bias/vAdam/conv3d_209/kernel/vAdam/conv3d_209/bias/vAdam/conv3d_210/kernel/vAdam/conv3d_210/bias/v!Adam/conv3d_transpose_31/kernel/vAdam/conv3d_transpose_31/bias/vAdam/conv3d_211/kernel/vAdam/conv3d_211/bias/vAdam/conv3d_212/kernel/vAdam/conv3d_212/bias/vAdam/conv3d_213/kernel/vAdam/conv3d_213/bias/vAdam/conv3d_214/kernel/vAdam/conv3d_214/bias/vAdam/conv3d_215/kernel/vAdam/conv3d_215/bias/v*�
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_243184��'
�
�
+__inference_conv3d_205_layer_call_fn_241644

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_205_layer_call_and_return_conditional_losses_238545�
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
�
v
J__inference_concatenate_28_layer_call_and_return_conditional_losses_241478
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
�
�
+__inference_conv3d_190_layer_call_fn_241184

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_190_layer_call_and_return_conditional_losses_238258�
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
[
/__inference_concatenate_30_layer_call_fn_241745
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_30_layer_call_and_return_conditional_losses_238597�
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
�
�
F__inference_conv3d_205_layer_call_and_return_conditional_losses_238545

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
h
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_241355

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
+__inference_conv3d_192_layer_call_fn_241234

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_192_layer_call_and_return_conditional_losses_238293�
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
�
v
J__inference_concatenate_31_layer_call_and_return_conditional_losses_241889
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
�
�
+__inference_conv3d_206_layer_call_fn_241664

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_206_layer_call_and_return_conditional_losses_238562�
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
F__inference_conv3d_211_layer_call_and_return_conditional_losses_238666

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
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_241719

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
�"
�
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_241856

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
�
�
F__inference_conv3d_194_layer_call_and_return_conditional_losses_241295

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
F__inference_conv3d_189_layer_call_and_return_conditional_losses_241175

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
�
�
+__inference_conv3d_196_layer_call_fn_241334

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_196_layer_call_and_return_conditional_losses_238363�
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
[
/__inference_concatenate_31_layer_call_fn_241882
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_31_layer_call_and_return_conditional_losses_238679�
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
(__inference_model_7_layer_call_fn_239731
input_8%
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
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8� *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_239475�
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
_user_specified_name	input_8
�
�
+__inference_conv3d_195_layer_call_fn_241314

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_195_layer_call_and_return_conditional_losses_238346�
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
ޒ
�;
!__inference__wrapped_model_237956
input_8O
1model_7_conv3d_189_conv3d_readvariableop_resource:@
2model_7_conv3d_189_biasadd_readvariableop_resource:O
1model_7_conv3d_190_conv3d_readvariableop_resource:@
2model_7_conv3d_190_biasadd_readvariableop_resource:O
1model_7_conv3d_191_conv3d_readvariableop_resource: @
2model_7_conv3d_191_biasadd_readvariableop_resource: O
1model_7_conv3d_192_conv3d_readvariableop_resource:  @
2model_7_conv3d_192_biasadd_readvariableop_resource: O
1model_7_conv3d_193_conv3d_readvariableop_resource: @@
2model_7_conv3d_193_biasadd_readvariableop_resource:@O
1model_7_conv3d_194_conv3d_readvariableop_resource:@@@
2model_7_conv3d_194_biasadd_readvariableop_resource:@P
1model_7_conv3d_195_conv3d_readvariableop_resource:@�A
2model_7_conv3d_195_biasadd_readvariableop_resource:	�Q
1model_7_conv3d_196_conv3d_readvariableop_resource:��A
2model_7_conv3d_196_biasadd_readvariableop_resource:	�Q
1model_7_conv3d_197_conv3d_readvariableop_resource:��A
2model_7_conv3d_197_biasadd_readvariableop_resource:	�Q
1model_7_conv3d_198_conv3d_readvariableop_resource:��A
2model_7_conv3d_198_biasadd_readvariableop_resource:	�d
Dmodel_7_conv3d_transpose_28_conv3d_transpose_readvariableop_resource:��J
;model_7_conv3d_transpose_28_biasadd_readvariableop_resource:	�Q
1model_7_conv3d_199_conv3d_readvariableop_resource:��A
2model_7_conv3d_199_biasadd_readvariableop_resource:	�Q
1model_7_conv3d_200_conv3d_readvariableop_resource:��A
2model_7_conv3d_200_biasadd_readvariableop_resource:	�Q
1model_7_conv3d_201_conv3d_readvariableop_resource:��A
2model_7_conv3d_201_biasadd_readvariableop_resource:	�Q
1model_7_conv3d_202_conv3d_readvariableop_resource:��A
2model_7_conv3d_202_biasadd_readvariableop_resource:	�c
Dmodel_7_conv3d_transpose_29_conv3d_transpose_readvariableop_resource:@�I
;model_7_conv3d_transpose_29_biasadd_readvariableop_resource:@O
1model_7_conv3d_203_conv3d_readvariableop_resource:@@@
2model_7_conv3d_203_biasadd_readvariableop_resource:@P
1model_7_conv3d_204_conv3d_readvariableop_resource:�@@
2model_7_conv3d_204_biasadd_readvariableop_resource:@O
1model_7_conv3d_205_conv3d_readvariableop_resource:@@@
2model_7_conv3d_205_biasadd_readvariableop_resource:@O
1model_7_conv3d_206_conv3d_readvariableop_resource:@@@
2model_7_conv3d_206_biasadd_readvariableop_resource:@b
Dmodel_7_conv3d_transpose_30_conv3d_transpose_readvariableop_resource: @I
;model_7_conv3d_transpose_30_biasadd_readvariableop_resource: O
1model_7_conv3d_207_conv3d_readvariableop_resource:  @
2model_7_conv3d_207_biasadd_readvariableop_resource: O
1model_7_conv3d_208_conv3d_readvariableop_resource:@ @
2model_7_conv3d_208_biasadd_readvariableop_resource: O
1model_7_conv3d_209_conv3d_readvariableop_resource:  @
2model_7_conv3d_209_biasadd_readvariableop_resource: O
1model_7_conv3d_210_conv3d_readvariableop_resource:  @
2model_7_conv3d_210_biasadd_readvariableop_resource: b
Dmodel_7_conv3d_transpose_31_conv3d_transpose_readvariableop_resource: I
;model_7_conv3d_transpose_31_biasadd_readvariableop_resource:O
1model_7_conv3d_211_conv3d_readvariableop_resource:@
2model_7_conv3d_211_biasadd_readvariableop_resource:O
1model_7_conv3d_212_conv3d_readvariableop_resource: @
2model_7_conv3d_212_biasadd_readvariableop_resource:O
1model_7_conv3d_213_conv3d_readvariableop_resource:@
2model_7_conv3d_213_biasadd_readvariableop_resource:O
1model_7_conv3d_214_conv3d_readvariableop_resource:@
2model_7_conv3d_214_biasadd_readvariableop_resource:O
1model_7_conv3d_215_conv3d_readvariableop_resource:@
2model_7_conv3d_215_biasadd_readvariableop_resource:
identity��)model_7/conv3d_189/BiasAdd/ReadVariableOp�(model_7/conv3d_189/Conv3D/ReadVariableOp�)model_7/conv3d_190/BiasAdd/ReadVariableOp�(model_7/conv3d_190/Conv3D/ReadVariableOp�)model_7/conv3d_191/BiasAdd/ReadVariableOp�(model_7/conv3d_191/Conv3D/ReadVariableOp�)model_7/conv3d_192/BiasAdd/ReadVariableOp�(model_7/conv3d_192/Conv3D/ReadVariableOp�)model_7/conv3d_193/BiasAdd/ReadVariableOp�(model_7/conv3d_193/Conv3D/ReadVariableOp�)model_7/conv3d_194/BiasAdd/ReadVariableOp�(model_7/conv3d_194/Conv3D/ReadVariableOp�)model_7/conv3d_195/BiasAdd/ReadVariableOp�(model_7/conv3d_195/Conv3D/ReadVariableOp�)model_7/conv3d_196/BiasAdd/ReadVariableOp�(model_7/conv3d_196/Conv3D/ReadVariableOp�)model_7/conv3d_197/BiasAdd/ReadVariableOp�(model_7/conv3d_197/Conv3D/ReadVariableOp�)model_7/conv3d_198/BiasAdd/ReadVariableOp�(model_7/conv3d_198/Conv3D/ReadVariableOp�)model_7/conv3d_199/BiasAdd/ReadVariableOp�(model_7/conv3d_199/Conv3D/ReadVariableOp�)model_7/conv3d_200/BiasAdd/ReadVariableOp�(model_7/conv3d_200/Conv3D/ReadVariableOp�)model_7/conv3d_201/BiasAdd/ReadVariableOp�(model_7/conv3d_201/Conv3D/ReadVariableOp�)model_7/conv3d_202/BiasAdd/ReadVariableOp�(model_7/conv3d_202/Conv3D/ReadVariableOp�)model_7/conv3d_203/BiasAdd/ReadVariableOp�(model_7/conv3d_203/Conv3D/ReadVariableOp�)model_7/conv3d_204/BiasAdd/ReadVariableOp�(model_7/conv3d_204/Conv3D/ReadVariableOp�)model_7/conv3d_205/BiasAdd/ReadVariableOp�(model_7/conv3d_205/Conv3D/ReadVariableOp�)model_7/conv3d_206/BiasAdd/ReadVariableOp�(model_7/conv3d_206/Conv3D/ReadVariableOp�)model_7/conv3d_207/BiasAdd/ReadVariableOp�(model_7/conv3d_207/Conv3D/ReadVariableOp�)model_7/conv3d_208/BiasAdd/ReadVariableOp�(model_7/conv3d_208/Conv3D/ReadVariableOp�)model_7/conv3d_209/BiasAdd/ReadVariableOp�(model_7/conv3d_209/Conv3D/ReadVariableOp�)model_7/conv3d_210/BiasAdd/ReadVariableOp�(model_7/conv3d_210/Conv3D/ReadVariableOp�)model_7/conv3d_211/BiasAdd/ReadVariableOp�(model_7/conv3d_211/Conv3D/ReadVariableOp�)model_7/conv3d_212/BiasAdd/ReadVariableOp�(model_7/conv3d_212/Conv3D/ReadVariableOp�)model_7/conv3d_213/BiasAdd/ReadVariableOp�(model_7/conv3d_213/Conv3D/ReadVariableOp�)model_7/conv3d_214/BiasAdd/ReadVariableOp�(model_7/conv3d_214/Conv3D/ReadVariableOp�)model_7/conv3d_215/BiasAdd/ReadVariableOp�(model_7/conv3d_215/Conv3D/ReadVariableOp�2model_7/conv3d_transpose_28/BiasAdd/ReadVariableOp�;model_7/conv3d_transpose_28/conv3d_transpose/ReadVariableOp�2model_7/conv3d_transpose_29/BiasAdd/ReadVariableOp�;model_7/conv3d_transpose_29/conv3d_transpose/ReadVariableOp�2model_7/conv3d_transpose_30/BiasAdd/ReadVariableOp�;model_7/conv3d_transpose_30/conv3d_transpose/ReadVariableOp�2model_7/conv3d_transpose_31/BiasAdd/ReadVariableOp�;model_7/conv3d_transpose_31/conv3d_transpose/ReadVariableOp�
%model_7/zero_padding3d_7/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
model_7/zero_padding3d_7/PadPadinput_8.model_7/zero_padding3d_7/Pad/paddings:output:0*
T0*N
_output_shapes<
::8�������������������������������������
(model_7/conv3d_189/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_189_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_7/conv3d_189/Conv3DConv3D%model_7/zero_padding3d_7/Pad:output:00model_7/conv3d_189/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_189/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_189_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_7/conv3d_189/BiasAddBiasAdd"model_7/conv3d_189/Conv3D:output:01model_7/conv3d_189/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_7/conv3d_189/ReluRelu#model_7/conv3d_189/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
(model_7/conv3d_190/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_190_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_7/conv3d_190/Conv3DConv3D%model_7/conv3d_189/Relu:activations:00model_7/conv3d_190/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_190/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_190_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_7/conv3d_190/BiasAddBiasAdd"model_7/conv3d_190/Conv3D:output:01model_7/conv3d_190/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_7/conv3d_190/ReluRelu#model_7/conv3d_190/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
"model_7/max_pooling3d_28/MaxPool3D	MaxPool3D%model_7/conv3d_190/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
ksize	
*
paddingVALID*
strides	
�
(model_7/conv3d_191/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_191_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
model_7/conv3d_191/Conv3DConv3D+model_7/max_pooling3d_28/MaxPool3D:output:00model_7/conv3d_191/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)model_7/conv3d_191/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_191_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_7/conv3d_191/BiasAddBiasAdd"model_7/conv3d_191/Conv3D:output:01model_7/conv3d_191/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_7/conv3d_191/ReluRelu#model_7/conv3d_191/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
(model_7/conv3d_192/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_192_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_7/conv3d_192/Conv3DConv3D%model_7/conv3d_191/Relu:activations:00model_7/conv3d_192/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)model_7/conv3d_192/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_192_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_7/conv3d_192/BiasAddBiasAdd"model_7/conv3d_192/Conv3D:output:01model_7/conv3d_192/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_7/conv3d_192/ReluRelu#model_7/conv3d_192/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
"model_7/max_pooling3d_29/MaxPool3D	MaxPool3D%model_7/conv3d_192/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
ksize	
*
paddingVALID*
strides	
�
(model_7/conv3d_193/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_193_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
model_7/conv3d_193/Conv3DConv3D+model_7/max_pooling3d_29/MaxPool3D:output:00model_7/conv3d_193/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)model_7/conv3d_193/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_193_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_7/conv3d_193/BiasAddBiasAdd"model_7/conv3d_193/Conv3D:output:01model_7/conv3d_193/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_7/conv3d_193/ReluRelu#model_7/conv3d_193/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
(model_7/conv3d_194/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_194_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_7/conv3d_194/Conv3DConv3D%model_7/conv3d_193/Relu:activations:00model_7/conv3d_194/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)model_7/conv3d_194/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_194_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_7/conv3d_194/BiasAddBiasAdd"model_7/conv3d_194/Conv3D:output:01model_7/conv3d_194/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_7/conv3d_194/ReluRelu#model_7/conv3d_194/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
"model_7/max_pooling3d_30/MaxPool3D	MaxPool3D%model_7/conv3d_194/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
ksize	
*
paddingVALID*
strides	
�
(model_7/conv3d_195/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_195_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
model_7/conv3d_195/Conv3DConv3D+model_7/max_pooling3d_30/MaxPool3D:output:00model_7/conv3d_195/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_195/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_195_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_195/BiasAddBiasAdd"model_7/conv3d_195/Conv3D:output:01model_7/conv3d_195/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_195/ReluRelu#model_7/conv3d_195/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
(model_7/conv3d_196/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_196_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_7/conv3d_196/Conv3DConv3D%model_7/conv3d_195/Relu:activations:00model_7/conv3d_196/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_196/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_196_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_196/BiasAddBiasAdd"model_7/conv3d_196/Conv3D:output:01model_7/conv3d_196/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_196/ReluRelu#model_7/conv3d_196/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
"model_7/max_pooling3d_31/MaxPool3D	MaxPool3D%model_7/conv3d_196/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
ksize	
*
paddingVALID*
strides	
�
(model_7/conv3d_197/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_197_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_7/conv3d_197/Conv3DConv3D+model_7/max_pooling3d_31/MaxPool3D:output:00model_7/conv3d_197/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_197/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_197_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_197/BiasAddBiasAdd"model_7/conv3d_197/Conv3D:output:01model_7/conv3d_197/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_197/ReluRelu#model_7/conv3d_197/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
(model_7/conv3d_198/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_198_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_7/conv3d_198/Conv3DConv3D%model_7/conv3d_197/Relu:activations:00model_7/conv3d_198/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_198/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_198_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_198/BiasAddBiasAdd"model_7/conv3d_198/Conv3D:output:01model_7/conv3d_198/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_198/ReluRelu#model_7/conv3d_198/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������v
!model_7/conv3d_transpose_28/ShapeShape%model_7/conv3d_198/Relu:activations:0*
T0*
_output_shapes
:y
/model_7/conv3d_transpose_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_7/conv3d_transpose_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_7/conv3d_transpose_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)model_7/conv3d_transpose_28/strided_sliceStridedSlice*model_7/conv3d_transpose_28/Shape:output:08model_7/conv3d_transpose_28/strided_slice/stack:output:0:model_7/conv3d_transpose_28/strided_slice/stack_1:output:0:model_7/conv3d_transpose_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_28/strided_slice_1StridedSlice*model_7/conv3d_transpose_28/Shape:output:0:model_7/conv3d_transpose_28/strided_slice_1/stack:output:0<model_7/conv3d_transpose_28/strided_slice_1/stack_1:output:0<model_7/conv3d_transpose_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_28/strided_slice_2StridedSlice*model_7/conv3d_transpose_28/Shape:output:0:model_7/conv3d_transpose_28/strided_slice_2/stack:output:0<model_7/conv3d_transpose_28/strided_slice_2/stack_1:output:0<model_7/conv3d_transpose_28/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_28/strided_slice_3StridedSlice*model_7/conv3d_transpose_28/Shape:output:0:model_7/conv3d_transpose_28/strided_slice_3/stack:output:0<model_7/conv3d_transpose_28/strided_slice_3/stack_1:output:0<model_7/conv3d_transpose_28/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_7/conv3d_transpose_28/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/conv3d_transpose_28/mulMul4model_7/conv3d_transpose_28/strided_slice_1:output:0*model_7/conv3d_transpose_28/mul/y:output:0*
T0*
_output_shapes
: c
!model_7/conv3d_transpose_28/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
model_7/conv3d_transpose_28/addAddV2#model_7/conv3d_transpose_28/mul:z:0*model_7/conv3d_transpose_28/add/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_28/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_28/mul_1Mul4model_7/conv3d_transpose_28/strided_slice_2:output:0,model_7/conv3d_transpose_28/mul_1/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_28/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : �
!model_7/conv3d_transpose_28/add_1AddV2%model_7/conv3d_transpose_28/mul_1:z:0,model_7/conv3d_transpose_28/add_1/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_28/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_28/mul_2Mul4model_7/conv3d_transpose_28/strided_slice_3:output:0,model_7/conv3d_transpose_28/mul_2/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_28/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : �
!model_7/conv3d_transpose_28/add_2AddV2%model_7/conv3d_transpose_28/mul_2:z:0,model_7/conv3d_transpose_28/add_2/y:output:0*
T0*
_output_shapes
: f
#model_7/conv3d_transpose_28/stack/4Const*
_output_shapes
: *
dtype0*
value
B :��
!model_7/conv3d_transpose_28/stackPack2model_7/conv3d_transpose_28/strided_slice:output:0#model_7/conv3d_transpose_28/add:z:0%model_7/conv3d_transpose_28/add_1:z:0%model_7/conv3d_transpose_28/add_2:z:0,model_7/conv3d_transpose_28/stack/4:output:0*
N*
T0*
_output_shapes
:�
;model_7/conv3d_transpose_28/conv3d_transpose/ReadVariableOpReadVariableOpDmodel_7_conv3d_transpose_28_conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
,model_7/conv3d_transpose_28/conv3d_transposeConv3DBackpropInputV2*model_7/conv3d_transpose_28/stack:output:0Cmodel_7/conv3d_transpose_28/conv3d_transpose/ReadVariableOp:value:0%model_7/conv3d_198/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
�
2model_7/conv3d_transpose_28/BiasAdd/ReadVariableOpReadVariableOp;model_7_conv3d_transpose_28_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#model_7/conv3d_transpose_28/BiasAddBiasAdd5model_7/conv3d_transpose_28/conv3d_transpose:output:0:model_7/conv3d_transpose_28/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
(model_7/conv3d_199/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_199_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_7/conv3d_199/Conv3DConv3D,model_7/conv3d_transpose_28/BiasAdd:output:00model_7/conv3d_199/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_199/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_199_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_199/BiasAddBiasAdd"model_7/conv3d_199/Conv3D:output:01model_7/conv3d_199/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_199/ReluRelu#model_7/conv3d_199/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������d
"model_7/concatenate_28/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/concatenate_28/concatConcatV2%model_7/conv3d_196/Relu:activations:0%model_7/conv3d_199/Relu:activations:0+model_7/concatenate_28/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
(model_7/conv3d_200/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_200_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_7/conv3d_200/Conv3DConv3D&model_7/concatenate_28/concat:output:00model_7/conv3d_200/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_200/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_200_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_200/BiasAddBiasAdd"model_7/conv3d_200/Conv3D:output:01model_7/conv3d_200/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_200/ReluRelu#model_7/conv3d_200/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
(model_7/conv3d_201/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_201_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_7/conv3d_201/Conv3DConv3D%model_7/conv3d_200/Relu:activations:00model_7/conv3d_201/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_201/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_201_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_201/BiasAddBiasAdd"model_7/conv3d_201/Conv3D:output:01model_7/conv3d_201/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_201/ReluRelu#model_7/conv3d_201/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
(model_7/conv3d_202/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_202_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
model_7/conv3d_202/Conv3DConv3D%model_7/conv3d_201/Relu:activations:00model_7/conv3d_202/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_202/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_202_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_7/conv3d_202/BiasAddBiasAdd"model_7/conv3d_202/Conv3D:output:01model_7/conv3d_202/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
model_7/conv3d_202/ReluRelu#model_7/conv3d_202/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������v
!model_7/conv3d_transpose_29/ShapeShape%model_7/conv3d_202/Relu:activations:0*
T0*
_output_shapes
:y
/model_7/conv3d_transpose_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_7/conv3d_transpose_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_7/conv3d_transpose_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)model_7/conv3d_transpose_29/strided_sliceStridedSlice*model_7/conv3d_transpose_29/Shape:output:08model_7/conv3d_transpose_29/strided_slice/stack:output:0:model_7/conv3d_transpose_29/strided_slice/stack_1:output:0:model_7/conv3d_transpose_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_29/strided_slice_1StridedSlice*model_7/conv3d_transpose_29/Shape:output:0:model_7/conv3d_transpose_29/strided_slice_1/stack:output:0<model_7/conv3d_transpose_29/strided_slice_1/stack_1:output:0<model_7/conv3d_transpose_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_29/strided_slice_2StridedSlice*model_7/conv3d_transpose_29/Shape:output:0:model_7/conv3d_transpose_29/strided_slice_2/stack:output:0<model_7/conv3d_transpose_29/strided_slice_2/stack_1:output:0<model_7/conv3d_transpose_29/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_29/strided_slice_3StridedSlice*model_7/conv3d_transpose_29/Shape:output:0:model_7/conv3d_transpose_29/strided_slice_3/stack:output:0<model_7/conv3d_transpose_29/strided_slice_3/stack_1:output:0<model_7/conv3d_transpose_29/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_7/conv3d_transpose_29/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/conv3d_transpose_29/mulMul4model_7/conv3d_transpose_29/strided_slice_1:output:0*model_7/conv3d_transpose_29/mul/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_29/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_29/mul_1Mul4model_7/conv3d_transpose_29/strided_slice_2:output:0,model_7/conv3d_transpose_29/mul_1/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_29/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_29/mul_2Mul4model_7/conv3d_transpose_29/strided_slice_3:output:0,model_7/conv3d_transpose_29/mul_2/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_29/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@�
!model_7/conv3d_transpose_29/stackPack2model_7/conv3d_transpose_29/strided_slice:output:0#model_7/conv3d_transpose_29/mul:z:0%model_7/conv3d_transpose_29/mul_1:z:0%model_7/conv3d_transpose_29/mul_2:z:0,model_7/conv3d_transpose_29/stack/4:output:0*
N*
T0*
_output_shapes
:�
;model_7/conv3d_transpose_29/conv3d_transpose/ReadVariableOpReadVariableOpDmodel_7_conv3d_transpose_29_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
,model_7/conv3d_transpose_29/conv3d_transposeConv3DBackpropInputV2*model_7/conv3d_transpose_29/stack:output:0Cmodel_7/conv3d_transpose_29/conv3d_transpose/ReadVariableOp:value:0%model_7/conv3d_202/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
2model_7/conv3d_transpose_29/BiasAdd/ReadVariableOpReadVariableOp;model_7_conv3d_transpose_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
#model_7/conv3d_transpose_29/BiasAddBiasAdd5model_7/conv3d_transpose_29/conv3d_transpose:output:0:model_7/conv3d_transpose_29/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
(model_7/conv3d_203/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_203_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_7/conv3d_203/Conv3DConv3D,model_7/conv3d_transpose_29/BiasAdd:output:00model_7/conv3d_203/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)model_7/conv3d_203/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_203_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_7/conv3d_203/BiasAddBiasAdd"model_7/conv3d_203/Conv3D:output:01model_7/conv3d_203/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_7/conv3d_203/ReluRelu#model_7/conv3d_203/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@d
"model_7/concatenate_29/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/concatenate_29/concatConcatV2%model_7/conv3d_194/Relu:activations:0%model_7/conv3d_203/Relu:activations:0+model_7/concatenate_29/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
(model_7/conv3d_204/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_204_conv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
model_7/conv3d_204/Conv3DConv3D&model_7/concatenate_29/concat:output:00model_7/conv3d_204/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)model_7/conv3d_204/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_7/conv3d_204/BiasAddBiasAdd"model_7/conv3d_204/Conv3D:output:01model_7/conv3d_204/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_7/conv3d_204/ReluRelu#model_7/conv3d_204/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
(model_7/conv3d_205/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_205_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_7/conv3d_205/Conv3DConv3D%model_7/conv3d_204/Relu:activations:00model_7/conv3d_205/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)model_7/conv3d_205/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_205_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_7/conv3d_205/BiasAddBiasAdd"model_7/conv3d_205/Conv3D:output:01model_7/conv3d_205/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_7/conv3d_205/ReluRelu#model_7/conv3d_205/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
(model_7/conv3d_206/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_206_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
model_7/conv3d_206/Conv3DConv3D%model_7/conv3d_205/Relu:activations:00model_7/conv3d_206/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
)model_7/conv3d_206/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_206_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_7/conv3d_206/BiasAddBiasAdd"model_7/conv3d_206/Conv3D:output:01model_7/conv3d_206/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
model_7/conv3d_206/ReluRelu#model_7/conv3d_206/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@v
!model_7/conv3d_transpose_30/ShapeShape%model_7/conv3d_206/Relu:activations:0*
T0*
_output_shapes
:y
/model_7/conv3d_transpose_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_7/conv3d_transpose_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_7/conv3d_transpose_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)model_7/conv3d_transpose_30/strided_sliceStridedSlice*model_7/conv3d_transpose_30/Shape:output:08model_7/conv3d_transpose_30/strided_slice/stack:output:0:model_7/conv3d_transpose_30/strided_slice/stack_1:output:0:model_7/conv3d_transpose_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_30/strided_slice_1StridedSlice*model_7/conv3d_transpose_30/Shape:output:0:model_7/conv3d_transpose_30/strided_slice_1/stack:output:0<model_7/conv3d_transpose_30/strided_slice_1/stack_1:output:0<model_7/conv3d_transpose_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_30/strided_slice_2StridedSlice*model_7/conv3d_transpose_30/Shape:output:0:model_7/conv3d_transpose_30/strided_slice_2/stack:output:0<model_7/conv3d_transpose_30/strided_slice_2/stack_1:output:0<model_7/conv3d_transpose_30/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_30/strided_slice_3StridedSlice*model_7/conv3d_transpose_30/Shape:output:0:model_7/conv3d_transpose_30/strided_slice_3/stack:output:0<model_7/conv3d_transpose_30/strided_slice_3/stack_1:output:0<model_7/conv3d_transpose_30/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_7/conv3d_transpose_30/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/conv3d_transpose_30/mulMul4model_7/conv3d_transpose_30/strided_slice_1:output:0*model_7/conv3d_transpose_30/mul/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_30/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_30/mul_1Mul4model_7/conv3d_transpose_30/strided_slice_2:output:0,model_7/conv3d_transpose_30/mul_1/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_30/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_30/mul_2Mul4model_7/conv3d_transpose_30/strided_slice_3:output:0,model_7/conv3d_transpose_30/mul_2/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_30/stack/4Const*
_output_shapes
: *
dtype0*
value	B : �
!model_7/conv3d_transpose_30/stackPack2model_7/conv3d_transpose_30/strided_slice:output:0#model_7/conv3d_transpose_30/mul:z:0%model_7/conv3d_transpose_30/mul_1:z:0%model_7/conv3d_transpose_30/mul_2:z:0,model_7/conv3d_transpose_30/stack/4:output:0*
N*
T0*
_output_shapes
:�
;model_7/conv3d_transpose_30/conv3d_transpose/ReadVariableOpReadVariableOpDmodel_7_conv3d_transpose_30_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
,model_7/conv3d_transpose_30/conv3d_transposeConv3DBackpropInputV2*model_7/conv3d_transpose_30/stack:output:0Cmodel_7/conv3d_transpose_30/conv3d_transpose/ReadVariableOp:value:0%model_7/conv3d_206/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
2model_7/conv3d_transpose_30/BiasAdd/ReadVariableOpReadVariableOp;model_7_conv3d_transpose_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
#model_7/conv3d_transpose_30/BiasAddBiasAdd5model_7/conv3d_transpose_30/conv3d_transpose:output:0:model_7/conv3d_transpose_30/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
(model_7/conv3d_207/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_207_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_7/conv3d_207/Conv3DConv3D,model_7/conv3d_transpose_30/BiasAdd:output:00model_7/conv3d_207/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)model_7/conv3d_207/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_207_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_7/conv3d_207/BiasAddBiasAdd"model_7/conv3d_207/Conv3D:output:01model_7/conv3d_207/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_7/conv3d_207/ReluRelu#model_7/conv3d_207/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ d
"model_7/concatenate_30/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/concatenate_30/concatConcatV2%model_7/conv3d_192/Relu:activations:0%model_7/conv3d_207/Relu:activations:0+model_7/concatenate_30/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@�
(model_7/conv3d_208/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_208_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
model_7/conv3d_208/Conv3DConv3D&model_7/concatenate_30/concat:output:00model_7/conv3d_208/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)model_7/conv3d_208/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_208_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_7/conv3d_208/BiasAddBiasAdd"model_7/conv3d_208/Conv3D:output:01model_7/conv3d_208/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_7/conv3d_208/ReluRelu#model_7/conv3d_208/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
(model_7/conv3d_209/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_209_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_7/conv3d_209/Conv3DConv3D%model_7/conv3d_208/Relu:activations:00model_7/conv3d_209/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)model_7/conv3d_209/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_209_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_7/conv3d_209/BiasAddBiasAdd"model_7/conv3d_209/Conv3D:output:01model_7/conv3d_209/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_7/conv3d_209/ReluRelu#model_7/conv3d_209/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
(model_7/conv3d_210/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_210_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
model_7/conv3d_210/Conv3DConv3D%model_7/conv3d_209/Relu:activations:00model_7/conv3d_210/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
)model_7/conv3d_210/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_210_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_7/conv3d_210/BiasAddBiasAdd"model_7/conv3d_210/Conv3D:output:01model_7/conv3d_210/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
model_7/conv3d_210/ReluRelu#model_7/conv3d_210/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ v
!model_7/conv3d_transpose_31/ShapeShape%model_7/conv3d_210/Relu:activations:0*
T0*
_output_shapes
:y
/model_7/conv3d_transpose_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_7/conv3d_transpose_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_7/conv3d_transpose_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)model_7/conv3d_transpose_31/strided_sliceStridedSlice*model_7/conv3d_transpose_31/Shape:output:08model_7/conv3d_transpose_31/strided_slice/stack:output:0:model_7/conv3d_transpose_31/strided_slice/stack_1:output:0:model_7/conv3d_transpose_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_31/strided_slice_1StridedSlice*model_7/conv3d_transpose_31/Shape:output:0:model_7/conv3d_transpose_31/strided_slice_1/stack:output:0<model_7/conv3d_transpose_31/strided_slice_1/stack_1:output:0<model_7/conv3d_transpose_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_31/strided_slice_2StridedSlice*model_7/conv3d_transpose_31/Shape:output:0:model_7/conv3d_transpose_31/strided_slice_2/stack:output:0<model_7/conv3d_transpose_31/strided_slice_2/stack_1:output:0<model_7/conv3d_transpose_31/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_7/conv3d_transpose_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/conv3d_transpose_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+model_7/conv3d_transpose_31/strided_slice_3StridedSlice*model_7/conv3d_transpose_31/Shape:output:0:model_7/conv3d_transpose_31/strided_slice_3/stack:output:0<model_7/conv3d_transpose_31/strided_slice_3/stack_1:output:0<model_7/conv3d_transpose_31/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_7/conv3d_transpose_31/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/conv3d_transpose_31/mulMul4model_7/conv3d_transpose_31/strided_slice_1:output:0*model_7/conv3d_transpose_31/mul/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_31/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_31/mul_1Mul4model_7/conv3d_transpose_31/strided_slice_2:output:0,model_7/conv3d_transpose_31/mul_1/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_31/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_31/mul_2Mul4model_7/conv3d_transpose_31/strided_slice_3:output:0,model_7/conv3d_transpose_31/mul_2/y:output:0*
T0*
_output_shapes
: e
#model_7/conv3d_transpose_31/stack/4Const*
_output_shapes
: *
dtype0*
value	B :�
!model_7/conv3d_transpose_31/stackPack2model_7/conv3d_transpose_31/strided_slice:output:0#model_7/conv3d_transpose_31/mul:z:0%model_7/conv3d_transpose_31/mul_1:z:0%model_7/conv3d_transpose_31/mul_2:z:0,model_7/conv3d_transpose_31/stack/4:output:0*
N*
T0*
_output_shapes
:�
;model_7/conv3d_transpose_31/conv3d_transpose/ReadVariableOpReadVariableOpDmodel_7_conv3d_transpose_31_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
,model_7/conv3d_transpose_31/conv3d_transposeConv3DBackpropInputV2*model_7/conv3d_transpose_31/stack:output:0Cmodel_7/conv3d_transpose_31/conv3d_transpose/ReadVariableOp:value:0%model_7/conv3d_210/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
2model_7/conv3d_transpose_31/BiasAdd/ReadVariableOpReadVariableOp;model_7_conv3d_transpose_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_7/conv3d_transpose_31/BiasAddBiasAdd5model_7/conv3d_transpose_31/conv3d_transpose:output:0:model_7/conv3d_transpose_31/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
(model_7/conv3d_211/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_211_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_7/conv3d_211/Conv3DConv3D,model_7/conv3d_transpose_31/BiasAdd:output:00model_7/conv3d_211/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_211/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_7/conv3d_211/BiasAddBiasAdd"model_7/conv3d_211/Conv3D:output:01model_7/conv3d_211/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_7/conv3d_211/ReluRelu#model_7/conv3d_211/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������d
"model_7/concatenate_31/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_7/concatenate_31/concatConcatV2%model_7/conv3d_190/Relu:activations:0%model_7/conv3d_211/Relu:activations:0+model_7/concatenate_31/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ �
(model_7/conv3d_212/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_212_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
model_7/conv3d_212/Conv3DConv3D&model_7/concatenate_31/concat:output:00model_7/conv3d_212/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_212/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_7/conv3d_212/BiasAddBiasAdd"model_7/conv3d_212/Conv3D:output:01model_7/conv3d_212/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_7/conv3d_212/ReluRelu#model_7/conv3d_212/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
(model_7/conv3d_213/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_213_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_7/conv3d_213/Conv3DConv3D%model_7/conv3d_212/Relu:activations:00model_7/conv3d_213/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_213/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_213_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_7/conv3d_213/BiasAddBiasAdd"model_7/conv3d_213/Conv3D:output:01model_7/conv3d_213/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_7/conv3d_213/ReluRelu#model_7/conv3d_213/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
(model_7/conv3d_214/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_214_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_7/conv3d_214/Conv3DConv3D%model_7/conv3d_213/Relu:activations:00model_7/conv3d_214/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_214/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_7/conv3d_214/BiasAddBiasAdd"model_7/conv3d_214/Conv3D:output:01model_7/conv3d_214/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
model_7/conv3d_214/ReluRelu#model_7/conv3d_214/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
(model_7/cropping3d_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 �
*model_7/cropping3d_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    �
*model_7/cropping3d_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               �
"model_7/cropping3d_7/strided_sliceStridedSlice%model_7/conv3d_214/Relu:activations:01model_7/cropping3d_7/strided_slice/stack:output:03model_7/cropping3d_7/strided_slice/stack_1:output:03model_7/cropping3d_7/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8������������������������������������*

begin_mask*
end_mask�
(model_7/conv3d_215/Conv3D/ReadVariableOpReadVariableOp1model_7_conv3d_215_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
model_7/conv3d_215/Conv3DConv3D+model_7/cropping3d_7/strided_slice:output:00model_7/conv3d_215/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
)model_7/conv3d_215/BiasAdd/ReadVariableOpReadVariableOp2model_7_conv3d_215_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_7/conv3d_215/BiasAddBiasAdd"model_7/conv3d_215/Conv3D:output:01model_7/conv3d_215/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentity#model_7/conv3d_215/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp*^model_7/conv3d_189/BiasAdd/ReadVariableOp)^model_7/conv3d_189/Conv3D/ReadVariableOp*^model_7/conv3d_190/BiasAdd/ReadVariableOp)^model_7/conv3d_190/Conv3D/ReadVariableOp*^model_7/conv3d_191/BiasAdd/ReadVariableOp)^model_7/conv3d_191/Conv3D/ReadVariableOp*^model_7/conv3d_192/BiasAdd/ReadVariableOp)^model_7/conv3d_192/Conv3D/ReadVariableOp*^model_7/conv3d_193/BiasAdd/ReadVariableOp)^model_7/conv3d_193/Conv3D/ReadVariableOp*^model_7/conv3d_194/BiasAdd/ReadVariableOp)^model_7/conv3d_194/Conv3D/ReadVariableOp*^model_7/conv3d_195/BiasAdd/ReadVariableOp)^model_7/conv3d_195/Conv3D/ReadVariableOp*^model_7/conv3d_196/BiasAdd/ReadVariableOp)^model_7/conv3d_196/Conv3D/ReadVariableOp*^model_7/conv3d_197/BiasAdd/ReadVariableOp)^model_7/conv3d_197/Conv3D/ReadVariableOp*^model_7/conv3d_198/BiasAdd/ReadVariableOp)^model_7/conv3d_198/Conv3D/ReadVariableOp*^model_7/conv3d_199/BiasAdd/ReadVariableOp)^model_7/conv3d_199/Conv3D/ReadVariableOp*^model_7/conv3d_200/BiasAdd/ReadVariableOp)^model_7/conv3d_200/Conv3D/ReadVariableOp*^model_7/conv3d_201/BiasAdd/ReadVariableOp)^model_7/conv3d_201/Conv3D/ReadVariableOp*^model_7/conv3d_202/BiasAdd/ReadVariableOp)^model_7/conv3d_202/Conv3D/ReadVariableOp*^model_7/conv3d_203/BiasAdd/ReadVariableOp)^model_7/conv3d_203/Conv3D/ReadVariableOp*^model_7/conv3d_204/BiasAdd/ReadVariableOp)^model_7/conv3d_204/Conv3D/ReadVariableOp*^model_7/conv3d_205/BiasAdd/ReadVariableOp)^model_7/conv3d_205/Conv3D/ReadVariableOp*^model_7/conv3d_206/BiasAdd/ReadVariableOp)^model_7/conv3d_206/Conv3D/ReadVariableOp*^model_7/conv3d_207/BiasAdd/ReadVariableOp)^model_7/conv3d_207/Conv3D/ReadVariableOp*^model_7/conv3d_208/BiasAdd/ReadVariableOp)^model_7/conv3d_208/Conv3D/ReadVariableOp*^model_7/conv3d_209/BiasAdd/ReadVariableOp)^model_7/conv3d_209/Conv3D/ReadVariableOp*^model_7/conv3d_210/BiasAdd/ReadVariableOp)^model_7/conv3d_210/Conv3D/ReadVariableOp*^model_7/conv3d_211/BiasAdd/ReadVariableOp)^model_7/conv3d_211/Conv3D/ReadVariableOp*^model_7/conv3d_212/BiasAdd/ReadVariableOp)^model_7/conv3d_212/Conv3D/ReadVariableOp*^model_7/conv3d_213/BiasAdd/ReadVariableOp)^model_7/conv3d_213/Conv3D/ReadVariableOp*^model_7/conv3d_214/BiasAdd/ReadVariableOp)^model_7/conv3d_214/Conv3D/ReadVariableOp*^model_7/conv3d_215/BiasAdd/ReadVariableOp)^model_7/conv3d_215/Conv3D/ReadVariableOp3^model_7/conv3d_transpose_28/BiasAdd/ReadVariableOp<^model_7/conv3d_transpose_28/conv3d_transpose/ReadVariableOp3^model_7/conv3d_transpose_29/BiasAdd/ReadVariableOp<^model_7/conv3d_transpose_29/conv3d_transpose/ReadVariableOp3^model_7/conv3d_transpose_30/BiasAdd/ReadVariableOp<^model_7/conv3d_transpose_30/conv3d_transpose/ReadVariableOp3^model_7/conv3d_transpose_31/BiasAdd/ReadVariableOp<^model_7/conv3d_transpose_31/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)model_7/conv3d_189/BiasAdd/ReadVariableOp)model_7/conv3d_189/BiasAdd/ReadVariableOp2T
(model_7/conv3d_189/Conv3D/ReadVariableOp(model_7/conv3d_189/Conv3D/ReadVariableOp2V
)model_7/conv3d_190/BiasAdd/ReadVariableOp)model_7/conv3d_190/BiasAdd/ReadVariableOp2T
(model_7/conv3d_190/Conv3D/ReadVariableOp(model_7/conv3d_190/Conv3D/ReadVariableOp2V
)model_7/conv3d_191/BiasAdd/ReadVariableOp)model_7/conv3d_191/BiasAdd/ReadVariableOp2T
(model_7/conv3d_191/Conv3D/ReadVariableOp(model_7/conv3d_191/Conv3D/ReadVariableOp2V
)model_7/conv3d_192/BiasAdd/ReadVariableOp)model_7/conv3d_192/BiasAdd/ReadVariableOp2T
(model_7/conv3d_192/Conv3D/ReadVariableOp(model_7/conv3d_192/Conv3D/ReadVariableOp2V
)model_7/conv3d_193/BiasAdd/ReadVariableOp)model_7/conv3d_193/BiasAdd/ReadVariableOp2T
(model_7/conv3d_193/Conv3D/ReadVariableOp(model_7/conv3d_193/Conv3D/ReadVariableOp2V
)model_7/conv3d_194/BiasAdd/ReadVariableOp)model_7/conv3d_194/BiasAdd/ReadVariableOp2T
(model_7/conv3d_194/Conv3D/ReadVariableOp(model_7/conv3d_194/Conv3D/ReadVariableOp2V
)model_7/conv3d_195/BiasAdd/ReadVariableOp)model_7/conv3d_195/BiasAdd/ReadVariableOp2T
(model_7/conv3d_195/Conv3D/ReadVariableOp(model_7/conv3d_195/Conv3D/ReadVariableOp2V
)model_7/conv3d_196/BiasAdd/ReadVariableOp)model_7/conv3d_196/BiasAdd/ReadVariableOp2T
(model_7/conv3d_196/Conv3D/ReadVariableOp(model_7/conv3d_196/Conv3D/ReadVariableOp2V
)model_7/conv3d_197/BiasAdd/ReadVariableOp)model_7/conv3d_197/BiasAdd/ReadVariableOp2T
(model_7/conv3d_197/Conv3D/ReadVariableOp(model_7/conv3d_197/Conv3D/ReadVariableOp2V
)model_7/conv3d_198/BiasAdd/ReadVariableOp)model_7/conv3d_198/BiasAdd/ReadVariableOp2T
(model_7/conv3d_198/Conv3D/ReadVariableOp(model_7/conv3d_198/Conv3D/ReadVariableOp2V
)model_7/conv3d_199/BiasAdd/ReadVariableOp)model_7/conv3d_199/BiasAdd/ReadVariableOp2T
(model_7/conv3d_199/Conv3D/ReadVariableOp(model_7/conv3d_199/Conv3D/ReadVariableOp2V
)model_7/conv3d_200/BiasAdd/ReadVariableOp)model_7/conv3d_200/BiasAdd/ReadVariableOp2T
(model_7/conv3d_200/Conv3D/ReadVariableOp(model_7/conv3d_200/Conv3D/ReadVariableOp2V
)model_7/conv3d_201/BiasAdd/ReadVariableOp)model_7/conv3d_201/BiasAdd/ReadVariableOp2T
(model_7/conv3d_201/Conv3D/ReadVariableOp(model_7/conv3d_201/Conv3D/ReadVariableOp2V
)model_7/conv3d_202/BiasAdd/ReadVariableOp)model_7/conv3d_202/BiasAdd/ReadVariableOp2T
(model_7/conv3d_202/Conv3D/ReadVariableOp(model_7/conv3d_202/Conv3D/ReadVariableOp2V
)model_7/conv3d_203/BiasAdd/ReadVariableOp)model_7/conv3d_203/BiasAdd/ReadVariableOp2T
(model_7/conv3d_203/Conv3D/ReadVariableOp(model_7/conv3d_203/Conv3D/ReadVariableOp2V
)model_7/conv3d_204/BiasAdd/ReadVariableOp)model_7/conv3d_204/BiasAdd/ReadVariableOp2T
(model_7/conv3d_204/Conv3D/ReadVariableOp(model_7/conv3d_204/Conv3D/ReadVariableOp2V
)model_7/conv3d_205/BiasAdd/ReadVariableOp)model_7/conv3d_205/BiasAdd/ReadVariableOp2T
(model_7/conv3d_205/Conv3D/ReadVariableOp(model_7/conv3d_205/Conv3D/ReadVariableOp2V
)model_7/conv3d_206/BiasAdd/ReadVariableOp)model_7/conv3d_206/BiasAdd/ReadVariableOp2T
(model_7/conv3d_206/Conv3D/ReadVariableOp(model_7/conv3d_206/Conv3D/ReadVariableOp2V
)model_7/conv3d_207/BiasAdd/ReadVariableOp)model_7/conv3d_207/BiasAdd/ReadVariableOp2T
(model_7/conv3d_207/Conv3D/ReadVariableOp(model_7/conv3d_207/Conv3D/ReadVariableOp2V
)model_7/conv3d_208/BiasAdd/ReadVariableOp)model_7/conv3d_208/BiasAdd/ReadVariableOp2T
(model_7/conv3d_208/Conv3D/ReadVariableOp(model_7/conv3d_208/Conv3D/ReadVariableOp2V
)model_7/conv3d_209/BiasAdd/ReadVariableOp)model_7/conv3d_209/BiasAdd/ReadVariableOp2T
(model_7/conv3d_209/Conv3D/ReadVariableOp(model_7/conv3d_209/Conv3D/ReadVariableOp2V
)model_7/conv3d_210/BiasAdd/ReadVariableOp)model_7/conv3d_210/BiasAdd/ReadVariableOp2T
(model_7/conv3d_210/Conv3D/ReadVariableOp(model_7/conv3d_210/Conv3D/ReadVariableOp2V
)model_7/conv3d_211/BiasAdd/ReadVariableOp)model_7/conv3d_211/BiasAdd/ReadVariableOp2T
(model_7/conv3d_211/Conv3D/ReadVariableOp(model_7/conv3d_211/Conv3D/ReadVariableOp2V
)model_7/conv3d_212/BiasAdd/ReadVariableOp)model_7/conv3d_212/BiasAdd/ReadVariableOp2T
(model_7/conv3d_212/Conv3D/ReadVariableOp(model_7/conv3d_212/Conv3D/ReadVariableOp2V
)model_7/conv3d_213/BiasAdd/ReadVariableOp)model_7/conv3d_213/BiasAdd/ReadVariableOp2T
(model_7/conv3d_213/Conv3D/ReadVariableOp(model_7/conv3d_213/Conv3D/ReadVariableOp2V
)model_7/conv3d_214/BiasAdd/ReadVariableOp)model_7/conv3d_214/BiasAdd/ReadVariableOp2T
(model_7/conv3d_214/Conv3D/ReadVariableOp(model_7/conv3d_214/Conv3D/ReadVariableOp2V
)model_7/conv3d_215/BiasAdd/ReadVariableOp)model_7/conv3d_215/BiasAdd/ReadVariableOp2T
(model_7/conv3d_215/Conv3D/ReadVariableOp(model_7/conv3d_215/Conv3D/ReadVariableOp2h
2model_7/conv3d_transpose_28/BiasAdd/ReadVariableOp2model_7/conv3d_transpose_28/BiasAdd/ReadVariableOp2z
;model_7/conv3d_transpose_28/conv3d_transpose/ReadVariableOp;model_7/conv3d_transpose_28/conv3d_transpose/ReadVariableOp2h
2model_7/conv3d_transpose_29/BiasAdd/ReadVariableOp2model_7/conv3d_transpose_29/BiasAdd/ReadVariableOp2z
;model_7/conv3d_transpose_29/conv3d_transpose/ReadVariableOp;model_7/conv3d_transpose_29/conv3d_transpose/ReadVariableOp2h
2model_7/conv3d_transpose_30/BiasAdd/ReadVariableOp2model_7/conv3d_transpose_30/BiasAdd/ReadVariableOp2z
;model_7/conv3d_transpose_30/conv3d_transpose/ReadVariableOp;model_7/conv3d_transpose_30/conv3d_transpose/ReadVariableOp2h
2model_7/conv3d_transpose_31/BiasAdd/ReadVariableOp2model_7/conv3d_transpose_31/BiasAdd/ReadVariableOp2z
;model_7/conv3d_transpose_31/conv3d_transpose/ReadVariableOp;model_7/conv3d_transpose_31/conv3d_transpose/ReadVariableOp:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_8
�
�
F__inference_conv3d_208_layer_call_and_return_conditional_losses_238610

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
�
v
J__inference_concatenate_29_layer_call_and_return_conditional_losses_241615
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
inputs/1
�
h
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_237966

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
+__inference_conv3d_208_layer_call_fn_241761

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_208_layer_call_and_return_conditional_losses_238610�
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
F__inference_conv3d_208_layer_call_and_return_conditional_losses_241772

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
�&
�
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_238062

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
F__inference_conv3d_213_layer_call_and_return_conditional_losses_238709

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
+__inference_conv3d_191_layer_call_fn_241214

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_191_layer_call_and_return_conditional_losses_238276�
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
�"
�
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_238154

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
�
(__inference_model_7_layer_call_fn_240204

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
GPU2*0J 8� *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_238750�
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
�
�
+__inference_conv3d_193_layer_call_fn_241264

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_193_layer_call_and_return_conditional_losses_238311�
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
�
�
F__inference_conv3d_190_layer_call_and_return_conditional_losses_241195

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
+__inference_conv3d_213_layer_call_fn_241918

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_213_layer_call_and_return_conditional_losses_238709�
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
F__inference_conv3d_193_layer_call_and_return_conditional_losses_238311

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
�
+__inference_conv3d_214_layer_call_fn_241938

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_214_layer_call_and_return_conditional_losses_238726�
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
�
h
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_241255

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
F__inference_conv3d_194_layer_call_and_return_conditional_losses_238328

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
F__inference_conv3d_212_layer_call_and_return_conditional_losses_241909

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
�
I
-__inference_cropping3d_7_layer_call_fn_241954

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
GPU2*0J 8� *Q
fLRJ
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_238219�
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
�
h
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_238002

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
F__inference_conv3d_207_layer_call_and_return_conditional_losses_238584

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
F__inference_conv3d_199_layer_call_and_return_conditional_losses_238420

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
F__inference_conv3d_202_layer_call_and_return_conditional_losses_238480

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
�3
C__inference_model_7_layer_call_and_return_conditional_losses_240673

inputsG
)conv3d_189_conv3d_readvariableop_resource:8
*conv3d_189_biasadd_readvariableop_resource:G
)conv3d_190_conv3d_readvariableop_resource:8
*conv3d_190_biasadd_readvariableop_resource:G
)conv3d_191_conv3d_readvariableop_resource: 8
*conv3d_191_biasadd_readvariableop_resource: G
)conv3d_192_conv3d_readvariableop_resource:  8
*conv3d_192_biasadd_readvariableop_resource: G
)conv3d_193_conv3d_readvariableop_resource: @8
*conv3d_193_biasadd_readvariableop_resource:@G
)conv3d_194_conv3d_readvariableop_resource:@@8
*conv3d_194_biasadd_readvariableop_resource:@H
)conv3d_195_conv3d_readvariableop_resource:@�9
*conv3d_195_biasadd_readvariableop_resource:	�I
)conv3d_196_conv3d_readvariableop_resource:��9
*conv3d_196_biasadd_readvariableop_resource:	�I
)conv3d_197_conv3d_readvariableop_resource:��9
*conv3d_197_biasadd_readvariableop_resource:	�I
)conv3d_198_conv3d_readvariableop_resource:��9
*conv3d_198_biasadd_readvariableop_resource:	�\
<conv3d_transpose_28_conv3d_transpose_readvariableop_resource:��B
3conv3d_transpose_28_biasadd_readvariableop_resource:	�I
)conv3d_199_conv3d_readvariableop_resource:��9
*conv3d_199_biasadd_readvariableop_resource:	�I
)conv3d_200_conv3d_readvariableop_resource:��9
*conv3d_200_biasadd_readvariableop_resource:	�I
)conv3d_201_conv3d_readvariableop_resource:��9
*conv3d_201_biasadd_readvariableop_resource:	�I
)conv3d_202_conv3d_readvariableop_resource:��9
*conv3d_202_biasadd_readvariableop_resource:	�[
<conv3d_transpose_29_conv3d_transpose_readvariableop_resource:@�A
3conv3d_transpose_29_biasadd_readvariableop_resource:@G
)conv3d_203_conv3d_readvariableop_resource:@@8
*conv3d_203_biasadd_readvariableop_resource:@H
)conv3d_204_conv3d_readvariableop_resource:�@8
*conv3d_204_biasadd_readvariableop_resource:@G
)conv3d_205_conv3d_readvariableop_resource:@@8
*conv3d_205_biasadd_readvariableop_resource:@G
)conv3d_206_conv3d_readvariableop_resource:@@8
*conv3d_206_biasadd_readvariableop_resource:@Z
<conv3d_transpose_30_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_30_biasadd_readvariableop_resource: G
)conv3d_207_conv3d_readvariableop_resource:  8
*conv3d_207_biasadd_readvariableop_resource: G
)conv3d_208_conv3d_readvariableop_resource:@ 8
*conv3d_208_biasadd_readvariableop_resource: G
)conv3d_209_conv3d_readvariableop_resource:  8
*conv3d_209_biasadd_readvariableop_resource: G
)conv3d_210_conv3d_readvariableop_resource:  8
*conv3d_210_biasadd_readvariableop_resource: Z
<conv3d_transpose_31_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_31_biasadd_readvariableop_resource:G
)conv3d_211_conv3d_readvariableop_resource:8
*conv3d_211_biasadd_readvariableop_resource:G
)conv3d_212_conv3d_readvariableop_resource: 8
*conv3d_212_biasadd_readvariableop_resource:G
)conv3d_213_conv3d_readvariableop_resource:8
*conv3d_213_biasadd_readvariableop_resource:G
)conv3d_214_conv3d_readvariableop_resource:8
*conv3d_214_biasadd_readvariableop_resource:G
)conv3d_215_conv3d_readvariableop_resource:8
*conv3d_215_biasadd_readvariableop_resource:
identity��!conv3d_189/BiasAdd/ReadVariableOp� conv3d_189/Conv3D/ReadVariableOp�!conv3d_190/BiasAdd/ReadVariableOp� conv3d_190/Conv3D/ReadVariableOp�!conv3d_191/BiasAdd/ReadVariableOp� conv3d_191/Conv3D/ReadVariableOp�!conv3d_192/BiasAdd/ReadVariableOp� conv3d_192/Conv3D/ReadVariableOp�!conv3d_193/BiasAdd/ReadVariableOp� conv3d_193/Conv3D/ReadVariableOp�!conv3d_194/BiasAdd/ReadVariableOp� conv3d_194/Conv3D/ReadVariableOp�!conv3d_195/BiasAdd/ReadVariableOp� conv3d_195/Conv3D/ReadVariableOp�!conv3d_196/BiasAdd/ReadVariableOp� conv3d_196/Conv3D/ReadVariableOp�!conv3d_197/BiasAdd/ReadVariableOp� conv3d_197/Conv3D/ReadVariableOp�!conv3d_198/BiasAdd/ReadVariableOp� conv3d_198/Conv3D/ReadVariableOp�!conv3d_199/BiasAdd/ReadVariableOp� conv3d_199/Conv3D/ReadVariableOp�!conv3d_200/BiasAdd/ReadVariableOp� conv3d_200/Conv3D/ReadVariableOp�!conv3d_201/BiasAdd/ReadVariableOp� conv3d_201/Conv3D/ReadVariableOp�!conv3d_202/BiasAdd/ReadVariableOp� conv3d_202/Conv3D/ReadVariableOp�!conv3d_203/BiasAdd/ReadVariableOp� conv3d_203/Conv3D/ReadVariableOp�!conv3d_204/BiasAdd/ReadVariableOp� conv3d_204/Conv3D/ReadVariableOp�!conv3d_205/BiasAdd/ReadVariableOp� conv3d_205/Conv3D/ReadVariableOp�!conv3d_206/BiasAdd/ReadVariableOp� conv3d_206/Conv3D/ReadVariableOp�!conv3d_207/BiasAdd/ReadVariableOp� conv3d_207/Conv3D/ReadVariableOp�!conv3d_208/BiasAdd/ReadVariableOp� conv3d_208/Conv3D/ReadVariableOp�!conv3d_209/BiasAdd/ReadVariableOp� conv3d_209/Conv3D/ReadVariableOp�!conv3d_210/BiasAdd/ReadVariableOp� conv3d_210/Conv3D/ReadVariableOp�!conv3d_211/BiasAdd/ReadVariableOp� conv3d_211/Conv3D/ReadVariableOp�!conv3d_212/BiasAdd/ReadVariableOp� conv3d_212/Conv3D/ReadVariableOp�!conv3d_213/BiasAdd/ReadVariableOp� conv3d_213/Conv3D/ReadVariableOp�!conv3d_214/BiasAdd/ReadVariableOp� conv3d_214/Conv3D/ReadVariableOp�!conv3d_215/BiasAdd/ReadVariableOp� conv3d_215/Conv3D/ReadVariableOp�*conv3d_transpose_28/BiasAdd/ReadVariableOp�3conv3d_transpose_28/conv3d_transpose/ReadVariableOp�*conv3d_transpose_29/BiasAdd/ReadVariableOp�3conv3d_transpose_29/conv3d_transpose/ReadVariableOp�*conv3d_transpose_30/BiasAdd/ReadVariableOp�3conv3d_transpose_30/conv3d_transpose/ReadVariableOp�*conv3d_transpose_31/BiasAdd/ReadVariableOp�3conv3d_transpose_31/conv3d_transpose/ReadVariableOp�
zero_padding3d_7/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
zero_padding3d_7/PadPadinputs&zero_padding3d_7/Pad/paddings:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_189/Conv3D/ReadVariableOpReadVariableOp)conv3d_189_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_189/Conv3DConv3Dzero_padding3d_7/Pad:output:0(conv3d_189/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_189/BiasAdd/ReadVariableOpReadVariableOp*conv3d_189_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_189/BiasAddBiasAddconv3d_189/Conv3D:output:0)conv3d_189/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_189/ReluReluconv3d_189/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_190/Conv3D/ReadVariableOpReadVariableOp)conv3d_190_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_190/Conv3DConv3Dconv3d_189/Relu:activations:0(conv3d_190/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_190/BiasAdd/ReadVariableOpReadVariableOp*conv3d_190_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_190/BiasAddBiasAddconv3d_190/Conv3D:output:0)conv3d_190/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_190/ReluReluconv3d_190/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
max_pooling3d_28/MaxPool3D	MaxPool3Dconv3d_190/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
ksize	
*
paddingVALID*
strides	
�
 conv3d_191/Conv3D/ReadVariableOpReadVariableOp)conv3d_191_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_191/Conv3DConv3D#max_pooling3d_28/MaxPool3D:output:0(conv3d_191/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_191/BiasAdd/ReadVariableOpReadVariableOp*conv3d_191_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_191/BiasAddBiasAddconv3d_191/Conv3D:output:0)conv3d_191/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_191/ReluReluconv3d_191/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_192/Conv3D/ReadVariableOpReadVariableOp)conv3d_192_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_192/Conv3DConv3Dconv3d_191/Relu:activations:0(conv3d_192/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_192/BiasAdd/ReadVariableOpReadVariableOp*conv3d_192_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_192/BiasAddBiasAddconv3d_192/Conv3D:output:0)conv3d_192/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_192/ReluReluconv3d_192/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
max_pooling3d_29/MaxPool3D	MaxPool3Dconv3d_192/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
ksize	
*
paddingVALID*
strides	
�
 conv3d_193/Conv3D/ReadVariableOpReadVariableOp)conv3d_193_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
conv3d_193/Conv3DConv3D#max_pooling3d_29/MaxPool3D:output:0(conv3d_193/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_193/BiasAdd/ReadVariableOpReadVariableOp*conv3d_193_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_193/BiasAddBiasAddconv3d_193/Conv3D:output:0)conv3d_193/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_193/ReluReluconv3d_193/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_194/Conv3D/ReadVariableOpReadVariableOp)conv3d_194_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_194/Conv3DConv3Dconv3d_193/Relu:activations:0(conv3d_194/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_194/BiasAdd/ReadVariableOpReadVariableOp*conv3d_194_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_194/BiasAddBiasAddconv3d_194/Conv3D:output:0)conv3d_194/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_194/ReluReluconv3d_194/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
max_pooling3d_30/MaxPool3D	MaxPool3Dconv3d_194/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
ksize	
*
paddingVALID*
strides	
�
 conv3d_195/Conv3D/ReadVariableOpReadVariableOp)conv3d_195_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_195/Conv3DConv3D#max_pooling3d_30/MaxPool3D:output:0(conv3d_195/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_195/BiasAdd/ReadVariableOpReadVariableOp*conv3d_195_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_195/BiasAddBiasAddconv3d_195/Conv3D:output:0)conv3d_195/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_195/ReluReluconv3d_195/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_196/Conv3D/ReadVariableOpReadVariableOp)conv3d_196_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_196/Conv3DConv3Dconv3d_195/Relu:activations:0(conv3d_196/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_196/BiasAdd/ReadVariableOpReadVariableOp*conv3d_196_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_196/BiasAddBiasAddconv3d_196/Conv3D:output:0)conv3d_196/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_196/ReluReluconv3d_196/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
max_pooling3d_31/MaxPool3D	MaxPool3Dconv3d_196/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
ksize	
*
paddingVALID*
strides	
�
 conv3d_197/Conv3D/ReadVariableOpReadVariableOp)conv3d_197_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_197/Conv3DConv3D#max_pooling3d_31/MaxPool3D:output:0(conv3d_197/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_197/BiasAdd/ReadVariableOpReadVariableOp*conv3d_197_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_197/BiasAddBiasAddconv3d_197/Conv3D:output:0)conv3d_197/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_197/ReluReluconv3d_197/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_198/Conv3D/ReadVariableOpReadVariableOp)conv3d_198_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_198/Conv3DConv3Dconv3d_197/Relu:activations:0(conv3d_198/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_198/BiasAdd/ReadVariableOpReadVariableOp*conv3d_198_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_198/BiasAddBiasAddconv3d_198/Conv3D:output:0)conv3d_198/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_198/ReluReluconv3d_198/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������f
conv3d_transpose_28/ShapeShapeconv3d_198/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_28/strided_sliceStridedSlice"conv3d_transpose_28/Shape:output:00conv3d_transpose_28/strided_slice/stack:output:02conv3d_transpose_28/strided_slice/stack_1:output:02conv3d_transpose_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_28/strided_slice_1StridedSlice"conv3d_transpose_28/Shape:output:02conv3d_transpose_28/strided_slice_1/stack:output:04conv3d_transpose_28/strided_slice_1/stack_1:output:04conv3d_transpose_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_28/strided_slice_2StridedSlice"conv3d_transpose_28/Shape:output:02conv3d_transpose_28/strided_slice_2/stack:output:04conv3d_transpose_28/strided_slice_2/stack_1:output:04conv3d_transpose_28/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_28/strided_slice_3StridedSlice"conv3d_transpose_28/Shape:output:02conv3d_transpose_28/strided_slice_3/stack:output:04conv3d_transpose_28/strided_slice_3/stack_1:output:04conv3d_transpose_28/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_28/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_28/mulMul,conv3d_transpose_28/strided_slice_1:output:0"conv3d_transpose_28/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_28/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_28/addAddV2conv3d_transpose_28/mul:z:0"conv3d_transpose_28/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_28/mul_1Mul,conv3d_transpose_28/strided_slice_2:output:0$conv3d_transpose_28/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_28/add_1AddV2conv3d_transpose_28/mul_1:z:0$conv3d_transpose_28/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_28/mul_2Mul,conv3d_transpose_28/strided_slice_3:output:0$conv3d_transpose_28/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_28/add_2AddV2conv3d_transpose_28/mul_2:z:0$conv3d_transpose_28/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_28/stack/4Const*
_output_shapes
: *
dtype0*
value
B :��
conv3d_transpose_28/stackPack*conv3d_transpose_28/strided_slice:output:0conv3d_transpose_28/add:z:0conv3d_transpose_28/add_1:z:0conv3d_transpose_28/add_2:z:0$conv3d_transpose_28/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_28/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_28_conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
$conv3d_transpose_28/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_28/stack:output:0;conv3d_transpose_28/conv3d_transpose/ReadVariableOp:value:0conv3d_198/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
�
*conv3d_transpose_28/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_28_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_transpose_28/BiasAddBiasAdd-conv3d_transpose_28/conv3d_transpose:output:02conv3d_transpose_28/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_199/Conv3D/ReadVariableOpReadVariableOp)conv3d_199_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_199/Conv3DConv3D$conv3d_transpose_28/BiasAdd:output:0(conv3d_199/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_199/BiasAdd/ReadVariableOpReadVariableOp*conv3d_199_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_199/BiasAddBiasAddconv3d_199/Conv3D:output:0)conv3d_199/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_199/ReluReluconv3d_199/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������\
concatenate_28/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_28/concatConcatV2conv3d_196/Relu:activations:0conv3d_199/Relu:activations:0#concatenate_28/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_200/Conv3D/ReadVariableOpReadVariableOp)conv3d_200_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_200/Conv3DConv3Dconcatenate_28/concat:output:0(conv3d_200/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_200/BiasAdd/ReadVariableOpReadVariableOp*conv3d_200_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_200/BiasAddBiasAddconv3d_200/Conv3D:output:0)conv3d_200/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_200/ReluReluconv3d_200/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_201/Conv3D/ReadVariableOpReadVariableOp)conv3d_201_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_201/Conv3DConv3Dconv3d_200/Relu:activations:0(conv3d_201/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_201/BiasAdd/ReadVariableOpReadVariableOp*conv3d_201_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_201/BiasAddBiasAddconv3d_201/Conv3D:output:0)conv3d_201/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_201/ReluReluconv3d_201/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_202/Conv3D/ReadVariableOpReadVariableOp)conv3d_202_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_202/Conv3DConv3Dconv3d_201/Relu:activations:0(conv3d_202/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_202/BiasAdd/ReadVariableOpReadVariableOp*conv3d_202_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_202/BiasAddBiasAddconv3d_202/Conv3D:output:0)conv3d_202/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_202/ReluReluconv3d_202/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������f
conv3d_transpose_29/ShapeShapeconv3d_202/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_29/strided_sliceStridedSlice"conv3d_transpose_29/Shape:output:00conv3d_transpose_29/strided_slice/stack:output:02conv3d_transpose_29/strided_slice/stack_1:output:02conv3d_transpose_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_29/strided_slice_1StridedSlice"conv3d_transpose_29/Shape:output:02conv3d_transpose_29/strided_slice_1/stack:output:04conv3d_transpose_29/strided_slice_1/stack_1:output:04conv3d_transpose_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_29/strided_slice_2StridedSlice"conv3d_transpose_29/Shape:output:02conv3d_transpose_29/strided_slice_2/stack:output:04conv3d_transpose_29/strided_slice_2/stack_1:output:04conv3d_transpose_29/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_29/strided_slice_3StridedSlice"conv3d_transpose_29/Shape:output:02conv3d_transpose_29/strided_slice_3/stack:output:04conv3d_transpose_29/strided_slice_3/stack_1:output:04conv3d_transpose_29/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_29/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_29/mulMul,conv3d_transpose_29/strided_slice_1:output:0"conv3d_transpose_29/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_29/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_29/mul_1Mul,conv3d_transpose_29/strided_slice_2:output:0$conv3d_transpose_29/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_29/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_29/mul_2Mul,conv3d_transpose_29/strided_slice_3:output:0$conv3d_transpose_29/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_29/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@�
conv3d_transpose_29/stackPack*conv3d_transpose_29/strided_slice:output:0conv3d_transpose_29/mul:z:0conv3d_transpose_29/mul_1:z:0conv3d_transpose_29/mul_2:z:0$conv3d_transpose_29/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_29/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_29_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
$conv3d_transpose_29/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_29/stack:output:0;conv3d_transpose_29/conv3d_transpose/ReadVariableOp:value:0conv3d_202/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
*conv3d_transpose_29/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_transpose_29/BiasAddBiasAdd-conv3d_transpose_29/conv3d_transpose:output:02conv3d_transpose_29/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_203/Conv3D/ReadVariableOpReadVariableOp)conv3d_203_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_203/Conv3DConv3D$conv3d_transpose_29/BiasAdd:output:0(conv3d_203/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_203/BiasAdd/ReadVariableOpReadVariableOp*conv3d_203_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_203/BiasAddBiasAddconv3d_203/Conv3D:output:0)conv3d_203/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_203/ReluReluconv3d_203/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@\
concatenate_29/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_29/concatConcatV2conv3d_194/Relu:activations:0conv3d_203/Relu:activations:0#concatenate_29/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_204/Conv3D/ReadVariableOpReadVariableOp)conv3d_204_conv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
conv3d_204/Conv3DConv3Dconcatenate_29/concat:output:0(conv3d_204/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_204/BiasAdd/ReadVariableOpReadVariableOp*conv3d_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_204/BiasAddBiasAddconv3d_204/Conv3D:output:0)conv3d_204/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_204/ReluReluconv3d_204/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_205/Conv3D/ReadVariableOpReadVariableOp)conv3d_205_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_205/Conv3DConv3Dconv3d_204/Relu:activations:0(conv3d_205/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_205/BiasAdd/ReadVariableOpReadVariableOp*conv3d_205_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_205/BiasAddBiasAddconv3d_205/Conv3D:output:0)conv3d_205/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_205/ReluReluconv3d_205/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_206/Conv3D/ReadVariableOpReadVariableOp)conv3d_206_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_206/Conv3DConv3Dconv3d_205/Relu:activations:0(conv3d_206/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_206/BiasAdd/ReadVariableOpReadVariableOp*conv3d_206_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_206/BiasAddBiasAddconv3d_206/Conv3D:output:0)conv3d_206/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_206/ReluReluconv3d_206/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@f
conv3d_transpose_30/ShapeShapeconv3d_206/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_30/strided_sliceStridedSlice"conv3d_transpose_30/Shape:output:00conv3d_transpose_30/strided_slice/stack:output:02conv3d_transpose_30/strided_slice/stack_1:output:02conv3d_transpose_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_30/strided_slice_1StridedSlice"conv3d_transpose_30/Shape:output:02conv3d_transpose_30/strided_slice_1/stack:output:04conv3d_transpose_30/strided_slice_1/stack_1:output:04conv3d_transpose_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_30/strided_slice_2StridedSlice"conv3d_transpose_30/Shape:output:02conv3d_transpose_30/strided_slice_2/stack:output:04conv3d_transpose_30/strided_slice_2/stack_1:output:04conv3d_transpose_30/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_30/strided_slice_3StridedSlice"conv3d_transpose_30/Shape:output:02conv3d_transpose_30/strided_slice_3/stack:output:04conv3d_transpose_30/strided_slice_3/stack_1:output:04conv3d_transpose_30/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_30/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_30/mulMul,conv3d_transpose_30/strided_slice_1:output:0"conv3d_transpose_30/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_30/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_30/mul_1Mul,conv3d_transpose_30/strided_slice_2:output:0$conv3d_transpose_30/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_30/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_30/mul_2Mul,conv3d_transpose_30/strided_slice_3:output:0$conv3d_transpose_30/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_30/stack/4Const*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_30/stackPack*conv3d_transpose_30/strided_slice:output:0conv3d_transpose_30/mul:z:0conv3d_transpose_30/mul_1:z:0conv3d_transpose_30/mul_2:z:0$conv3d_transpose_30/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_30/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_30_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
$conv3d_transpose_30/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_30/stack:output:0;conv3d_transpose_30/conv3d_transpose/ReadVariableOp:value:0conv3d_206/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
*conv3d_transpose_30/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_transpose_30/BiasAddBiasAdd-conv3d_transpose_30/conv3d_transpose:output:02conv3d_transpose_30/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_207/Conv3D/ReadVariableOpReadVariableOp)conv3d_207_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_207/Conv3DConv3D$conv3d_transpose_30/BiasAdd:output:0(conv3d_207/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_207/BiasAdd/ReadVariableOpReadVariableOp*conv3d_207_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_207/BiasAddBiasAddconv3d_207/Conv3D:output:0)conv3d_207/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_207/ReluReluconv3d_207/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ \
concatenate_30/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_30/concatConcatV2conv3d_192/Relu:activations:0conv3d_207/Relu:activations:0#concatenate_30/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_208/Conv3D/ReadVariableOpReadVariableOp)conv3d_208_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
conv3d_208/Conv3DConv3Dconcatenate_30/concat:output:0(conv3d_208/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_208/BiasAdd/ReadVariableOpReadVariableOp*conv3d_208_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_208/BiasAddBiasAddconv3d_208/Conv3D:output:0)conv3d_208/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_208/ReluReluconv3d_208/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_209/Conv3D/ReadVariableOpReadVariableOp)conv3d_209_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_209/Conv3DConv3Dconv3d_208/Relu:activations:0(conv3d_209/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_209/BiasAdd/ReadVariableOpReadVariableOp*conv3d_209_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_209/BiasAddBiasAddconv3d_209/Conv3D:output:0)conv3d_209/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_209/ReluReluconv3d_209/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_210/Conv3D/ReadVariableOpReadVariableOp)conv3d_210_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_210/Conv3DConv3Dconv3d_209/Relu:activations:0(conv3d_210/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_210/BiasAdd/ReadVariableOpReadVariableOp*conv3d_210_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_210/BiasAddBiasAddconv3d_210/Conv3D:output:0)conv3d_210/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_210/ReluReluconv3d_210/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ f
conv3d_transpose_31/ShapeShapeconv3d_210/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_31/strided_sliceStridedSlice"conv3d_transpose_31/Shape:output:00conv3d_transpose_31/strided_slice/stack:output:02conv3d_transpose_31/strided_slice/stack_1:output:02conv3d_transpose_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_31/strided_slice_1StridedSlice"conv3d_transpose_31/Shape:output:02conv3d_transpose_31/strided_slice_1/stack:output:04conv3d_transpose_31/strided_slice_1/stack_1:output:04conv3d_transpose_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_31/strided_slice_2StridedSlice"conv3d_transpose_31/Shape:output:02conv3d_transpose_31/strided_slice_2/stack:output:04conv3d_transpose_31/strided_slice_2/stack_1:output:04conv3d_transpose_31/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_31/strided_slice_3StridedSlice"conv3d_transpose_31/Shape:output:02conv3d_transpose_31/strided_slice_3/stack:output:04conv3d_transpose_31/strided_slice_3/stack_1:output:04conv3d_transpose_31/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_31/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/mulMul,conv3d_transpose_31/strided_slice_1:output:0"conv3d_transpose_31/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_31/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/mul_1Mul,conv3d_transpose_31/strided_slice_2:output:0$conv3d_transpose_31/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_31/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/mul_2Mul,conv3d_transpose_31/strided_slice_3:output:0$conv3d_transpose_31/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_31/stack/4Const*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/stackPack*conv3d_transpose_31/strided_slice:output:0conv3d_transpose_31/mul:z:0conv3d_transpose_31/mul_1:z:0conv3d_transpose_31/mul_2:z:0$conv3d_transpose_31/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_31/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_31_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
$conv3d_transpose_31/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_31/stack:output:0;conv3d_transpose_31/conv3d_transpose/ReadVariableOp:value:0conv3d_210/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
*conv3d_transpose_31/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_transpose_31/BiasAddBiasAdd-conv3d_transpose_31/conv3d_transpose:output:02conv3d_transpose_31/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_211/Conv3D/ReadVariableOpReadVariableOp)conv3d_211_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_211/Conv3DConv3D$conv3d_transpose_31/BiasAdd:output:0(conv3d_211/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_211/BiasAdd/ReadVariableOpReadVariableOp*conv3d_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_211/BiasAddBiasAddconv3d_211/Conv3D:output:0)conv3d_211/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_211/ReluReluconv3d_211/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������\
concatenate_31/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_31/concatConcatV2conv3d_190/Relu:activations:0conv3d_211/Relu:activations:0#concatenate_31/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_212/Conv3D/ReadVariableOpReadVariableOp)conv3d_212_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_212/Conv3DConv3Dconcatenate_31/concat:output:0(conv3d_212/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_212/BiasAdd/ReadVariableOpReadVariableOp*conv3d_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_212/BiasAddBiasAddconv3d_212/Conv3D:output:0)conv3d_212/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_212/ReluReluconv3d_212/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_213/Conv3D/ReadVariableOpReadVariableOp)conv3d_213_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_213/Conv3DConv3Dconv3d_212/Relu:activations:0(conv3d_213/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_213/BiasAdd/ReadVariableOpReadVariableOp*conv3d_213_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_213/BiasAddBiasAddconv3d_213/Conv3D:output:0)conv3d_213/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_213/ReluReluconv3d_213/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_214/Conv3D/ReadVariableOpReadVariableOp)conv3d_214_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_214/Conv3DConv3Dconv3d_213/Relu:activations:0(conv3d_214/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_214/BiasAdd/ReadVariableOpReadVariableOp*conv3d_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_214/BiasAddBiasAddconv3d_214/Conv3D:output:0)conv3d_214/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_214/ReluReluconv3d_214/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������}
 cropping3d_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
"cropping3d_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
"cropping3d_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               �
cropping3d_7/strided_sliceStridedSliceconv3d_214/Relu:activations:0)cropping3d_7/strided_slice/stack:output:0+cropping3d_7/strided_slice/stack_1:output:0+cropping3d_7/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8������������������������������������*

begin_mask*
end_mask�
 conv3d_215/Conv3D/ReadVariableOpReadVariableOp)conv3d_215_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_215/Conv3DConv3D#cropping3d_7/strided_slice:output:0(conv3d_215/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_215/BiasAdd/ReadVariableOpReadVariableOp*conv3d_215_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_215/BiasAddBiasAddconv3d_215/Conv3D:output:0)conv3d_215/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityconv3d_215/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp"^conv3d_189/BiasAdd/ReadVariableOp!^conv3d_189/Conv3D/ReadVariableOp"^conv3d_190/BiasAdd/ReadVariableOp!^conv3d_190/Conv3D/ReadVariableOp"^conv3d_191/BiasAdd/ReadVariableOp!^conv3d_191/Conv3D/ReadVariableOp"^conv3d_192/BiasAdd/ReadVariableOp!^conv3d_192/Conv3D/ReadVariableOp"^conv3d_193/BiasAdd/ReadVariableOp!^conv3d_193/Conv3D/ReadVariableOp"^conv3d_194/BiasAdd/ReadVariableOp!^conv3d_194/Conv3D/ReadVariableOp"^conv3d_195/BiasAdd/ReadVariableOp!^conv3d_195/Conv3D/ReadVariableOp"^conv3d_196/BiasAdd/ReadVariableOp!^conv3d_196/Conv3D/ReadVariableOp"^conv3d_197/BiasAdd/ReadVariableOp!^conv3d_197/Conv3D/ReadVariableOp"^conv3d_198/BiasAdd/ReadVariableOp!^conv3d_198/Conv3D/ReadVariableOp"^conv3d_199/BiasAdd/ReadVariableOp!^conv3d_199/Conv3D/ReadVariableOp"^conv3d_200/BiasAdd/ReadVariableOp!^conv3d_200/Conv3D/ReadVariableOp"^conv3d_201/BiasAdd/ReadVariableOp!^conv3d_201/Conv3D/ReadVariableOp"^conv3d_202/BiasAdd/ReadVariableOp!^conv3d_202/Conv3D/ReadVariableOp"^conv3d_203/BiasAdd/ReadVariableOp!^conv3d_203/Conv3D/ReadVariableOp"^conv3d_204/BiasAdd/ReadVariableOp!^conv3d_204/Conv3D/ReadVariableOp"^conv3d_205/BiasAdd/ReadVariableOp!^conv3d_205/Conv3D/ReadVariableOp"^conv3d_206/BiasAdd/ReadVariableOp!^conv3d_206/Conv3D/ReadVariableOp"^conv3d_207/BiasAdd/ReadVariableOp!^conv3d_207/Conv3D/ReadVariableOp"^conv3d_208/BiasAdd/ReadVariableOp!^conv3d_208/Conv3D/ReadVariableOp"^conv3d_209/BiasAdd/ReadVariableOp!^conv3d_209/Conv3D/ReadVariableOp"^conv3d_210/BiasAdd/ReadVariableOp!^conv3d_210/Conv3D/ReadVariableOp"^conv3d_211/BiasAdd/ReadVariableOp!^conv3d_211/Conv3D/ReadVariableOp"^conv3d_212/BiasAdd/ReadVariableOp!^conv3d_212/Conv3D/ReadVariableOp"^conv3d_213/BiasAdd/ReadVariableOp!^conv3d_213/Conv3D/ReadVariableOp"^conv3d_214/BiasAdd/ReadVariableOp!^conv3d_214/Conv3D/ReadVariableOp"^conv3d_215/BiasAdd/ReadVariableOp!^conv3d_215/Conv3D/ReadVariableOp+^conv3d_transpose_28/BiasAdd/ReadVariableOp4^conv3d_transpose_28/conv3d_transpose/ReadVariableOp+^conv3d_transpose_29/BiasAdd/ReadVariableOp4^conv3d_transpose_29/conv3d_transpose/ReadVariableOp+^conv3d_transpose_30/BiasAdd/ReadVariableOp4^conv3d_transpose_30/conv3d_transpose/ReadVariableOp+^conv3d_transpose_31/BiasAdd/ReadVariableOp4^conv3d_transpose_31/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_189/BiasAdd/ReadVariableOp!conv3d_189/BiasAdd/ReadVariableOp2D
 conv3d_189/Conv3D/ReadVariableOp conv3d_189/Conv3D/ReadVariableOp2F
!conv3d_190/BiasAdd/ReadVariableOp!conv3d_190/BiasAdd/ReadVariableOp2D
 conv3d_190/Conv3D/ReadVariableOp conv3d_190/Conv3D/ReadVariableOp2F
!conv3d_191/BiasAdd/ReadVariableOp!conv3d_191/BiasAdd/ReadVariableOp2D
 conv3d_191/Conv3D/ReadVariableOp conv3d_191/Conv3D/ReadVariableOp2F
!conv3d_192/BiasAdd/ReadVariableOp!conv3d_192/BiasAdd/ReadVariableOp2D
 conv3d_192/Conv3D/ReadVariableOp conv3d_192/Conv3D/ReadVariableOp2F
!conv3d_193/BiasAdd/ReadVariableOp!conv3d_193/BiasAdd/ReadVariableOp2D
 conv3d_193/Conv3D/ReadVariableOp conv3d_193/Conv3D/ReadVariableOp2F
!conv3d_194/BiasAdd/ReadVariableOp!conv3d_194/BiasAdd/ReadVariableOp2D
 conv3d_194/Conv3D/ReadVariableOp conv3d_194/Conv3D/ReadVariableOp2F
!conv3d_195/BiasAdd/ReadVariableOp!conv3d_195/BiasAdd/ReadVariableOp2D
 conv3d_195/Conv3D/ReadVariableOp conv3d_195/Conv3D/ReadVariableOp2F
!conv3d_196/BiasAdd/ReadVariableOp!conv3d_196/BiasAdd/ReadVariableOp2D
 conv3d_196/Conv3D/ReadVariableOp conv3d_196/Conv3D/ReadVariableOp2F
!conv3d_197/BiasAdd/ReadVariableOp!conv3d_197/BiasAdd/ReadVariableOp2D
 conv3d_197/Conv3D/ReadVariableOp conv3d_197/Conv3D/ReadVariableOp2F
!conv3d_198/BiasAdd/ReadVariableOp!conv3d_198/BiasAdd/ReadVariableOp2D
 conv3d_198/Conv3D/ReadVariableOp conv3d_198/Conv3D/ReadVariableOp2F
!conv3d_199/BiasAdd/ReadVariableOp!conv3d_199/BiasAdd/ReadVariableOp2D
 conv3d_199/Conv3D/ReadVariableOp conv3d_199/Conv3D/ReadVariableOp2F
!conv3d_200/BiasAdd/ReadVariableOp!conv3d_200/BiasAdd/ReadVariableOp2D
 conv3d_200/Conv3D/ReadVariableOp conv3d_200/Conv3D/ReadVariableOp2F
!conv3d_201/BiasAdd/ReadVariableOp!conv3d_201/BiasAdd/ReadVariableOp2D
 conv3d_201/Conv3D/ReadVariableOp conv3d_201/Conv3D/ReadVariableOp2F
!conv3d_202/BiasAdd/ReadVariableOp!conv3d_202/BiasAdd/ReadVariableOp2D
 conv3d_202/Conv3D/ReadVariableOp conv3d_202/Conv3D/ReadVariableOp2F
!conv3d_203/BiasAdd/ReadVariableOp!conv3d_203/BiasAdd/ReadVariableOp2D
 conv3d_203/Conv3D/ReadVariableOp conv3d_203/Conv3D/ReadVariableOp2F
!conv3d_204/BiasAdd/ReadVariableOp!conv3d_204/BiasAdd/ReadVariableOp2D
 conv3d_204/Conv3D/ReadVariableOp conv3d_204/Conv3D/ReadVariableOp2F
!conv3d_205/BiasAdd/ReadVariableOp!conv3d_205/BiasAdd/ReadVariableOp2D
 conv3d_205/Conv3D/ReadVariableOp conv3d_205/Conv3D/ReadVariableOp2F
!conv3d_206/BiasAdd/ReadVariableOp!conv3d_206/BiasAdd/ReadVariableOp2D
 conv3d_206/Conv3D/ReadVariableOp conv3d_206/Conv3D/ReadVariableOp2F
!conv3d_207/BiasAdd/ReadVariableOp!conv3d_207/BiasAdd/ReadVariableOp2D
 conv3d_207/Conv3D/ReadVariableOp conv3d_207/Conv3D/ReadVariableOp2F
!conv3d_208/BiasAdd/ReadVariableOp!conv3d_208/BiasAdd/ReadVariableOp2D
 conv3d_208/Conv3D/ReadVariableOp conv3d_208/Conv3D/ReadVariableOp2F
!conv3d_209/BiasAdd/ReadVariableOp!conv3d_209/BiasAdd/ReadVariableOp2D
 conv3d_209/Conv3D/ReadVariableOp conv3d_209/Conv3D/ReadVariableOp2F
!conv3d_210/BiasAdd/ReadVariableOp!conv3d_210/BiasAdd/ReadVariableOp2D
 conv3d_210/Conv3D/ReadVariableOp conv3d_210/Conv3D/ReadVariableOp2F
!conv3d_211/BiasAdd/ReadVariableOp!conv3d_211/BiasAdd/ReadVariableOp2D
 conv3d_211/Conv3D/ReadVariableOp conv3d_211/Conv3D/ReadVariableOp2F
!conv3d_212/BiasAdd/ReadVariableOp!conv3d_212/BiasAdd/ReadVariableOp2D
 conv3d_212/Conv3D/ReadVariableOp conv3d_212/Conv3D/ReadVariableOp2F
!conv3d_213/BiasAdd/ReadVariableOp!conv3d_213/BiasAdd/ReadVariableOp2D
 conv3d_213/Conv3D/ReadVariableOp conv3d_213/Conv3D/ReadVariableOp2F
!conv3d_214/BiasAdd/ReadVariableOp!conv3d_214/BiasAdd/ReadVariableOp2D
 conv3d_214/Conv3D/ReadVariableOp conv3d_214/Conv3D/ReadVariableOp2F
!conv3d_215/BiasAdd/ReadVariableOp!conv3d_215/BiasAdd/ReadVariableOp2D
 conv3d_215/Conv3D/ReadVariableOp conv3d_215/Conv3D/ReadVariableOp2X
*conv3d_transpose_28/BiasAdd/ReadVariableOp*conv3d_transpose_28/BiasAdd/ReadVariableOp2j
3conv3d_transpose_28/conv3d_transpose/ReadVariableOp3conv3d_transpose_28/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_29/BiasAdd/ReadVariableOp*conv3d_transpose_29/BiasAdd/ReadVariableOp2j
3conv3d_transpose_29/conv3d_transpose/ReadVariableOp3conv3d_transpose_29/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_30/BiasAdd/ReadVariableOp*conv3d_transpose_30/BiasAdd/ReadVariableOp2j
3conv3d_transpose_30/conv3d_transpose/ReadVariableOp3conv3d_transpose_30/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_31/BiasAdd/ReadVariableOp*conv3d_transpose_31/BiasAdd/ReadVariableOp2j
3conv3d_transpose_31/conv3d_transpose/ReadVariableOp3conv3d_transpose_31/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_190_layer_call_and_return_conditional_losses_238258

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
F__inference_conv3d_199_layer_call_and_return_conditional_losses_241465

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
F__inference_conv3d_203_layer_call_and_return_conditional_losses_241602

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
J__inference_concatenate_29_layer_call_and_return_conditional_losses_238515

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
�
�
F__inference_conv3d_210_layer_call_and_return_conditional_losses_238644

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
M
1__inference_max_pooling3d_29_layer_call_fn_241250

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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_237990�
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
�"
�
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_238108

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
�
t
J__inference_concatenate_30_layer_call_and_return_conditional_losses_238597

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
�
�
+__inference_conv3d_212_layer_call_fn_241898

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_212_layer_call_and_return_conditional_losses_238692�
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
��
�
C__inference_model_7_layer_call_and_return_conditional_losses_239475

inputs/
conv3d_189_239310:
conv3d_189_239312:/
conv3d_190_239315:
conv3d_190_239317:/
conv3d_191_239321: 
conv3d_191_239323: /
conv3d_192_239326:  
conv3d_192_239328: /
conv3d_193_239332: @
conv3d_193_239334:@/
conv3d_194_239337:@@
conv3d_194_239339:@0
conv3d_195_239343:@� 
conv3d_195_239345:	�1
conv3d_196_239348:�� 
conv3d_196_239350:	�1
conv3d_197_239354:�� 
conv3d_197_239356:	�1
conv3d_198_239359:�� 
conv3d_198_239361:	�:
conv3d_transpose_28_239364:��)
conv3d_transpose_28_239366:	�1
conv3d_199_239369:�� 
conv3d_199_239371:	�1
conv3d_200_239375:�� 
conv3d_200_239377:	�1
conv3d_201_239380:�� 
conv3d_201_239382:	�1
conv3d_202_239385:�� 
conv3d_202_239387:	�9
conv3d_transpose_29_239390:@�(
conv3d_transpose_29_239392:@/
conv3d_203_239395:@@
conv3d_203_239397:@0
conv3d_204_239401:�@
conv3d_204_239403:@/
conv3d_205_239406:@@
conv3d_205_239408:@/
conv3d_206_239411:@@
conv3d_206_239413:@8
conv3d_transpose_30_239416: @(
conv3d_transpose_30_239418: /
conv3d_207_239421:  
conv3d_207_239423: /
conv3d_208_239427:@ 
conv3d_208_239429: /
conv3d_209_239432:  
conv3d_209_239434: /
conv3d_210_239437:  
conv3d_210_239439: 8
conv3d_transpose_31_239442: (
conv3d_transpose_31_239444:/
conv3d_211_239447:
conv3d_211_239449:/
conv3d_212_239453: 
conv3d_212_239455:/
conv3d_213_239458:
conv3d_213_239460:/
conv3d_214_239463:
conv3d_214_239465:/
conv3d_215_239469:
conv3d_215_239471:
identity��"conv3d_189/StatefulPartitionedCall�"conv3d_190/StatefulPartitionedCall�"conv3d_191/StatefulPartitionedCall�"conv3d_192/StatefulPartitionedCall�"conv3d_193/StatefulPartitionedCall�"conv3d_194/StatefulPartitionedCall�"conv3d_195/StatefulPartitionedCall�"conv3d_196/StatefulPartitionedCall�"conv3d_197/StatefulPartitionedCall�"conv3d_198/StatefulPartitionedCall�"conv3d_199/StatefulPartitionedCall�"conv3d_200/StatefulPartitionedCall�"conv3d_201/StatefulPartitionedCall�"conv3d_202/StatefulPartitionedCall�"conv3d_203/StatefulPartitionedCall�"conv3d_204/StatefulPartitionedCall�"conv3d_205/StatefulPartitionedCall�"conv3d_206/StatefulPartitionedCall�"conv3d_207/StatefulPartitionedCall�"conv3d_208/StatefulPartitionedCall�"conv3d_209/StatefulPartitionedCall�"conv3d_210/StatefulPartitionedCall�"conv3d_211/StatefulPartitionedCall�"conv3d_212/StatefulPartitionedCall�"conv3d_213/StatefulPartitionedCall�"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�+conv3d_transpose_28/StatefulPartitionedCall�+conv3d_transpose_29/StatefulPartitionedCall�+conv3d_transpose_30/StatefulPartitionedCall�+conv3d_transpose_31/StatefulPartitionedCall�
 zero_padding3d_7/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8� *U
fPRN
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_237966�
"conv3d_189/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_189_239310conv3d_189_239312*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_189_layer_call_and_return_conditional_losses_238241�
"conv3d_190/StatefulPartitionedCallStatefulPartitionedCall+conv3d_189/StatefulPartitionedCall:output:0conv3d_190_239315conv3d_190_239317*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_190_layer_call_and_return_conditional_losses_238258�
 max_pooling3d_28/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_237978�
"conv3d_191/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_28/PartitionedCall:output:0conv3d_191_239321conv3d_191_239323*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_191_layer_call_and_return_conditional_losses_238276�
"conv3d_192/StatefulPartitionedCallStatefulPartitionedCall+conv3d_191/StatefulPartitionedCall:output:0conv3d_192_239326conv3d_192_239328*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_192_layer_call_and_return_conditional_losses_238293�
 max_pooling3d_29/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_237990�
"conv3d_193/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_29/PartitionedCall:output:0conv3d_193_239332conv3d_193_239334*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_193_layer_call_and_return_conditional_losses_238311�
"conv3d_194/StatefulPartitionedCallStatefulPartitionedCall+conv3d_193/StatefulPartitionedCall:output:0conv3d_194_239337conv3d_194_239339*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_194_layer_call_and_return_conditional_losses_238328�
 max_pooling3d_30/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_238002�
"conv3d_195/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_30/PartitionedCall:output:0conv3d_195_239343conv3d_195_239345*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_195_layer_call_and_return_conditional_losses_238346�
"conv3d_196/StatefulPartitionedCallStatefulPartitionedCall+conv3d_195/StatefulPartitionedCall:output:0conv3d_196_239348conv3d_196_239350*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_196_layer_call_and_return_conditional_losses_238363�
 max_pooling3d_31/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_238014�
"conv3d_197/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_31/PartitionedCall:output:0conv3d_197_239354conv3d_197_239356*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_197_layer_call_and_return_conditional_losses_238381�
"conv3d_198/StatefulPartitionedCallStatefulPartitionedCall+conv3d_197/StatefulPartitionedCall:output:0conv3d_198_239359conv3d_198_239361*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_198_layer_call_and_return_conditional_losses_238398�
+conv3d_transpose_28/StatefulPartitionedCallStatefulPartitionedCall+conv3d_198/StatefulPartitionedCall:output:0conv3d_transpose_28_239364conv3d_transpose_28_239366*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_238062�
"conv3d_199/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_28/StatefulPartitionedCall:output:0conv3d_199_239369conv3d_199_239371*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_199_layer_call_and_return_conditional_losses_238420�
concatenate_28/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0+conv3d_199/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_28_layer_call_and_return_conditional_losses_238433�
"conv3d_200/StatefulPartitionedCallStatefulPartitionedCall'concatenate_28/PartitionedCall:output:0conv3d_200_239375conv3d_200_239377*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_200_layer_call_and_return_conditional_losses_238446�
"conv3d_201/StatefulPartitionedCallStatefulPartitionedCall+conv3d_200/StatefulPartitionedCall:output:0conv3d_201_239380conv3d_201_239382*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_201_layer_call_and_return_conditional_losses_238463�
"conv3d_202/StatefulPartitionedCallStatefulPartitionedCall+conv3d_201/StatefulPartitionedCall:output:0conv3d_202_239385conv3d_202_239387*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_202_layer_call_and_return_conditional_losses_238480�
+conv3d_transpose_29/StatefulPartitionedCallStatefulPartitionedCall+conv3d_202/StatefulPartitionedCall:output:0conv3d_transpose_29_239390conv3d_transpose_29_239392*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_238108�
"conv3d_203/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_29/StatefulPartitionedCall:output:0conv3d_203_239395conv3d_203_239397*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_203_layer_call_and_return_conditional_losses_238502�
concatenate_29/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0+conv3d_203/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_29_layer_call_and_return_conditional_losses_238515�
"conv3d_204/StatefulPartitionedCallStatefulPartitionedCall'concatenate_29/PartitionedCall:output:0conv3d_204_239401conv3d_204_239403*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_204_layer_call_and_return_conditional_losses_238528�
"conv3d_205/StatefulPartitionedCallStatefulPartitionedCall+conv3d_204/StatefulPartitionedCall:output:0conv3d_205_239406conv3d_205_239408*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_205_layer_call_and_return_conditional_losses_238545�
"conv3d_206/StatefulPartitionedCallStatefulPartitionedCall+conv3d_205/StatefulPartitionedCall:output:0conv3d_206_239411conv3d_206_239413*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_206_layer_call_and_return_conditional_losses_238562�
+conv3d_transpose_30/StatefulPartitionedCallStatefulPartitionedCall+conv3d_206/StatefulPartitionedCall:output:0conv3d_transpose_30_239416conv3d_transpose_30_239418*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_238154�
"conv3d_207/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_30/StatefulPartitionedCall:output:0conv3d_207_239421conv3d_207_239423*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_207_layer_call_and_return_conditional_losses_238584�
concatenate_30/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0+conv3d_207/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_30_layer_call_and_return_conditional_losses_238597�
"conv3d_208/StatefulPartitionedCallStatefulPartitionedCall'concatenate_30/PartitionedCall:output:0conv3d_208_239427conv3d_208_239429*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_208_layer_call_and_return_conditional_losses_238610�
"conv3d_209/StatefulPartitionedCallStatefulPartitionedCall+conv3d_208/StatefulPartitionedCall:output:0conv3d_209_239432conv3d_209_239434*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_209_layer_call_and_return_conditional_losses_238627�
"conv3d_210/StatefulPartitionedCallStatefulPartitionedCall+conv3d_209/StatefulPartitionedCall:output:0conv3d_210_239437conv3d_210_239439*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_210_layer_call_and_return_conditional_losses_238644�
+conv3d_transpose_31/StatefulPartitionedCallStatefulPartitionedCall+conv3d_210/StatefulPartitionedCall:output:0conv3d_transpose_31_239442conv3d_transpose_31_239444*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_238200�
"conv3d_211/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_31/StatefulPartitionedCall:output:0conv3d_211_239447conv3d_211_239449*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_211_layer_call_and_return_conditional_losses_238666�
concatenate_31/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0+conv3d_211/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_31_layer_call_and_return_conditional_losses_238679�
"conv3d_212/StatefulPartitionedCallStatefulPartitionedCall'concatenate_31/PartitionedCall:output:0conv3d_212_239453conv3d_212_239455*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_212_layer_call_and_return_conditional_losses_238692�
"conv3d_213/StatefulPartitionedCallStatefulPartitionedCall+conv3d_212/StatefulPartitionedCall:output:0conv3d_213_239458conv3d_213_239460*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_213_layer_call_and_return_conditional_losses_238709�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCall+conv3d_213/StatefulPartitionedCall:output:0conv3d_214_239463conv3d_214_239465*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_214_layer_call_and_return_conditional_losses_238726�
cropping3d_7/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *Q
fLRJ
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_238219�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_7/PartitionedCall:output:0conv3d_215_239469conv3d_215_239471*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_215_layer_call_and_return_conditional_losses_238743�
IdentityIdentity+conv3d_215/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp#^conv3d_189/StatefulPartitionedCall#^conv3d_190/StatefulPartitionedCall#^conv3d_191/StatefulPartitionedCall#^conv3d_192/StatefulPartitionedCall#^conv3d_193/StatefulPartitionedCall#^conv3d_194/StatefulPartitionedCall#^conv3d_195/StatefulPartitionedCall#^conv3d_196/StatefulPartitionedCall#^conv3d_197/StatefulPartitionedCall#^conv3d_198/StatefulPartitionedCall#^conv3d_199/StatefulPartitionedCall#^conv3d_200/StatefulPartitionedCall#^conv3d_201/StatefulPartitionedCall#^conv3d_202/StatefulPartitionedCall#^conv3d_203/StatefulPartitionedCall#^conv3d_204/StatefulPartitionedCall#^conv3d_205/StatefulPartitionedCall#^conv3d_206/StatefulPartitionedCall#^conv3d_207/StatefulPartitionedCall#^conv3d_208/StatefulPartitionedCall#^conv3d_209/StatefulPartitionedCall#^conv3d_210/StatefulPartitionedCall#^conv3d_211/StatefulPartitionedCall#^conv3d_212/StatefulPartitionedCall#^conv3d_213/StatefulPartitionedCall#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall,^conv3d_transpose_28/StatefulPartitionedCall,^conv3d_transpose_29/StatefulPartitionedCall,^conv3d_transpose_30/StatefulPartitionedCall,^conv3d_transpose_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_189/StatefulPartitionedCall"conv3d_189/StatefulPartitionedCall2H
"conv3d_190/StatefulPartitionedCall"conv3d_190/StatefulPartitionedCall2H
"conv3d_191/StatefulPartitionedCall"conv3d_191/StatefulPartitionedCall2H
"conv3d_192/StatefulPartitionedCall"conv3d_192/StatefulPartitionedCall2H
"conv3d_193/StatefulPartitionedCall"conv3d_193/StatefulPartitionedCall2H
"conv3d_194/StatefulPartitionedCall"conv3d_194/StatefulPartitionedCall2H
"conv3d_195/StatefulPartitionedCall"conv3d_195/StatefulPartitionedCall2H
"conv3d_196/StatefulPartitionedCall"conv3d_196/StatefulPartitionedCall2H
"conv3d_197/StatefulPartitionedCall"conv3d_197/StatefulPartitionedCall2H
"conv3d_198/StatefulPartitionedCall"conv3d_198/StatefulPartitionedCall2H
"conv3d_199/StatefulPartitionedCall"conv3d_199/StatefulPartitionedCall2H
"conv3d_200/StatefulPartitionedCall"conv3d_200/StatefulPartitionedCall2H
"conv3d_201/StatefulPartitionedCall"conv3d_201/StatefulPartitionedCall2H
"conv3d_202/StatefulPartitionedCall"conv3d_202/StatefulPartitionedCall2H
"conv3d_203/StatefulPartitionedCall"conv3d_203/StatefulPartitionedCall2H
"conv3d_204/StatefulPartitionedCall"conv3d_204/StatefulPartitionedCall2H
"conv3d_205/StatefulPartitionedCall"conv3d_205/StatefulPartitionedCall2H
"conv3d_206/StatefulPartitionedCall"conv3d_206/StatefulPartitionedCall2H
"conv3d_207/StatefulPartitionedCall"conv3d_207/StatefulPartitionedCall2H
"conv3d_208/StatefulPartitionedCall"conv3d_208/StatefulPartitionedCall2H
"conv3d_209/StatefulPartitionedCall"conv3d_209/StatefulPartitionedCall2H
"conv3d_210/StatefulPartitionedCall"conv3d_210/StatefulPartitionedCall2H
"conv3d_211/StatefulPartitionedCall"conv3d_211/StatefulPartitionedCall2H
"conv3d_212/StatefulPartitionedCall"conv3d_212/StatefulPartitionedCall2H
"conv3d_213/StatefulPartitionedCall"conv3d_213/StatefulPartitionedCall2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2Z
+conv3d_transpose_28/StatefulPartitionedCall+conv3d_transpose_28/StatefulPartitionedCall2Z
+conv3d_transpose_29/StatefulPartitionedCall+conv3d_transpose_29/StatefulPartitionedCall2Z
+conv3d_transpose_30/StatefulPartitionedCall+conv3d_transpose_30/StatefulPartitionedCall2Z
+conv3d_transpose_31/StatefulPartitionedCall+conv3d_transpose_31/StatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_193_layer_call_and_return_conditional_losses_241275

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
�"
�
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_238200

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
C__inference_model_7_layer_call_and_return_conditional_losses_238750

inputs/
conv3d_189_238242:
conv3d_189_238244:/
conv3d_190_238259:
conv3d_190_238261:/
conv3d_191_238277: 
conv3d_191_238279: /
conv3d_192_238294:  
conv3d_192_238296: /
conv3d_193_238312: @
conv3d_193_238314:@/
conv3d_194_238329:@@
conv3d_194_238331:@0
conv3d_195_238347:@� 
conv3d_195_238349:	�1
conv3d_196_238364:�� 
conv3d_196_238366:	�1
conv3d_197_238382:�� 
conv3d_197_238384:	�1
conv3d_198_238399:�� 
conv3d_198_238401:	�:
conv3d_transpose_28_238404:��)
conv3d_transpose_28_238406:	�1
conv3d_199_238421:�� 
conv3d_199_238423:	�1
conv3d_200_238447:�� 
conv3d_200_238449:	�1
conv3d_201_238464:�� 
conv3d_201_238466:	�1
conv3d_202_238481:�� 
conv3d_202_238483:	�9
conv3d_transpose_29_238486:@�(
conv3d_transpose_29_238488:@/
conv3d_203_238503:@@
conv3d_203_238505:@0
conv3d_204_238529:�@
conv3d_204_238531:@/
conv3d_205_238546:@@
conv3d_205_238548:@/
conv3d_206_238563:@@
conv3d_206_238565:@8
conv3d_transpose_30_238568: @(
conv3d_transpose_30_238570: /
conv3d_207_238585:  
conv3d_207_238587: /
conv3d_208_238611:@ 
conv3d_208_238613: /
conv3d_209_238628:  
conv3d_209_238630: /
conv3d_210_238645:  
conv3d_210_238647: 8
conv3d_transpose_31_238650: (
conv3d_transpose_31_238652:/
conv3d_211_238667:
conv3d_211_238669:/
conv3d_212_238693: 
conv3d_212_238695:/
conv3d_213_238710:
conv3d_213_238712:/
conv3d_214_238727:
conv3d_214_238729:/
conv3d_215_238744:
conv3d_215_238746:
identity��"conv3d_189/StatefulPartitionedCall�"conv3d_190/StatefulPartitionedCall�"conv3d_191/StatefulPartitionedCall�"conv3d_192/StatefulPartitionedCall�"conv3d_193/StatefulPartitionedCall�"conv3d_194/StatefulPartitionedCall�"conv3d_195/StatefulPartitionedCall�"conv3d_196/StatefulPartitionedCall�"conv3d_197/StatefulPartitionedCall�"conv3d_198/StatefulPartitionedCall�"conv3d_199/StatefulPartitionedCall�"conv3d_200/StatefulPartitionedCall�"conv3d_201/StatefulPartitionedCall�"conv3d_202/StatefulPartitionedCall�"conv3d_203/StatefulPartitionedCall�"conv3d_204/StatefulPartitionedCall�"conv3d_205/StatefulPartitionedCall�"conv3d_206/StatefulPartitionedCall�"conv3d_207/StatefulPartitionedCall�"conv3d_208/StatefulPartitionedCall�"conv3d_209/StatefulPartitionedCall�"conv3d_210/StatefulPartitionedCall�"conv3d_211/StatefulPartitionedCall�"conv3d_212/StatefulPartitionedCall�"conv3d_213/StatefulPartitionedCall�"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�+conv3d_transpose_28/StatefulPartitionedCall�+conv3d_transpose_29/StatefulPartitionedCall�+conv3d_transpose_30/StatefulPartitionedCall�+conv3d_transpose_31/StatefulPartitionedCall�
 zero_padding3d_7/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8� *U
fPRN
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_237966�
"conv3d_189/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_189_238242conv3d_189_238244*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_189_layer_call_and_return_conditional_losses_238241�
"conv3d_190/StatefulPartitionedCallStatefulPartitionedCall+conv3d_189/StatefulPartitionedCall:output:0conv3d_190_238259conv3d_190_238261*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_190_layer_call_and_return_conditional_losses_238258�
 max_pooling3d_28/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_237978�
"conv3d_191/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_28/PartitionedCall:output:0conv3d_191_238277conv3d_191_238279*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_191_layer_call_and_return_conditional_losses_238276�
"conv3d_192/StatefulPartitionedCallStatefulPartitionedCall+conv3d_191/StatefulPartitionedCall:output:0conv3d_192_238294conv3d_192_238296*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_192_layer_call_and_return_conditional_losses_238293�
 max_pooling3d_29/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_237990�
"conv3d_193/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_29/PartitionedCall:output:0conv3d_193_238312conv3d_193_238314*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_193_layer_call_and_return_conditional_losses_238311�
"conv3d_194/StatefulPartitionedCallStatefulPartitionedCall+conv3d_193/StatefulPartitionedCall:output:0conv3d_194_238329conv3d_194_238331*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_194_layer_call_and_return_conditional_losses_238328�
 max_pooling3d_30/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_238002�
"conv3d_195/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_30/PartitionedCall:output:0conv3d_195_238347conv3d_195_238349*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_195_layer_call_and_return_conditional_losses_238346�
"conv3d_196/StatefulPartitionedCallStatefulPartitionedCall+conv3d_195/StatefulPartitionedCall:output:0conv3d_196_238364conv3d_196_238366*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_196_layer_call_and_return_conditional_losses_238363�
 max_pooling3d_31/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_238014�
"conv3d_197/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_31/PartitionedCall:output:0conv3d_197_238382conv3d_197_238384*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_197_layer_call_and_return_conditional_losses_238381�
"conv3d_198/StatefulPartitionedCallStatefulPartitionedCall+conv3d_197/StatefulPartitionedCall:output:0conv3d_198_238399conv3d_198_238401*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_198_layer_call_and_return_conditional_losses_238398�
+conv3d_transpose_28/StatefulPartitionedCallStatefulPartitionedCall+conv3d_198/StatefulPartitionedCall:output:0conv3d_transpose_28_238404conv3d_transpose_28_238406*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_238062�
"conv3d_199/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_28/StatefulPartitionedCall:output:0conv3d_199_238421conv3d_199_238423*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_199_layer_call_and_return_conditional_losses_238420�
concatenate_28/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0+conv3d_199/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_28_layer_call_and_return_conditional_losses_238433�
"conv3d_200/StatefulPartitionedCallStatefulPartitionedCall'concatenate_28/PartitionedCall:output:0conv3d_200_238447conv3d_200_238449*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_200_layer_call_and_return_conditional_losses_238446�
"conv3d_201/StatefulPartitionedCallStatefulPartitionedCall+conv3d_200/StatefulPartitionedCall:output:0conv3d_201_238464conv3d_201_238466*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_201_layer_call_and_return_conditional_losses_238463�
"conv3d_202/StatefulPartitionedCallStatefulPartitionedCall+conv3d_201/StatefulPartitionedCall:output:0conv3d_202_238481conv3d_202_238483*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_202_layer_call_and_return_conditional_losses_238480�
+conv3d_transpose_29/StatefulPartitionedCallStatefulPartitionedCall+conv3d_202/StatefulPartitionedCall:output:0conv3d_transpose_29_238486conv3d_transpose_29_238488*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_238108�
"conv3d_203/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_29/StatefulPartitionedCall:output:0conv3d_203_238503conv3d_203_238505*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_203_layer_call_and_return_conditional_losses_238502�
concatenate_29/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0+conv3d_203/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_29_layer_call_and_return_conditional_losses_238515�
"conv3d_204/StatefulPartitionedCallStatefulPartitionedCall'concatenate_29/PartitionedCall:output:0conv3d_204_238529conv3d_204_238531*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_204_layer_call_and_return_conditional_losses_238528�
"conv3d_205/StatefulPartitionedCallStatefulPartitionedCall+conv3d_204/StatefulPartitionedCall:output:0conv3d_205_238546conv3d_205_238548*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_205_layer_call_and_return_conditional_losses_238545�
"conv3d_206/StatefulPartitionedCallStatefulPartitionedCall+conv3d_205/StatefulPartitionedCall:output:0conv3d_206_238563conv3d_206_238565*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_206_layer_call_and_return_conditional_losses_238562�
+conv3d_transpose_30/StatefulPartitionedCallStatefulPartitionedCall+conv3d_206/StatefulPartitionedCall:output:0conv3d_transpose_30_238568conv3d_transpose_30_238570*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_238154�
"conv3d_207/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_30/StatefulPartitionedCall:output:0conv3d_207_238585conv3d_207_238587*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_207_layer_call_and_return_conditional_losses_238584�
concatenate_30/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0+conv3d_207/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_30_layer_call_and_return_conditional_losses_238597�
"conv3d_208/StatefulPartitionedCallStatefulPartitionedCall'concatenate_30/PartitionedCall:output:0conv3d_208_238611conv3d_208_238613*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_208_layer_call_and_return_conditional_losses_238610�
"conv3d_209/StatefulPartitionedCallStatefulPartitionedCall+conv3d_208/StatefulPartitionedCall:output:0conv3d_209_238628conv3d_209_238630*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_209_layer_call_and_return_conditional_losses_238627�
"conv3d_210/StatefulPartitionedCallStatefulPartitionedCall+conv3d_209/StatefulPartitionedCall:output:0conv3d_210_238645conv3d_210_238647*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_210_layer_call_and_return_conditional_losses_238644�
+conv3d_transpose_31/StatefulPartitionedCallStatefulPartitionedCall+conv3d_210/StatefulPartitionedCall:output:0conv3d_transpose_31_238650conv3d_transpose_31_238652*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_238200�
"conv3d_211/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_31/StatefulPartitionedCall:output:0conv3d_211_238667conv3d_211_238669*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_211_layer_call_and_return_conditional_losses_238666�
concatenate_31/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0+conv3d_211/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_31_layer_call_and_return_conditional_losses_238679�
"conv3d_212/StatefulPartitionedCallStatefulPartitionedCall'concatenate_31/PartitionedCall:output:0conv3d_212_238693conv3d_212_238695*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_212_layer_call_and_return_conditional_losses_238692�
"conv3d_213/StatefulPartitionedCallStatefulPartitionedCall+conv3d_212/StatefulPartitionedCall:output:0conv3d_213_238710conv3d_213_238712*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_213_layer_call_and_return_conditional_losses_238709�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCall+conv3d_213/StatefulPartitionedCall:output:0conv3d_214_238727conv3d_214_238729*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_214_layer_call_and_return_conditional_losses_238726�
cropping3d_7/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *Q
fLRJ
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_238219�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_7/PartitionedCall:output:0conv3d_215_238744conv3d_215_238746*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_215_layer_call_and_return_conditional_losses_238743�
IdentityIdentity+conv3d_215/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp#^conv3d_189/StatefulPartitionedCall#^conv3d_190/StatefulPartitionedCall#^conv3d_191/StatefulPartitionedCall#^conv3d_192/StatefulPartitionedCall#^conv3d_193/StatefulPartitionedCall#^conv3d_194/StatefulPartitionedCall#^conv3d_195/StatefulPartitionedCall#^conv3d_196/StatefulPartitionedCall#^conv3d_197/StatefulPartitionedCall#^conv3d_198/StatefulPartitionedCall#^conv3d_199/StatefulPartitionedCall#^conv3d_200/StatefulPartitionedCall#^conv3d_201/StatefulPartitionedCall#^conv3d_202/StatefulPartitionedCall#^conv3d_203/StatefulPartitionedCall#^conv3d_204/StatefulPartitionedCall#^conv3d_205/StatefulPartitionedCall#^conv3d_206/StatefulPartitionedCall#^conv3d_207/StatefulPartitionedCall#^conv3d_208/StatefulPartitionedCall#^conv3d_209/StatefulPartitionedCall#^conv3d_210/StatefulPartitionedCall#^conv3d_211/StatefulPartitionedCall#^conv3d_212/StatefulPartitionedCall#^conv3d_213/StatefulPartitionedCall#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall,^conv3d_transpose_28/StatefulPartitionedCall,^conv3d_transpose_29/StatefulPartitionedCall,^conv3d_transpose_30/StatefulPartitionedCall,^conv3d_transpose_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_189/StatefulPartitionedCall"conv3d_189/StatefulPartitionedCall2H
"conv3d_190/StatefulPartitionedCall"conv3d_190/StatefulPartitionedCall2H
"conv3d_191/StatefulPartitionedCall"conv3d_191/StatefulPartitionedCall2H
"conv3d_192/StatefulPartitionedCall"conv3d_192/StatefulPartitionedCall2H
"conv3d_193/StatefulPartitionedCall"conv3d_193/StatefulPartitionedCall2H
"conv3d_194/StatefulPartitionedCall"conv3d_194/StatefulPartitionedCall2H
"conv3d_195/StatefulPartitionedCall"conv3d_195/StatefulPartitionedCall2H
"conv3d_196/StatefulPartitionedCall"conv3d_196/StatefulPartitionedCall2H
"conv3d_197/StatefulPartitionedCall"conv3d_197/StatefulPartitionedCall2H
"conv3d_198/StatefulPartitionedCall"conv3d_198/StatefulPartitionedCall2H
"conv3d_199/StatefulPartitionedCall"conv3d_199/StatefulPartitionedCall2H
"conv3d_200/StatefulPartitionedCall"conv3d_200/StatefulPartitionedCall2H
"conv3d_201/StatefulPartitionedCall"conv3d_201/StatefulPartitionedCall2H
"conv3d_202/StatefulPartitionedCall"conv3d_202/StatefulPartitionedCall2H
"conv3d_203/StatefulPartitionedCall"conv3d_203/StatefulPartitionedCall2H
"conv3d_204/StatefulPartitionedCall"conv3d_204/StatefulPartitionedCall2H
"conv3d_205/StatefulPartitionedCall"conv3d_205/StatefulPartitionedCall2H
"conv3d_206/StatefulPartitionedCall"conv3d_206/StatefulPartitionedCall2H
"conv3d_207/StatefulPartitionedCall"conv3d_207/StatefulPartitionedCall2H
"conv3d_208/StatefulPartitionedCall"conv3d_208/StatefulPartitionedCall2H
"conv3d_209/StatefulPartitionedCall"conv3d_209/StatefulPartitionedCall2H
"conv3d_210/StatefulPartitionedCall"conv3d_210/StatefulPartitionedCall2H
"conv3d_211/StatefulPartitionedCall"conv3d_211/StatefulPartitionedCall2H
"conv3d_212/StatefulPartitionedCall"conv3d_212/StatefulPartitionedCall2H
"conv3d_213/StatefulPartitionedCall"conv3d_213/StatefulPartitionedCall2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2Z
+conv3d_transpose_28/StatefulPartitionedCall+conv3d_transpose_28/StatefulPartitionedCall2Z
+conv3d_transpose_29/StatefulPartitionedCall+conv3d_transpose_29/StatefulPartitionedCall2Z
+conv3d_transpose_30/StatefulPartitionedCall+conv3d_transpose_30/StatefulPartitionedCall2Z
+conv3d_transpose_31/StatefulPartitionedCall+conv3d_transpose_31/StatefulPartitionedCall:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_198_layer_call_and_return_conditional_losses_238398

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
�
�
F__inference_conv3d_202_layer_call_and_return_conditional_losses_241538

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
F__inference_conv3d_215_layer_call_and_return_conditional_losses_238743

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
�
�
+__inference_conv3d_199_layer_call_fn_241454

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_199_layer_call_and_return_conditional_losses_238420�
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
F__inference_conv3d_209_layer_call_and_return_conditional_losses_238627

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
F__inference_conv3d_191_layer_call_and_return_conditional_losses_241225

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
+__inference_conv3d_210_layer_call_fn_241801

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_210_layer_call_and_return_conditional_losses_238644�
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
F__inference_conv3d_205_layer_call_and_return_conditional_losses_241655

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
h
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_237978

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
�
$__inference_signature_wrapper_241144
input_8%
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
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8� **
f%R#
!__inference__wrapped_model_237956�
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
_user_specified_name	input_8
�
�
+__inference_conv3d_202_layer_call_fn_241527

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_202_layer_call_and_return_conditional_losses_238480�
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
+__inference_conv3d_209_layer_call_fn_241781

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_209_layer_call_and_return_conditional_losses_238627�
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
F__inference_conv3d_195_layer_call_and_return_conditional_losses_241325

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
F__inference_conv3d_189_layer_call_and_return_conditional_losses_238241

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
�
�
+__inference_conv3d_194_layer_call_fn_241284

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_194_layer_call_and_return_conditional_losses_238328�
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
F__inference_conv3d_214_layer_call_and_return_conditional_losses_241949

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
��
�3
C__inference_model_7_layer_call_and_return_conditional_losses_241013

inputsG
)conv3d_189_conv3d_readvariableop_resource:8
*conv3d_189_biasadd_readvariableop_resource:G
)conv3d_190_conv3d_readvariableop_resource:8
*conv3d_190_biasadd_readvariableop_resource:G
)conv3d_191_conv3d_readvariableop_resource: 8
*conv3d_191_biasadd_readvariableop_resource: G
)conv3d_192_conv3d_readvariableop_resource:  8
*conv3d_192_biasadd_readvariableop_resource: G
)conv3d_193_conv3d_readvariableop_resource: @8
*conv3d_193_biasadd_readvariableop_resource:@G
)conv3d_194_conv3d_readvariableop_resource:@@8
*conv3d_194_biasadd_readvariableop_resource:@H
)conv3d_195_conv3d_readvariableop_resource:@�9
*conv3d_195_biasadd_readvariableop_resource:	�I
)conv3d_196_conv3d_readvariableop_resource:��9
*conv3d_196_biasadd_readvariableop_resource:	�I
)conv3d_197_conv3d_readvariableop_resource:��9
*conv3d_197_biasadd_readvariableop_resource:	�I
)conv3d_198_conv3d_readvariableop_resource:��9
*conv3d_198_biasadd_readvariableop_resource:	�\
<conv3d_transpose_28_conv3d_transpose_readvariableop_resource:��B
3conv3d_transpose_28_biasadd_readvariableop_resource:	�I
)conv3d_199_conv3d_readvariableop_resource:��9
*conv3d_199_biasadd_readvariableop_resource:	�I
)conv3d_200_conv3d_readvariableop_resource:��9
*conv3d_200_biasadd_readvariableop_resource:	�I
)conv3d_201_conv3d_readvariableop_resource:��9
*conv3d_201_biasadd_readvariableop_resource:	�I
)conv3d_202_conv3d_readvariableop_resource:��9
*conv3d_202_biasadd_readvariableop_resource:	�[
<conv3d_transpose_29_conv3d_transpose_readvariableop_resource:@�A
3conv3d_transpose_29_biasadd_readvariableop_resource:@G
)conv3d_203_conv3d_readvariableop_resource:@@8
*conv3d_203_biasadd_readvariableop_resource:@H
)conv3d_204_conv3d_readvariableop_resource:�@8
*conv3d_204_biasadd_readvariableop_resource:@G
)conv3d_205_conv3d_readvariableop_resource:@@8
*conv3d_205_biasadd_readvariableop_resource:@G
)conv3d_206_conv3d_readvariableop_resource:@@8
*conv3d_206_biasadd_readvariableop_resource:@Z
<conv3d_transpose_30_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_30_biasadd_readvariableop_resource: G
)conv3d_207_conv3d_readvariableop_resource:  8
*conv3d_207_biasadd_readvariableop_resource: G
)conv3d_208_conv3d_readvariableop_resource:@ 8
*conv3d_208_biasadd_readvariableop_resource: G
)conv3d_209_conv3d_readvariableop_resource:  8
*conv3d_209_biasadd_readvariableop_resource: G
)conv3d_210_conv3d_readvariableop_resource:  8
*conv3d_210_biasadd_readvariableop_resource: Z
<conv3d_transpose_31_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_31_biasadd_readvariableop_resource:G
)conv3d_211_conv3d_readvariableop_resource:8
*conv3d_211_biasadd_readvariableop_resource:G
)conv3d_212_conv3d_readvariableop_resource: 8
*conv3d_212_biasadd_readvariableop_resource:G
)conv3d_213_conv3d_readvariableop_resource:8
*conv3d_213_biasadd_readvariableop_resource:G
)conv3d_214_conv3d_readvariableop_resource:8
*conv3d_214_biasadd_readvariableop_resource:G
)conv3d_215_conv3d_readvariableop_resource:8
*conv3d_215_biasadd_readvariableop_resource:
identity��!conv3d_189/BiasAdd/ReadVariableOp� conv3d_189/Conv3D/ReadVariableOp�!conv3d_190/BiasAdd/ReadVariableOp� conv3d_190/Conv3D/ReadVariableOp�!conv3d_191/BiasAdd/ReadVariableOp� conv3d_191/Conv3D/ReadVariableOp�!conv3d_192/BiasAdd/ReadVariableOp� conv3d_192/Conv3D/ReadVariableOp�!conv3d_193/BiasAdd/ReadVariableOp� conv3d_193/Conv3D/ReadVariableOp�!conv3d_194/BiasAdd/ReadVariableOp� conv3d_194/Conv3D/ReadVariableOp�!conv3d_195/BiasAdd/ReadVariableOp� conv3d_195/Conv3D/ReadVariableOp�!conv3d_196/BiasAdd/ReadVariableOp� conv3d_196/Conv3D/ReadVariableOp�!conv3d_197/BiasAdd/ReadVariableOp� conv3d_197/Conv3D/ReadVariableOp�!conv3d_198/BiasAdd/ReadVariableOp� conv3d_198/Conv3D/ReadVariableOp�!conv3d_199/BiasAdd/ReadVariableOp� conv3d_199/Conv3D/ReadVariableOp�!conv3d_200/BiasAdd/ReadVariableOp� conv3d_200/Conv3D/ReadVariableOp�!conv3d_201/BiasAdd/ReadVariableOp� conv3d_201/Conv3D/ReadVariableOp�!conv3d_202/BiasAdd/ReadVariableOp� conv3d_202/Conv3D/ReadVariableOp�!conv3d_203/BiasAdd/ReadVariableOp� conv3d_203/Conv3D/ReadVariableOp�!conv3d_204/BiasAdd/ReadVariableOp� conv3d_204/Conv3D/ReadVariableOp�!conv3d_205/BiasAdd/ReadVariableOp� conv3d_205/Conv3D/ReadVariableOp�!conv3d_206/BiasAdd/ReadVariableOp� conv3d_206/Conv3D/ReadVariableOp�!conv3d_207/BiasAdd/ReadVariableOp� conv3d_207/Conv3D/ReadVariableOp�!conv3d_208/BiasAdd/ReadVariableOp� conv3d_208/Conv3D/ReadVariableOp�!conv3d_209/BiasAdd/ReadVariableOp� conv3d_209/Conv3D/ReadVariableOp�!conv3d_210/BiasAdd/ReadVariableOp� conv3d_210/Conv3D/ReadVariableOp�!conv3d_211/BiasAdd/ReadVariableOp� conv3d_211/Conv3D/ReadVariableOp�!conv3d_212/BiasAdd/ReadVariableOp� conv3d_212/Conv3D/ReadVariableOp�!conv3d_213/BiasAdd/ReadVariableOp� conv3d_213/Conv3D/ReadVariableOp�!conv3d_214/BiasAdd/ReadVariableOp� conv3d_214/Conv3D/ReadVariableOp�!conv3d_215/BiasAdd/ReadVariableOp� conv3d_215/Conv3D/ReadVariableOp�*conv3d_transpose_28/BiasAdd/ReadVariableOp�3conv3d_transpose_28/conv3d_transpose/ReadVariableOp�*conv3d_transpose_29/BiasAdd/ReadVariableOp�3conv3d_transpose_29/conv3d_transpose/ReadVariableOp�*conv3d_transpose_30/BiasAdd/ReadVariableOp�3conv3d_transpose_30/conv3d_transpose/ReadVariableOp�*conv3d_transpose_31/BiasAdd/ReadVariableOp�3conv3d_transpose_31/conv3d_transpose/ReadVariableOp�
zero_padding3d_7/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     �
zero_padding3d_7/PadPadinputs&zero_padding3d_7/Pad/paddings:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_189/Conv3D/ReadVariableOpReadVariableOp)conv3d_189_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_189/Conv3DConv3Dzero_padding3d_7/Pad:output:0(conv3d_189/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_189/BiasAdd/ReadVariableOpReadVariableOp*conv3d_189_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_189/BiasAddBiasAddconv3d_189/Conv3D:output:0)conv3d_189/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_189/ReluReluconv3d_189/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_190/Conv3D/ReadVariableOpReadVariableOp)conv3d_190_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_190/Conv3DConv3Dconv3d_189/Relu:activations:0(conv3d_190/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_190/BiasAdd/ReadVariableOpReadVariableOp*conv3d_190_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_190/BiasAddBiasAddconv3d_190/Conv3D:output:0)conv3d_190/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_190/ReluReluconv3d_190/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
max_pooling3d_28/MaxPool3D	MaxPool3Dconv3d_190/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
ksize	
*
paddingVALID*
strides	
�
 conv3d_191/Conv3D/ReadVariableOpReadVariableOp)conv3d_191_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_191/Conv3DConv3D#max_pooling3d_28/MaxPool3D:output:0(conv3d_191/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_191/BiasAdd/ReadVariableOpReadVariableOp*conv3d_191_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_191/BiasAddBiasAddconv3d_191/Conv3D:output:0)conv3d_191/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_191/ReluReluconv3d_191/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_192/Conv3D/ReadVariableOpReadVariableOp)conv3d_192_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_192/Conv3DConv3Dconv3d_191/Relu:activations:0(conv3d_192/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_192/BiasAdd/ReadVariableOpReadVariableOp*conv3d_192_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_192/BiasAddBiasAddconv3d_192/Conv3D:output:0)conv3d_192/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_192/ReluReluconv3d_192/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
max_pooling3d_29/MaxPool3D	MaxPool3Dconv3d_192/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
ksize	
*
paddingVALID*
strides	
�
 conv3d_193/Conv3D/ReadVariableOpReadVariableOp)conv3d_193_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0�
conv3d_193/Conv3DConv3D#max_pooling3d_29/MaxPool3D:output:0(conv3d_193/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_193/BiasAdd/ReadVariableOpReadVariableOp*conv3d_193_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_193/BiasAddBiasAddconv3d_193/Conv3D:output:0)conv3d_193/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_193/ReluReluconv3d_193/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_194/Conv3D/ReadVariableOpReadVariableOp)conv3d_194_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_194/Conv3DConv3Dconv3d_193/Relu:activations:0(conv3d_194/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_194/BiasAdd/ReadVariableOpReadVariableOp*conv3d_194_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_194/BiasAddBiasAddconv3d_194/Conv3D:output:0)conv3d_194/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_194/ReluReluconv3d_194/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
max_pooling3d_30/MaxPool3D	MaxPool3Dconv3d_194/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
ksize	
*
paddingVALID*
strides	
�
 conv3d_195/Conv3D/ReadVariableOpReadVariableOp)conv3d_195_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_195/Conv3DConv3D#max_pooling3d_30/MaxPool3D:output:0(conv3d_195/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_195/BiasAdd/ReadVariableOpReadVariableOp*conv3d_195_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_195/BiasAddBiasAddconv3d_195/Conv3D:output:0)conv3d_195/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_195/ReluReluconv3d_195/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_196/Conv3D/ReadVariableOpReadVariableOp)conv3d_196_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_196/Conv3DConv3Dconv3d_195/Relu:activations:0(conv3d_196/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_196/BiasAdd/ReadVariableOpReadVariableOp*conv3d_196_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_196/BiasAddBiasAddconv3d_196/Conv3D:output:0)conv3d_196/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_196/ReluReluconv3d_196/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
max_pooling3d_31/MaxPool3D	MaxPool3Dconv3d_196/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
ksize	
*
paddingVALID*
strides	
�
 conv3d_197/Conv3D/ReadVariableOpReadVariableOp)conv3d_197_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_197/Conv3DConv3D#max_pooling3d_31/MaxPool3D:output:0(conv3d_197/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_197/BiasAdd/ReadVariableOpReadVariableOp*conv3d_197_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_197/BiasAddBiasAddconv3d_197/Conv3D:output:0)conv3d_197/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_197/ReluReluconv3d_197/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_198/Conv3D/ReadVariableOpReadVariableOp)conv3d_198_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_198/Conv3DConv3Dconv3d_197/Relu:activations:0(conv3d_198/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_198/BiasAdd/ReadVariableOpReadVariableOp*conv3d_198_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_198/BiasAddBiasAddconv3d_198/Conv3D:output:0)conv3d_198/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_198/ReluReluconv3d_198/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������f
conv3d_transpose_28/ShapeShapeconv3d_198/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_28/strided_sliceStridedSlice"conv3d_transpose_28/Shape:output:00conv3d_transpose_28/strided_slice/stack:output:02conv3d_transpose_28/strided_slice/stack_1:output:02conv3d_transpose_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_28/strided_slice_1StridedSlice"conv3d_transpose_28/Shape:output:02conv3d_transpose_28/strided_slice_1/stack:output:04conv3d_transpose_28/strided_slice_1/stack_1:output:04conv3d_transpose_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_28/strided_slice_2StridedSlice"conv3d_transpose_28/Shape:output:02conv3d_transpose_28/strided_slice_2/stack:output:04conv3d_transpose_28/strided_slice_2/stack_1:output:04conv3d_transpose_28/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_28/strided_slice_3StridedSlice"conv3d_transpose_28/Shape:output:02conv3d_transpose_28/strided_slice_3/stack:output:04conv3d_transpose_28/strided_slice_3/stack_1:output:04conv3d_transpose_28/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_28/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_28/mulMul,conv3d_transpose_28/strided_slice_1:output:0"conv3d_transpose_28/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_28/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_28/addAddV2conv3d_transpose_28/mul:z:0"conv3d_transpose_28/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_28/mul_1Mul,conv3d_transpose_28/strided_slice_2:output:0$conv3d_transpose_28/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_28/add_1AddV2conv3d_transpose_28/mul_1:z:0$conv3d_transpose_28/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_28/mul_2Mul,conv3d_transpose_28/strided_slice_3:output:0$conv3d_transpose_28/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_28/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_28/add_2AddV2conv3d_transpose_28/mul_2:z:0$conv3d_transpose_28/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_28/stack/4Const*
_output_shapes
: *
dtype0*
value
B :��
conv3d_transpose_28/stackPack*conv3d_transpose_28/strided_slice:output:0conv3d_transpose_28/add:z:0conv3d_transpose_28/add_1:z:0conv3d_transpose_28/add_2:z:0$conv3d_transpose_28/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_28/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_28_conv3d_transpose_readvariableop_resource*,
_output_shapes
:��*
dtype0�
$conv3d_transpose_28/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_28/stack:output:0;conv3d_transpose_28/conv3d_transpose/ReadVariableOp:value:0conv3d_198/Relu:activations:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingVALID*
strides	
�
*conv3d_transpose_28/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_28_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_transpose_28/BiasAddBiasAdd-conv3d_transpose_28/conv3d_transpose:output:02conv3d_transpose_28/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_199/Conv3D/ReadVariableOpReadVariableOp)conv3d_199_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_199/Conv3DConv3D$conv3d_transpose_28/BiasAdd:output:0(conv3d_199/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_199/BiasAdd/ReadVariableOpReadVariableOp*conv3d_199_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_199/BiasAddBiasAddconv3d_199/Conv3D:output:0)conv3d_199/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_199/ReluReluconv3d_199/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������\
concatenate_28/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_28/concatConcatV2conv3d_196/Relu:activations:0conv3d_199/Relu:activations:0#concatenate_28/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_200/Conv3D/ReadVariableOpReadVariableOp)conv3d_200_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_200/Conv3DConv3Dconcatenate_28/concat:output:0(conv3d_200/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_200/BiasAdd/ReadVariableOpReadVariableOp*conv3d_200_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_200/BiasAddBiasAddconv3d_200/Conv3D:output:0)conv3d_200/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_200/ReluReluconv3d_200/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_201/Conv3D/ReadVariableOpReadVariableOp)conv3d_201_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_201/Conv3DConv3Dconv3d_200/Relu:activations:0(conv3d_201/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_201/BiasAdd/ReadVariableOpReadVariableOp*conv3d_201_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_201/BiasAddBiasAddconv3d_201/Conv3D:output:0)conv3d_201/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_201/ReluReluconv3d_201/BiasAdd:output:0*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_202/Conv3D/ReadVariableOpReadVariableOp)conv3d_202_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_202/Conv3DConv3Dconv3d_201/Relu:activations:0(conv3d_202/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9�������������������������������������*
paddingSAME*
strides	
�
!conv3d_202/BiasAdd/ReadVariableOpReadVariableOp*conv3d_202_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_202/BiasAddBiasAddconv3d_202/Conv3D:output:0)conv3d_202/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9��������������������������������������
conv3d_202/ReluReluconv3d_202/BiasAdd:output:0*
T0*O
_output_shapes=
;:9�������������������������������������f
conv3d_transpose_29/ShapeShapeconv3d_202/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_29/strided_sliceStridedSlice"conv3d_transpose_29/Shape:output:00conv3d_transpose_29/strided_slice/stack:output:02conv3d_transpose_29/strided_slice/stack_1:output:02conv3d_transpose_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_29/strided_slice_1StridedSlice"conv3d_transpose_29/Shape:output:02conv3d_transpose_29/strided_slice_1/stack:output:04conv3d_transpose_29/strided_slice_1/stack_1:output:04conv3d_transpose_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_29/strided_slice_2StridedSlice"conv3d_transpose_29/Shape:output:02conv3d_transpose_29/strided_slice_2/stack:output:04conv3d_transpose_29/strided_slice_2/stack_1:output:04conv3d_transpose_29/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_29/strided_slice_3StridedSlice"conv3d_transpose_29/Shape:output:02conv3d_transpose_29/strided_slice_3/stack:output:04conv3d_transpose_29/strided_slice_3/stack_1:output:04conv3d_transpose_29/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_29/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_29/mulMul,conv3d_transpose_29/strided_slice_1:output:0"conv3d_transpose_29/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_29/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_29/mul_1Mul,conv3d_transpose_29/strided_slice_2:output:0$conv3d_transpose_29/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_29/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_29/mul_2Mul,conv3d_transpose_29/strided_slice_3:output:0$conv3d_transpose_29/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_29/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@�
conv3d_transpose_29/stackPack*conv3d_transpose_29/strided_slice:output:0conv3d_transpose_29/mul:z:0conv3d_transpose_29/mul_1:z:0conv3d_transpose_29/mul_2:z:0$conv3d_transpose_29/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_29/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_29_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
$conv3d_transpose_29/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_29/stack:output:0;conv3d_transpose_29/conv3d_transpose/ReadVariableOp:value:0conv3d_202/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
*conv3d_transpose_29/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_transpose_29/BiasAddBiasAdd-conv3d_transpose_29/conv3d_transpose:output:02conv3d_transpose_29/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_203/Conv3D/ReadVariableOpReadVariableOp)conv3d_203_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_203/Conv3DConv3D$conv3d_transpose_29/BiasAdd:output:0(conv3d_203/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_203/BiasAdd/ReadVariableOpReadVariableOp*conv3d_203_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_203/BiasAddBiasAddconv3d_203/Conv3D:output:0)conv3d_203/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_203/ReluReluconv3d_203/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@\
concatenate_29/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_29/concatConcatV2conv3d_194/Relu:activations:0conv3d_203/Relu:activations:0#concatenate_29/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9��������������������������������������
 conv3d_204/Conv3D/ReadVariableOpReadVariableOp)conv3d_204_conv3d_readvariableop_resource*+
_output_shapes
:�@*
dtype0�
conv3d_204/Conv3DConv3Dconcatenate_29/concat:output:0(conv3d_204/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_204/BiasAdd/ReadVariableOpReadVariableOp*conv3d_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_204/BiasAddBiasAddconv3d_204/Conv3D:output:0)conv3d_204/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_204/ReluReluconv3d_204/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_205/Conv3D/ReadVariableOpReadVariableOp)conv3d_205_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_205/Conv3DConv3Dconv3d_204/Relu:activations:0(conv3d_205/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_205/BiasAdd/ReadVariableOpReadVariableOp*conv3d_205_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_205/BiasAddBiasAddconv3d_205/Conv3D:output:0)conv3d_205/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_205/ReluReluconv3d_205/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_206/Conv3D/ReadVariableOpReadVariableOp)conv3d_206_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0�
conv3d_206/Conv3DConv3Dconv3d_205/Relu:activations:0(conv3d_206/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@*
paddingSAME*
strides	
�
!conv3d_206/BiasAdd/ReadVariableOpReadVariableOp*conv3d_206_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d_206/BiasAddBiasAddconv3d_206/Conv3D:output:0)conv3d_206/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������@�
conv3d_206/ReluReluconv3d_206/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������@f
conv3d_transpose_30/ShapeShapeconv3d_206/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_30/strided_sliceStridedSlice"conv3d_transpose_30/Shape:output:00conv3d_transpose_30/strided_slice/stack:output:02conv3d_transpose_30/strided_slice/stack_1:output:02conv3d_transpose_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_30/strided_slice_1StridedSlice"conv3d_transpose_30/Shape:output:02conv3d_transpose_30/strided_slice_1/stack:output:04conv3d_transpose_30/strided_slice_1/stack_1:output:04conv3d_transpose_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_30/strided_slice_2StridedSlice"conv3d_transpose_30/Shape:output:02conv3d_transpose_30/strided_slice_2/stack:output:04conv3d_transpose_30/strided_slice_2/stack_1:output:04conv3d_transpose_30/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_30/strided_slice_3StridedSlice"conv3d_transpose_30/Shape:output:02conv3d_transpose_30/strided_slice_3/stack:output:04conv3d_transpose_30/strided_slice_3/stack_1:output:04conv3d_transpose_30/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_30/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_30/mulMul,conv3d_transpose_30/strided_slice_1:output:0"conv3d_transpose_30/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_30/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_30/mul_1Mul,conv3d_transpose_30/strided_slice_2:output:0$conv3d_transpose_30/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_30/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_30/mul_2Mul,conv3d_transpose_30/strided_slice_3:output:0$conv3d_transpose_30/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_30/stack/4Const*
_output_shapes
: *
dtype0*
value	B : �
conv3d_transpose_30/stackPack*conv3d_transpose_30/strided_slice:output:0conv3d_transpose_30/mul:z:0conv3d_transpose_30/mul_1:z:0conv3d_transpose_30/mul_2:z:0$conv3d_transpose_30/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_30/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_30_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0�
$conv3d_transpose_30/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_30/stack:output:0;conv3d_transpose_30/conv3d_transpose/ReadVariableOp:value:0conv3d_206/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
*conv3d_transpose_30/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_transpose_30/BiasAddBiasAdd-conv3d_transpose_30/conv3d_transpose:output:02conv3d_transpose_30/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_207/Conv3D/ReadVariableOpReadVariableOp)conv3d_207_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_207/Conv3DConv3D$conv3d_transpose_30/BiasAdd:output:0(conv3d_207/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_207/BiasAdd/ReadVariableOpReadVariableOp*conv3d_207_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_207/BiasAddBiasAddconv3d_207/Conv3D:output:0)conv3d_207/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_207/ReluReluconv3d_207/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ \
concatenate_30/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_30/concatConcatV2conv3d_192/Relu:activations:0conv3d_207/Relu:activations:0#concatenate_30/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������@�
 conv3d_208/Conv3D/ReadVariableOpReadVariableOp)conv3d_208_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0�
conv3d_208/Conv3DConv3Dconcatenate_30/concat:output:0(conv3d_208/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_208/BiasAdd/ReadVariableOpReadVariableOp*conv3d_208_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_208/BiasAddBiasAddconv3d_208/Conv3D:output:0)conv3d_208/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_208/ReluReluconv3d_208/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_209/Conv3D/ReadVariableOpReadVariableOp)conv3d_209_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_209/Conv3DConv3Dconv3d_208/Relu:activations:0(conv3d_209/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_209/BiasAdd/ReadVariableOpReadVariableOp*conv3d_209_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_209/BiasAddBiasAddconv3d_209/Conv3D:output:0)conv3d_209/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_209/ReluReluconv3d_209/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_210/Conv3D/ReadVariableOpReadVariableOp)conv3d_210_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0�
conv3d_210/Conv3DConv3Dconv3d_209/Relu:activations:0(conv3d_210/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ *
paddingSAME*
strides	
�
!conv3d_210/BiasAdd/ReadVariableOpReadVariableOp*conv3d_210_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv3d_210/BiasAddBiasAddconv3d_210/Conv3D:output:0)conv3d_210/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������ �
conv3d_210/ReluReluconv3d_210/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������ f
conv3d_transpose_31/ShapeShapeconv3d_210/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv3d_transpose_31/strided_sliceStridedSlice"conv3d_transpose_31/Shape:output:00conv3d_transpose_31/strided_slice/stack:output:02conv3d_transpose_31/strided_slice/stack_1:output:02conv3d_transpose_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_31/strided_slice_1StridedSlice"conv3d_transpose_31/Shape:output:02conv3d_transpose_31/strided_slice_1/stack:output:04conv3d_transpose_31/strided_slice_1/stack_1:output:04conv3d_transpose_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_31/strided_slice_2StridedSlice"conv3d_transpose_31/Shape:output:02conv3d_transpose_31/strided_slice_2/stack:output:04conv3d_transpose_31/strided_slice_2/stack_1:output:04conv3d_transpose_31/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv3d_transpose_31/strided_slice_3StridedSlice"conv3d_transpose_31/Shape:output:02conv3d_transpose_31/strided_slice_3/stack:output:04conv3d_transpose_31/strided_slice_3/stack_1:output:04conv3d_transpose_31/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_31/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/mulMul,conv3d_transpose_31/strided_slice_1:output:0"conv3d_transpose_31/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_31/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/mul_1Mul,conv3d_transpose_31/strided_slice_2:output:0$conv3d_transpose_31/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_31/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/mul_2Mul,conv3d_transpose_31/strided_slice_3:output:0$conv3d_transpose_31/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_31/stack/4Const*
_output_shapes
: *
dtype0*
value	B :�
conv3d_transpose_31/stackPack*conv3d_transpose_31/strided_slice:output:0conv3d_transpose_31/mul:z:0conv3d_transpose_31/mul_1:z:0conv3d_transpose_31/mul_2:z:0$conv3d_transpose_31/stack/4:output:0*
N*
T0*
_output_shapes
:�
3conv3d_transpose_31/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_31_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0�
$conv3d_transpose_31/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_31/stack:output:0;conv3d_transpose_31/conv3d_transpose/ReadVariableOp:value:0conv3d_210/Relu:activations:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
*conv3d_transpose_31/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_transpose_31/BiasAddBiasAdd-conv3d_transpose_31/conv3d_transpose:output:02conv3d_transpose_31/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_211/Conv3D/ReadVariableOpReadVariableOp)conv3d_211_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_211/Conv3DConv3D$conv3d_transpose_31/BiasAdd:output:0(conv3d_211/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_211/BiasAdd/ReadVariableOpReadVariableOp*conv3d_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_211/BiasAddBiasAddconv3d_211/Conv3D:output:0)conv3d_211/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_211/ReluReluconv3d_211/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������\
concatenate_31/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_31/concatConcatV2conv3d_190/Relu:activations:0conv3d_211/Relu:activations:0#concatenate_31/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8������������������������������������ �
 conv3d_212/Conv3D/ReadVariableOpReadVariableOp)conv3d_212_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0�
conv3d_212/Conv3DConv3Dconcatenate_31/concat:output:0(conv3d_212/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_212/BiasAdd/ReadVariableOpReadVariableOp*conv3d_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_212/BiasAddBiasAddconv3d_212/Conv3D:output:0)conv3d_212/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_212/ReluReluconv3d_212/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_213/Conv3D/ReadVariableOpReadVariableOp)conv3d_213_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_213/Conv3DConv3Dconv3d_212/Relu:activations:0(conv3d_213/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_213/BiasAdd/ReadVariableOpReadVariableOp*conv3d_213_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_213/BiasAddBiasAddconv3d_213/Conv3D:output:0)conv3d_213/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_213/ReluReluconv3d_213/BiasAdd:output:0*
T0*N
_output_shapes<
::8�������������������������������������
 conv3d_214/Conv3D/ReadVariableOpReadVariableOp)conv3d_214_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_214/Conv3DConv3Dconv3d_213/Relu:activations:0(conv3d_214/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_214/BiasAdd/ReadVariableOpReadVariableOp*conv3d_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_214/BiasAddBiasAddconv3d_214/Conv3D:output:0)conv3d_214/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
conv3d_214/ReluReluconv3d_214/BiasAdd:output:0*
T0*N
_output_shapes<
::8������������������������������������}
 cropping3d_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
"cropping3d_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
"cropping3d_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               �
cropping3d_7/strided_sliceStridedSliceconv3d_214/Relu:activations:0)cropping3d_7/strided_slice/stack:output:0+cropping3d_7/strided_slice/stack_1:output:0+cropping3d_7/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8������������������������������������*

begin_mask*
end_mask�
 conv3d_215/Conv3D/ReadVariableOpReadVariableOp)conv3d_215_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0�
conv3d_215/Conv3DConv3D#cropping3d_7/strided_slice:output:0(conv3d_215/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8������������������������������������*
paddingSAME*
strides	
�
!conv3d_215/BiasAdd/ReadVariableOpReadVariableOp*conv3d_215_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv3d_215/BiasAddBiasAddconv3d_215/Conv3D:output:0)conv3d_215/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8�������������������������������������
IdentityIdentityconv3d_215/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������
NoOpNoOp"^conv3d_189/BiasAdd/ReadVariableOp!^conv3d_189/Conv3D/ReadVariableOp"^conv3d_190/BiasAdd/ReadVariableOp!^conv3d_190/Conv3D/ReadVariableOp"^conv3d_191/BiasAdd/ReadVariableOp!^conv3d_191/Conv3D/ReadVariableOp"^conv3d_192/BiasAdd/ReadVariableOp!^conv3d_192/Conv3D/ReadVariableOp"^conv3d_193/BiasAdd/ReadVariableOp!^conv3d_193/Conv3D/ReadVariableOp"^conv3d_194/BiasAdd/ReadVariableOp!^conv3d_194/Conv3D/ReadVariableOp"^conv3d_195/BiasAdd/ReadVariableOp!^conv3d_195/Conv3D/ReadVariableOp"^conv3d_196/BiasAdd/ReadVariableOp!^conv3d_196/Conv3D/ReadVariableOp"^conv3d_197/BiasAdd/ReadVariableOp!^conv3d_197/Conv3D/ReadVariableOp"^conv3d_198/BiasAdd/ReadVariableOp!^conv3d_198/Conv3D/ReadVariableOp"^conv3d_199/BiasAdd/ReadVariableOp!^conv3d_199/Conv3D/ReadVariableOp"^conv3d_200/BiasAdd/ReadVariableOp!^conv3d_200/Conv3D/ReadVariableOp"^conv3d_201/BiasAdd/ReadVariableOp!^conv3d_201/Conv3D/ReadVariableOp"^conv3d_202/BiasAdd/ReadVariableOp!^conv3d_202/Conv3D/ReadVariableOp"^conv3d_203/BiasAdd/ReadVariableOp!^conv3d_203/Conv3D/ReadVariableOp"^conv3d_204/BiasAdd/ReadVariableOp!^conv3d_204/Conv3D/ReadVariableOp"^conv3d_205/BiasAdd/ReadVariableOp!^conv3d_205/Conv3D/ReadVariableOp"^conv3d_206/BiasAdd/ReadVariableOp!^conv3d_206/Conv3D/ReadVariableOp"^conv3d_207/BiasAdd/ReadVariableOp!^conv3d_207/Conv3D/ReadVariableOp"^conv3d_208/BiasAdd/ReadVariableOp!^conv3d_208/Conv3D/ReadVariableOp"^conv3d_209/BiasAdd/ReadVariableOp!^conv3d_209/Conv3D/ReadVariableOp"^conv3d_210/BiasAdd/ReadVariableOp!^conv3d_210/Conv3D/ReadVariableOp"^conv3d_211/BiasAdd/ReadVariableOp!^conv3d_211/Conv3D/ReadVariableOp"^conv3d_212/BiasAdd/ReadVariableOp!^conv3d_212/Conv3D/ReadVariableOp"^conv3d_213/BiasAdd/ReadVariableOp!^conv3d_213/Conv3D/ReadVariableOp"^conv3d_214/BiasAdd/ReadVariableOp!^conv3d_214/Conv3D/ReadVariableOp"^conv3d_215/BiasAdd/ReadVariableOp!^conv3d_215/Conv3D/ReadVariableOp+^conv3d_transpose_28/BiasAdd/ReadVariableOp4^conv3d_transpose_28/conv3d_transpose/ReadVariableOp+^conv3d_transpose_29/BiasAdd/ReadVariableOp4^conv3d_transpose_29/conv3d_transpose/ReadVariableOp+^conv3d_transpose_30/BiasAdd/ReadVariableOp4^conv3d_transpose_30/conv3d_transpose/ReadVariableOp+^conv3d_transpose_31/BiasAdd/ReadVariableOp4^conv3d_transpose_31/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_189/BiasAdd/ReadVariableOp!conv3d_189/BiasAdd/ReadVariableOp2D
 conv3d_189/Conv3D/ReadVariableOp conv3d_189/Conv3D/ReadVariableOp2F
!conv3d_190/BiasAdd/ReadVariableOp!conv3d_190/BiasAdd/ReadVariableOp2D
 conv3d_190/Conv3D/ReadVariableOp conv3d_190/Conv3D/ReadVariableOp2F
!conv3d_191/BiasAdd/ReadVariableOp!conv3d_191/BiasAdd/ReadVariableOp2D
 conv3d_191/Conv3D/ReadVariableOp conv3d_191/Conv3D/ReadVariableOp2F
!conv3d_192/BiasAdd/ReadVariableOp!conv3d_192/BiasAdd/ReadVariableOp2D
 conv3d_192/Conv3D/ReadVariableOp conv3d_192/Conv3D/ReadVariableOp2F
!conv3d_193/BiasAdd/ReadVariableOp!conv3d_193/BiasAdd/ReadVariableOp2D
 conv3d_193/Conv3D/ReadVariableOp conv3d_193/Conv3D/ReadVariableOp2F
!conv3d_194/BiasAdd/ReadVariableOp!conv3d_194/BiasAdd/ReadVariableOp2D
 conv3d_194/Conv3D/ReadVariableOp conv3d_194/Conv3D/ReadVariableOp2F
!conv3d_195/BiasAdd/ReadVariableOp!conv3d_195/BiasAdd/ReadVariableOp2D
 conv3d_195/Conv3D/ReadVariableOp conv3d_195/Conv3D/ReadVariableOp2F
!conv3d_196/BiasAdd/ReadVariableOp!conv3d_196/BiasAdd/ReadVariableOp2D
 conv3d_196/Conv3D/ReadVariableOp conv3d_196/Conv3D/ReadVariableOp2F
!conv3d_197/BiasAdd/ReadVariableOp!conv3d_197/BiasAdd/ReadVariableOp2D
 conv3d_197/Conv3D/ReadVariableOp conv3d_197/Conv3D/ReadVariableOp2F
!conv3d_198/BiasAdd/ReadVariableOp!conv3d_198/BiasAdd/ReadVariableOp2D
 conv3d_198/Conv3D/ReadVariableOp conv3d_198/Conv3D/ReadVariableOp2F
!conv3d_199/BiasAdd/ReadVariableOp!conv3d_199/BiasAdd/ReadVariableOp2D
 conv3d_199/Conv3D/ReadVariableOp conv3d_199/Conv3D/ReadVariableOp2F
!conv3d_200/BiasAdd/ReadVariableOp!conv3d_200/BiasAdd/ReadVariableOp2D
 conv3d_200/Conv3D/ReadVariableOp conv3d_200/Conv3D/ReadVariableOp2F
!conv3d_201/BiasAdd/ReadVariableOp!conv3d_201/BiasAdd/ReadVariableOp2D
 conv3d_201/Conv3D/ReadVariableOp conv3d_201/Conv3D/ReadVariableOp2F
!conv3d_202/BiasAdd/ReadVariableOp!conv3d_202/BiasAdd/ReadVariableOp2D
 conv3d_202/Conv3D/ReadVariableOp conv3d_202/Conv3D/ReadVariableOp2F
!conv3d_203/BiasAdd/ReadVariableOp!conv3d_203/BiasAdd/ReadVariableOp2D
 conv3d_203/Conv3D/ReadVariableOp conv3d_203/Conv3D/ReadVariableOp2F
!conv3d_204/BiasAdd/ReadVariableOp!conv3d_204/BiasAdd/ReadVariableOp2D
 conv3d_204/Conv3D/ReadVariableOp conv3d_204/Conv3D/ReadVariableOp2F
!conv3d_205/BiasAdd/ReadVariableOp!conv3d_205/BiasAdd/ReadVariableOp2D
 conv3d_205/Conv3D/ReadVariableOp conv3d_205/Conv3D/ReadVariableOp2F
!conv3d_206/BiasAdd/ReadVariableOp!conv3d_206/BiasAdd/ReadVariableOp2D
 conv3d_206/Conv3D/ReadVariableOp conv3d_206/Conv3D/ReadVariableOp2F
!conv3d_207/BiasAdd/ReadVariableOp!conv3d_207/BiasAdd/ReadVariableOp2D
 conv3d_207/Conv3D/ReadVariableOp conv3d_207/Conv3D/ReadVariableOp2F
!conv3d_208/BiasAdd/ReadVariableOp!conv3d_208/BiasAdd/ReadVariableOp2D
 conv3d_208/Conv3D/ReadVariableOp conv3d_208/Conv3D/ReadVariableOp2F
!conv3d_209/BiasAdd/ReadVariableOp!conv3d_209/BiasAdd/ReadVariableOp2D
 conv3d_209/Conv3D/ReadVariableOp conv3d_209/Conv3D/ReadVariableOp2F
!conv3d_210/BiasAdd/ReadVariableOp!conv3d_210/BiasAdd/ReadVariableOp2D
 conv3d_210/Conv3D/ReadVariableOp conv3d_210/Conv3D/ReadVariableOp2F
!conv3d_211/BiasAdd/ReadVariableOp!conv3d_211/BiasAdd/ReadVariableOp2D
 conv3d_211/Conv3D/ReadVariableOp conv3d_211/Conv3D/ReadVariableOp2F
!conv3d_212/BiasAdd/ReadVariableOp!conv3d_212/BiasAdd/ReadVariableOp2D
 conv3d_212/Conv3D/ReadVariableOp conv3d_212/Conv3D/ReadVariableOp2F
!conv3d_213/BiasAdd/ReadVariableOp!conv3d_213/BiasAdd/ReadVariableOp2D
 conv3d_213/Conv3D/ReadVariableOp conv3d_213/Conv3D/ReadVariableOp2F
!conv3d_214/BiasAdd/ReadVariableOp!conv3d_214/BiasAdd/ReadVariableOp2D
 conv3d_214/Conv3D/ReadVariableOp conv3d_214/Conv3D/ReadVariableOp2F
!conv3d_215/BiasAdd/ReadVariableOp!conv3d_215/BiasAdd/ReadVariableOp2D
 conv3d_215/Conv3D/ReadVariableOp conv3d_215/Conv3D/ReadVariableOp2X
*conv3d_transpose_28/BiasAdd/ReadVariableOp*conv3d_transpose_28/BiasAdd/ReadVariableOp2j
3conv3d_transpose_28/conv3d_transpose/ReadVariableOp3conv3d_transpose_28/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_29/BiasAdd/ReadVariableOp*conv3d_transpose_29/BiasAdd/ReadVariableOp2j
3conv3d_transpose_29/conv3d_transpose/ReadVariableOp3conv3d_transpose_29/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_30/BiasAdd/ReadVariableOp*conv3d_transpose_30/BiasAdd/ReadVariableOp2j
3conv3d_transpose_30/conv3d_transpose/ReadVariableOp3conv3d_transpose_30/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_31/BiasAdd/ReadVariableOp*conv3d_transpose_31/BiasAdd/ReadVariableOp2j
3conv3d_transpose_31/conv3d_transpose/ReadVariableOp3conv3d_transpose_31/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_192_layer_call_and_return_conditional_losses_241245

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
M
1__inference_max_pooling3d_31_layer_call_fn_241350

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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_238014�
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
v
J__inference_concatenate_30_layer_call_and_return_conditional_losses_241752
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
�
h
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_238014

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
�
h
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_241155

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
�
M
1__inference_max_pooling3d_30_layer_call_fn_241300

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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_238002�
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
F__inference_conv3d_204_layer_call_and_return_conditional_losses_241635

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
�
�
+__inference_conv3d_211_layer_call_fn_241865

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_211_layer_call_and_return_conditional_losses_238666�
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
t
J__inference_concatenate_31_layer_call_and_return_conditional_losses_238679

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
�"
�
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_241582

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
�
(__inference_model_7_layer_call_fn_238877
input_8%
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
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8� *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_238750�
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
_user_specified_name	input_8
��
�
C__inference_model_7_layer_call_and_return_conditional_losses_239900
input_8/
conv3d_189_239735:
conv3d_189_239737:/
conv3d_190_239740:
conv3d_190_239742:/
conv3d_191_239746: 
conv3d_191_239748: /
conv3d_192_239751:  
conv3d_192_239753: /
conv3d_193_239757: @
conv3d_193_239759:@/
conv3d_194_239762:@@
conv3d_194_239764:@0
conv3d_195_239768:@� 
conv3d_195_239770:	�1
conv3d_196_239773:�� 
conv3d_196_239775:	�1
conv3d_197_239779:�� 
conv3d_197_239781:	�1
conv3d_198_239784:�� 
conv3d_198_239786:	�:
conv3d_transpose_28_239789:��)
conv3d_transpose_28_239791:	�1
conv3d_199_239794:�� 
conv3d_199_239796:	�1
conv3d_200_239800:�� 
conv3d_200_239802:	�1
conv3d_201_239805:�� 
conv3d_201_239807:	�1
conv3d_202_239810:�� 
conv3d_202_239812:	�9
conv3d_transpose_29_239815:@�(
conv3d_transpose_29_239817:@/
conv3d_203_239820:@@
conv3d_203_239822:@0
conv3d_204_239826:�@
conv3d_204_239828:@/
conv3d_205_239831:@@
conv3d_205_239833:@/
conv3d_206_239836:@@
conv3d_206_239838:@8
conv3d_transpose_30_239841: @(
conv3d_transpose_30_239843: /
conv3d_207_239846:  
conv3d_207_239848: /
conv3d_208_239852:@ 
conv3d_208_239854: /
conv3d_209_239857:  
conv3d_209_239859: /
conv3d_210_239862:  
conv3d_210_239864: 8
conv3d_transpose_31_239867: (
conv3d_transpose_31_239869:/
conv3d_211_239872:
conv3d_211_239874:/
conv3d_212_239878: 
conv3d_212_239880:/
conv3d_213_239883:
conv3d_213_239885:/
conv3d_214_239888:
conv3d_214_239890:/
conv3d_215_239894:
conv3d_215_239896:
identity��"conv3d_189/StatefulPartitionedCall�"conv3d_190/StatefulPartitionedCall�"conv3d_191/StatefulPartitionedCall�"conv3d_192/StatefulPartitionedCall�"conv3d_193/StatefulPartitionedCall�"conv3d_194/StatefulPartitionedCall�"conv3d_195/StatefulPartitionedCall�"conv3d_196/StatefulPartitionedCall�"conv3d_197/StatefulPartitionedCall�"conv3d_198/StatefulPartitionedCall�"conv3d_199/StatefulPartitionedCall�"conv3d_200/StatefulPartitionedCall�"conv3d_201/StatefulPartitionedCall�"conv3d_202/StatefulPartitionedCall�"conv3d_203/StatefulPartitionedCall�"conv3d_204/StatefulPartitionedCall�"conv3d_205/StatefulPartitionedCall�"conv3d_206/StatefulPartitionedCall�"conv3d_207/StatefulPartitionedCall�"conv3d_208/StatefulPartitionedCall�"conv3d_209/StatefulPartitionedCall�"conv3d_210/StatefulPartitionedCall�"conv3d_211/StatefulPartitionedCall�"conv3d_212/StatefulPartitionedCall�"conv3d_213/StatefulPartitionedCall�"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�+conv3d_transpose_28/StatefulPartitionedCall�+conv3d_transpose_29/StatefulPartitionedCall�+conv3d_transpose_30/StatefulPartitionedCall�+conv3d_transpose_31/StatefulPartitionedCall�
 zero_padding3d_7/PartitionedCallPartitionedCallinput_8*
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
GPU2*0J 8� *U
fPRN
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_237966�
"conv3d_189/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_189_239735conv3d_189_239737*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_189_layer_call_and_return_conditional_losses_238241�
"conv3d_190/StatefulPartitionedCallStatefulPartitionedCall+conv3d_189/StatefulPartitionedCall:output:0conv3d_190_239740conv3d_190_239742*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_190_layer_call_and_return_conditional_losses_238258�
 max_pooling3d_28/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_237978�
"conv3d_191/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_28/PartitionedCall:output:0conv3d_191_239746conv3d_191_239748*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_191_layer_call_and_return_conditional_losses_238276�
"conv3d_192/StatefulPartitionedCallStatefulPartitionedCall+conv3d_191/StatefulPartitionedCall:output:0conv3d_192_239751conv3d_192_239753*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_192_layer_call_and_return_conditional_losses_238293�
 max_pooling3d_29/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_237990�
"conv3d_193/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_29/PartitionedCall:output:0conv3d_193_239757conv3d_193_239759*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_193_layer_call_and_return_conditional_losses_238311�
"conv3d_194/StatefulPartitionedCallStatefulPartitionedCall+conv3d_193/StatefulPartitionedCall:output:0conv3d_194_239762conv3d_194_239764*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_194_layer_call_and_return_conditional_losses_238328�
 max_pooling3d_30/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_238002�
"conv3d_195/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_30/PartitionedCall:output:0conv3d_195_239768conv3d_195_239770*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_195_layer_call_and_return_conditional_losses_238346�
"conv3d_196/StatefulPartitionedCallStatefulPartitionedCall+conv3d_195/StatefulPartitionedCall:output:0conv3d_196_239773conv3d_196_239775*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_196_layer_call_and_return_conditional_losses_238363�
 max_pooling3d_31/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_238014�
"conv3d_197/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_31/PartitionedCall:output:0conv3d_197_239779conv3d_197_239781*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_197_layer_call_and_return_conditional_losses_238381�
"conv3d_198/StatefulPartitionedCallStatefulPartitionedCall+conv3d_197/StatefulPartitionedCall:output:0conv3d_198_239784conv3d_198_239786*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_198_layer_call_and_return_conditional_losses_238398�
+conv3d_transpose_28/StatefulPartitionedCallStatefulPartitionedCall+conv3d_198/StatefulPartitionedCall:output:0conv3d_transpose_28_239789conv3d_transpose_28_239791*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_238062�
"conv3d_199/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_28/StatefulPartitionedCall:output:0conv3d_199_239794conv3d_199_239796*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_199_layer_call_and_return_conditional_losses_238420�
concatenate_28/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0+conv3d_199/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_28_layer_call_and_return_conditional_losses_238433�
"conv3d_200/StatefulPartitionedCallStatefulPartitionedCall'concatenate_28/PartitionedCall:output:0conv3d_200_239800conv3d_200_239802*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_200_layer_call_and_return_conditional_losses_238446�
"conv3d_201/StatefulPartitionedCallStatefulPartitionedCall+conv3d_200/StatefulPartitionedCall:output:0conv3d_201_239805conv3d_201_239807*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_201_layer_call_and_return_conditional_losses_238463�
"conv3d_202/StatefulPartitionedCallStatefulPartitionedCall+conv3d_201/StatefulPartitionedCall:output:0conv3d_202_239810conv3d_202_239812*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_202_layer_call_and_return_conditional_losses_238480�
+conv3d_transpose_29/StatefulPartitionedCallStatefulPartitionedCall+conv3d_202/StatefulPartitionedCall:output:0conv3d_transpose_29_239815conv3d_transpose_29_239817*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_238108�
"conv3d_203/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_29/StatefulPartitionedCall:output:0conv3d_203_239820conv3d_203_239822*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_203_layer_call_and_return_conditional_losses_238502�
concatenate_29/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0+conv3d_203/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_29_layer_call_and_return_conditional_losses_238515�
"conv3d_204/StatefulPartitionedCallStatefulPartitionedCall'concatenate_29/PartitionedCall:output:0conv3d_204_239826conv3d_204_239828*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_204_layer_call_and_return_conditional_losses_238528�
"conv3d_205/StatefulPartitionedCallStatefulPartitionedCall+conv3d_204/StatefulPartitionedCall:output:0conv3d_205_239831conv3d_205_239833*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_205_layer_call_and_return_conditional_losses_238545�
"conv3d_206/StatefulPartitionedCallStatefulPartitionedCall+conv3d_205/StatefulPartitionedCall:output:0conv3d_206_239836conv3d_206_239838*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_206_layer_call_and_return_conditional_losses_238562�
+conv3d_transpose_30/StatefulPartitionedCallStatefulPartitionedCall+conv3d_206/StatefulPartitionedCall:output:0conv3d_transpose_30_239841conv3d_transpose_30_239843*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_238154�
"conv3d_207/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_30/StatefulPartitionedCall:output:0conv3d_207_239846conv3d_207_239848*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_207_layer_call_and_return_conditional_losses_238584�
concatenate_30/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0+conv3d_207/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_30_layer_call_and_return_conditional_losses_238597�
"conv3d_208/StatefulPartitionedCallStatefulPartitionedCall'concatenate_30/PartitionedCall:output:0conv3d_208_239852conv3d_208_239854*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_208_layer_call_and_return_conditional_losses_238610�
"conv3d_209/StatefulPartitionedCallStatefulPartitionedCall+conv3d_208/StatefulPartitionedCall:output:0conv3d_209_239857conv3d_209_239859*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_209_layer_call_and_return_conditional_losses_238627�
"conv3d_210/StatefulPartitionedCallStatefulPartitionedCall+conv3d_209/StatefulPartitionedCall:output:0conv3d_210_239862conv3d_210_239864*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_210_layer_call_and_return_conditional_losses_238644�
+conv3d_transpose_31/StatefulPartitionedCallStatefulPartitionedCall+conv3d_210/StatefulPartitionedCall:output:0conv3d_transpose_31_239867conv3d_transpose_31_239869*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_238200�
"conv3d_211/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_31/StatefulPartitionedCall:output:0conv3d_211_239872conv3d_211_239874*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_211_layer_call_and_return_conditional_losses_238666�
concatenate_31/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0+conv3d_211/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_31_layer_call_and_return_conditional_losses_238679�
"conv3d_212/StatefulPartitionedCallStatefulPartitionedCall'concatenate_31/PartitionedCall:output:0conv3d_212_239878conv3d_212_239880*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_212_layer_call_and_return_conditional_losses_238692�
"conv3d_213/StatefulPartitionedCallStatefulPartitionedCall+conv3d_212/StatefulPartitionedCall:output:0conv3d_213_239883conv3d_213_239885*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_213_layer_call_and_return_conditional_losses_238709�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCall+conv3d_213/StatefulPartitionedCall:output:0conv3d_214_239888conv3d_214_239890*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_214_layer_call_and_return_conditional_losses_238726�
cropping3d_7/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *Q
fLRJ
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_238219�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_7/PartitionedCall:output:0conv3d_215_239894conv3d_215_239896*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_215_layer_call_and_return_conditional_losses_238743�
IdentityIdentity+conv3d_215/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp#^conv3d_189/StatefulPartitionedCall#^conv3d_190/StatefulPartitionedCall#^conv3d_191/StatefulPartitionedCall#^conv3d_192/StatefulPartitionedCall#^conv3d_193/StatefulPartitionedCall#^conv3d_194/StatefulPartitionedCall#^conv3d_195/StatefulPartitionedCall#^conv3d_196/StatefulPartitionedCall#^conv3d_197/StatefulPartitionedCall#^conv3d_198/StatefulPartitionedCall#^conv3d_199/StatefulPartitionedCall#^conv3d_200/StatefulPartitionedCall#^conv3d_201/StatefulPartitionedCall#^conv3d_202/StatefulPartitionedCall#^conv3d_203/StatefulPartitionedCall#^conv3d_204/StatefulPartitionedCall#^conv3d_205/StatefulPartitionedCall#^conv3d_206/StatefulPartitionedCall#^conv3d_207/StatefulPartitionedCall#^conv3d_208/StatefulPartitionedCall#^conv3d_209/StatefulPartitionedCall#^conv3d_210/StatefulPartitionedCall#^conv3d_211/StatefulPartitionedCall#^conv3d_212/StatefulPartitionedCall#^conv3d_213/StatefulPartitionedCall#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall,^conv3d_transpose_28/StatefulPartitionedCall,^conv3d_transpose_29/StatefulPartitionedCall,^conv3d_transpose_30/StatefulPartitionedCall,^conv3d_transpose_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_189/StatefulPartitionedCall"conv3d_189/StatefulPartitionedCall2H
"conv3d_190/StatefulPartitionedCall"conv3d_190/StatefulPartitionedCall2H
"conv3d_191/StatefulPartitionedCall"conv3d_191/StatefulPartitionedCall2H
"conv3d_192/StatefulPartitionedCall"conv3d_192/StatefulPartitionedCall2H
"conv3d_193/StatefulPartitionedCall"conv3d_193/StatefulPartitionedCall2H
"conv3d_194/StatefulPartitionedCall"conv3d_194/StatefulPartitionedCall2H
"conv3d_195/StatefulPartitionedCall"conv3d_195/StatefulPartitionedCall2H
"conv3d_196/StatefulPartitionedCall"conv3d_196/StatefulPartitionedCall2H
"conv3d_197/StatefulPartitionedCall"conv3d_197/StatefulPartitionedCall2H
"conv3d_198/StatefulPartitionedCall"conv3d_198/StatefulPartitionedCall2H
"conv3d_199/StatefulPartitionedCall"conv3d_199/StatefulPartitionedCall2H
"conv3d_200/StatefulPartitionedCall"conv3d_200/StatefulPartitionedCall2H
"conv3d_201/StatefulPartitionedCall"conv3d_201/StatefulPartitionedCall2H
"conv3d_202/StatefulPartitionedCall"conv3d_202/StatefulPartitionedCall2H
"conv3d_203/StatefulPartitionedCall"conv3d_203/StatefulPartitionedCall2H
"conv3d_204/StatefulPartitionedCall"conv3d_204/StatefulPartitionedCall2H
"conv3d_205/StatefulPartitionedCall"conv3d_205/StatefulPartitionedCall2H
"conv3d_206/StatefulPartitionedCall"conv3d_206/StatefulPartitionedCall2H
"conv3d_207/StatefulPartitionedCall"conv3d_207/StatefulPartitionedCall2H
"conv3d_208/StatefulPartitionedCall"conv3d_208/StatefulPartitionedCall2H
"conv3d_209/StatefulPartitionedCall"conv3d_209/StatefulPartitionedCall2H
"conv3d_210/StatefulPartitionedCall"conv3d_210/StatefulPartitionedCall2H
"conv3d_211/StatefulPartitionedCall"conv3d_211/StatefulPartitionedCall2H
"conv3d_212/StatefulPartitionedCall"conv3d_212/StatefulPartitionedCall2H
"conv3d_213/StatefulPartitionedCall"conv3d_213/StatefulPartitionedCall2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2Z
+conv3d_transpose_28/StatefulPartitionedCall+conv3d_transpose_28/StatefulPartitionedCall2Z
+conv3d_transpose_29/StatefulPartitionedCall+conv3d_transpose_29/StatefulPartitionedCall2Z
+conv3d_transpose_30/StatefulPartitionedCall+conv3d_transpose_30/StatefulPartitionedCall2Z
+conv3d_transpose_31/StatefulPartitionedCall+conv3d_transpose_31/StatefulPartitionedCall:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_8
��
�S
__inference__traced_save_242589
file_prefix0
,savev2_conv3d_189_kernel_read_readvariableop.
*savev2_conv3d_189_bias_read_readvariableop0
,savev2_conv3d_190_kernel_read_readvariableop.
*savev2_conv3d_190_bias_read_readvariableop0
,savev2_conv3d_191_kernel_read_readvariableop.
*savev2_conv3d_191_bias_read_readvariableop0
,savev2_conv3d_192_kernel_read_readvariableop.
*savev2_conv3d_192_bias_read_readvariableop0
,savev2_conv3d_193_kernel_read_readvariableop.
*savev2_conv3d_193_bias_read_readvariableop0
,savev2_conv3d_194_kernel_read_readvariableop.
*savev2_conv3d_194_bias_read_readvariableop0
,savev2_conv3d_195_kernel_read_readvariableop.
*savev2_conv3d_195_bias_read_readvariableop0
,savev2_conv3d_196_kernel_read_readvariableop.
*savev2_conv3d_196_bias_read_readvariableop0
,savev2_conv3d_197_kernel_read_readvariableop.
*savev2_conv3d_197_bias_read_readvariableop0
,savev2_conv3d_198_kernel_read_readvariableop.
*savev2_conv3d_198_bias_read_readvariableop9
5savev2_conv3d_transpose_28_kernel_read_readvariableop7
3savev2_conv3d_transpose_28_bias_read_readvariableop0
,savev2_conv3d_199_kernel_read_readvariableop.
*savev2_conv3d_199_bias_read_readvariableop0
,savev2_conv3d_200_kernel_read_readvariableop.
*savev2_conv3d_200_bias_read_readvariableop0
,savev2_conv3d_201_kernel_read_readvariableop.
*savev2_conv3d_201_bias_read_readvariableop0
,savev2_conv3d_202_kernel_read_readvariableop.
*savev2_conv3d_202_bias_read_readvariableop9
5savev2_conv3d_transpose_29_kernel_read_readvariableop7
3savev2_conv3d_transpose_29_bias_read_readvariableop0
,savev2_conv3d_203_kernel_read_readvariableop.
*savev2_conv3d_203_bias_read_readvariableop0
,savev2_conv3d_204_kernel_read_readvariableop.
*savev2_conv3d_204_bias_read_readvariableop0
,savev2_conv3d_205_kernel_read_readvariableop.
*savev2_conv3d_205_bias_read_readvariableop0
,savev2_conv3d_206_kernel_read_readvariableop.
*savev2_conv3d_206_bias_read_readvariableop9
5savev2_conv3d_transpose_30_kernel_read_readvariableop7
3savev2_conv3d_transpose_30_bias_read_readvariableop0
,savev2_conv3d_207_kernel_read_readvariableop.
*savev2_conv3d_207_bias_read_readvariableop0
,savev2_conv3d_208_kernel_read_readvariableop.
*savev2_conv3d_208_bias_read_readvariableop0
,savev2_conv3d_209_kernel_read_readvariableop.
*savev2_conv3d_209_bias_read_readvariableop0
,savev2_conv3d_210_kernel_read_readvariableop.
*savev2_conv3d_210_bias_read_readvariableop9
5savev2_conv3d_transpose_31_kernel_read_readvariableop7
3savev2_conv3d_transpose_31_bias_read_readvariableop0
,savev2_conv3d_211_kernel_read_readvariableop.
*savev2_conv3d_211_bias_read_readvariableop0
,savev2_conv3d_212_kernel_read_readvariableop.
*savev2_conv3d_212_bias_read_readvariableop0
,savev2_conv3d_213_kernel_read_readvariableop.
*savev2_conv3d_213_bias_read_readvariableop0
,savev2_conv3d_214_kernel_read_readvariableop.
*savev2_conv3d_214_bias_read_readvariableop0
,savev2_conv3d_215_kernel_read_readvariableop.
*savev2_conv3d_215_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv3d_189_kernel_m_read_readvariableop5
1savev2_adam_conv3d_189_bias_m_read_readvariableop7
3savev2_adam_conv3d_190_kernel_m_read_readvariableop5
1savev2_adam_conv3d_190_bias_m_read_readvariableop7
3savev2_adam_conv3d_191_kernel_m_read_readvariableop5
1savev2_adam_conv3d_191_bias_m_read_readvariableop7
3savev2_adam_conv3d_192_kernel_m_read_readvariableop5
1savev2_adam_conv3d_192_bias_m_read_readvariableop7
3savev2_adam_conv3d_193_kernel_m_read_readvariableop5
1savev2_adam_conv3d_193_bias_m_read_readvariableop7
3savev2_adam_conv3d_194_kernel_m_read_readvariableop5
1savev2_adam_conv3d_194_bias_m_read_readvariableop7
3savev2_adam_conv3d_195_kernel_m_read_readvariableop5
1savev2_adam_conv3d_195_bias_m_read_readvariableop7
3savev2_adam_conv3d_196_kernel_m_read_readvariableop5
1savev2_adam_conv3d_196_bias_m_read_readvariableop7
3savev2_adam_conv3d_197_kernel_m_read_readvariableop5
1savev2_adam_conv3d_197_bias_m_read_readvariableop7
3savev2_adam_conv3d_198_kernel_m_read_readvariableop5
1savev2_adam_conv3d_198_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_28_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_28_bias_m_read_readvariableop7
3savev2_adam_conv3d_199_kernel_m_read_readvariableop5
1savev2_adam_conv3d_199_bias_m_read_readvariableop7
3savev2_adam_conv3d_200_kernel_m_read_readvariableop5
1savev2_adam_conv3d_200_bias_m_read_readvariableop7
3savev2_adam_conv3d_201_kernel_m_read_readvariableop5
1savev2_adam_conv3d_201_bias_m_read_readvariableop7
3savev2_adam_conv3d_202_kernel_m_read_readvariableop5
1savev2_adam_conv3d_202_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_29_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_29_bias_m_read_readvariableop7
3savev2_adam_conv3d_203_kernel_m_read_readvariableop5
1savev2_adam_conv3d_203_bias_m_read_readvariableop7
3savev2_adam_conv3d_204_kernel_m_read_readvariableop5
1savev2_adam_conv3d_204_bias_m_read_readvariableop7
3savev2_adam_conv3d_205_kernel_m_read_readvariableop5
1savev2_adam_conv3d_205_bias_m_read_readvariableop7
3savev2_adam_conv3d_206_kernel_m_read_readvariableop5
1savev2_adam_conv3d_206_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_30_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_30_bias_m_read_readvariableop7
3savev2_adam_conv3d_207_kernel_m_read_readvariableop5
1savev2_adam_conv3d_207_bias_m_read_readvariableop7
3savev2_adam_conv3d_208_kernel_m_read_readvariableop5
1savev2_adam_conv3d_208_bias_m_read_readvariableop7
3savev2_adam_conv3d_209_kernel_m_read_readvariableop5
1savev2_adam_conv3d_209_bias_m_read_readvariableop7
3savev2_adam_conv3d_210_kernel_m_read_readvariableop5
1savev2_adam_conv3d_210_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_31_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_31_bias_m_read_readvariableop7
3savev2_adam_conv3d_211_kernel_m_read_readvariableop5
1savev2_adam_conv3d_211_bias_m_read_readvariableop7
3savev2_adam_conv3d_212_kernel_m_read_readvariableop5
1savev2_adam_conv3d_212_bias_m_read_readvariableop7
3savev2_adam_conv3d_213_kernel_m_read_readvariableop5
1savev2_adam_conv3d_213_bias_m_read_readvariableop7
3savev2_adam_conv3d_214_kernel_m_read_readvariableop5
1savev2_adam_conv3d_214_bias_m_read_readvariableop7
3savev2_adam_conv3d_215_kernel_m_read_readvariableop5
1savev2_adam_conv3d_215_bias_m_read_readvariableop7
3savev2_adam_conv3d_189_kernel_v_read_readvariableop5
1savev2_adam_conv3d_189_bias_v_read_readvariableop7
3savev2_adam_conv3d_190_kernel_v_read_readvariableop5
1savev2_adam_conv3d_190_bias_v_read_readvariableop7
3savev2_adam_conv3d_191_kernel_v_read_readvariableop5
1savev2_adam_conv3d_191_bias_v_read_readvariableop7
3savev2_adam_conv3d_192_kernel_v_read_readvariableop5
1savev2_adam_conv3d_192_bias_v_read_readvariableop7
3savev2_adam_conv3d_193_kernel_v_read_readvariableop5
1savev2_adam_conv3d_193_bias_v_read_readvariableop7
3savev2_adam_conv3d_194_kernel_v_read_readvariableop5
1savev2_adam_conv3d_194_bias_v_read_readvariableop7
3savev2_adam_conv3d_195_kernel_v_read_readvariableop5
1savev2_adam_conv3d_195_bias_v_read_readvariableop7
3savev2_adam_conv3d_196_kernel_v_read_readvariableop5
1savev2_adam_conv3d_196_bias_v_read_readvariableop7
3savev2_adam_conv3d_197_kernel_v_read_readvariableop5
1savev2_adam_conv3d_197_bias_v_read_readvariableop7
3savev2_adam_conv3d_198_kernel_v_read_readvariableop5
1savev2_adam_conv3d_198_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_28_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_28_bias_v_read_readvariableop7
3savev2_adam_conv3d_199_kernel_v_read_readvariableop5
1savev2_adam_conv3d_199_bias_v_read_readvariableop7
3savev2_adam_conv3d_200_kernel_v_read_readvariableop5
1savev2_adam_conv3d_200_bias_v_read_readvariableop7
3savev2_adam_conv3d_201_kernel_v_read_readvariableop5
1savev2_adam_conv3d_201_bias_v_read_readvariableop7
3savev2_adam_conv3d_202_kernel_v_read_readvariableop5
1savev2_adam_conv3d_202_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_29_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_29_bias_v_read_readvariableop7
3savev2_adam_conv3d_203_kernel_v_read_readvariableop5
1savev2_adam_conv3d_203_bias_v_read_readvariableop7
3savev2_adam_conv3d_204_kernel_v_read_readvariableop5
1savev2_adam_conv3d_204_bias_v_read_readvariableop7
3savev2_adam_conv3d_205_kernel_v_read_readvariableop5
1savev2_adam_conv3d_205_bias_v_read_readvariableop7
3savev2_adam_conv3d_206_kernel_v_read_readvariableop5
1savev2_adam_conv3d_206_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_30_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_30_bias_v_read_readvariableop7
3savev2_adam_conv3d_207_kernel_v_read_readvariableop5
1savev2_adam_conv3d_207_bias_v_read_readvariableop7
3savev2_adam_conv3d_208_kernel_v_read_readvariableop5
1savev2_adam_conv3d_208_bias_v_read_readvariableop7
3savev2_adam_conv3d_209_kernel_v_read_readvariableop5
1savev2_adam_conv3d_209_bias_v_read_readvariableop7
3savev2_adam_conv3d_210_kernel_v_read_readvariableop5
1savev2_adam_conv3d_210_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_31_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_31_bias_v_read_readvariableop7
3savev2_adam_conv3d_211_kernel_v_read_readvariableop5
1savev2_adam_conv3d_211_bias_v_read_readvariableop7
3savev2_adam_conv3d_212_kernel_v_read_readvariableop5
1savev2_adam_conv3d_212_bias_v_read_readvariableop7
3savev2_adam_conv3d_213_kernel_v_read_readvariableop5
1savev2_adam_conv3d_213_bias_v_read_readvariableop7
3savev2_adam_conv3d_214_kernel_v_read_readvariableop5
1savev2_adam_conv3d_214_bias_v_read_readvariableop7
3savev2_adam_conv3d_215_kernel_v_read_readvariableop5
1savev2_adam_conv3d_215_bias_v_read_readvariableop
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
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �O
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_189_kernel_read_readvariableop*savev2_conv3d_189_bias_read_readvariableop,savev2_conv3d_190_kernel_read_readvariableop*savev2_conv3d_190_bias_read_readvariableop,savev2_conv3d_191_kernel_read_readvariableop*savev2_conv3d_191_bias_read_readvariableop,savev2_conv3d_192_kernel_read_readvariableop*savev2_conv3d_192_bias_read_readvariableop,savev2_conv3d_193_kernel_read_readvariableop*savev2_conv3d_193_bias_read_readvariableop,savev2_conv3d_194_kernel_read_readvariableop*savev2_conv3d_194_bias_read_readvariableop,savev2_conv3d_195_kernel_read_readvariableop*savev2_conv3d_195_bias_read_readvariableop,savev2_conv3d_196_kernel_read_readvariableop*savev2_conv3d_196_bias_read_readvariableop,savev2_conv3d_197_kernel_read_readvariableop*savev2_conv3d_197_bias_read_readvariableop,savev2_conv3d_198_kernel_read_readvariableop*savev2_conv3d_198_bias_read_readvariableop5savev2_conv3d_transpose_28_kernel_read_readvariableop3savev2_conv3d_transpose_28_bias_read_readvariableop,savev2_conv3d_199_kernel_read_readvariableop*savev2_conv3d_199_bias_read_readvariableop,savev2_conv3d_200_kernel_read_readvariableop*savev2_conv3d_200_bias_read_readvariableop,savev2_conv3d_201_kernel_read_readvariableop*savev2_conv3d_201_bias_read_readvariableop,savev2_conv3d_202_kernel_read_readvariableop*savev2_conv3d_202_bias_read_readvariableop5savev2_conv3d_transpose_29_kernel_read_readvariableop3savev2_conv3d_transpose_29_bias_read_readvariableop,savev2_conv3d_203_kernel_read_readvariableop*savev2_conv3d_203_bias_read_readvariableop,savev2_conv3d_204_kernel_read_readvariableop*savev2_conv3d_204_bias_read_readvariableop,savev2_conv3d_205_kernel_read_readvariableop*savev2_conv3d_205_bias_read_readvariableop,savev2_conv3d_206_kernel_read_readvariableop*savev2_conv3d_206_bias_read_readvariableop5savev2_conv3d_transpose_30_kernel_read_readvariableop3savev2_conv3d_transpose_30_bias_read_readvariableop,savev2_conv3d_207_kernel_read_readvariableop*savev2_conv3d_207_bias_read_readvariableop,savev2_conv3d_208_kernel_read_readvariableop*savev2_conv3d_208_bias_read_readvariableop,savev2_conv3d_209_kernel_read_readvariableop*savev2_conv3d_209_bias_read_readvariableop,savev2_conv3d_210_kernel_read_readvariableop*savev2_conv3d_210_bias_read_readvariableop5savev2_conv3d_transpose_31_kernel_read_readvariableop3savev2_conv3d_transpose_31_bias_read_readvariableop,savev2_conv3d_211_kernel_read_readvariableop*savev2_conv3d_211_bias_read_readvariableop,savev2_conv3d_212_kernel_read_readvariableop*savev2_conv3d_212_bias_read_readvariableop,savev2_conv3d_213_kernel_read_readvariableop*savev2_conv3d_213_bias_read_readvariableop,savev2_conv3d_214_kernel_read_readvariableop*savev2_conv3d_214_bias_read_readvariableop,savev2_conv3d_215_kernel_read_readvariableop*savev2_conv3d_215_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv3d_189_kernel_m_read_readvariableop1savev2_adam_conv3d_189_bias_m_read_readvariableop3savev2_adam_conv3d_190_kernel_m_read_readvariableop1savev2_adam_conv3d_190_bias_m_read_readvariableop3savev2_adam_conv3d_191_kernel_m_read_readvariableop1savev2_adam_conv3d_191_bias_m_read_readvariableop3savev2_adam_conv3d_192_kernel_m_read_readvariableop1savev2_adam_conv3d_192_bias_m_read_readvariableop3savev2_adam_conv3d_193_kernel_m_read_readvariableop1savev2_adam_conv3d_193_bias_m_read_readvariableop3savev2_adam_conv3d_194_kernel_m_read_readvariableop1savev2_adam_conv3d_194_bias_m_read_readvariableop3savev2_adam_conv3d_195_kernel_m_read_readvariableop1savev2_adam_conv3d_195_bias_m_read_readvariableop3savev2_adam_conv3d_196_kernel_m_read_readvariableop1savev2_adam_conv3d_196_bias_m_read_readvariableop3savev2_adam_conv3d_197_kernel_m_read_readvariableop1savev2_adam_conv3d_197_bias_m_read_readvariableop3savev2_adam_conv3d_198_kernel_m_read_readvariableop1savev2_adam_conv3d_198_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_28_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_28_bias_m_read_readvariableop3savev2_adam_conv3d_199_kernel_m_read_readvariableop1savev2_adam_conv3d_199_bias_m_read_readvariableop3savev2_adam_conv3d_200_kernel_m_read_readvariableop1savev2_adam_conv3d_200_bias_m_read_readvariableop3savev2_adam_conv3d_201_kernel_m_read_readvariableop1savev2_adam_conv3d_201_bias_m_read_readvariableop3savev2_adam_conv3d_202_kernel_m_read_readvariableop1savev2_adam_conv3d_202_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_29_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_29_bias_m_read_readvariableop3savev2_adam_conv3d_203_kernel_m_read_readvariableop1savev2_adam_conv3d_203_bias_m_read_readvariableop3savev2_adam_conv3d_204_kernel_m_read_readvariableop1savev2_adam_conv3d_204_bias_m_read_readvariableop3savev2_adam_conv3d_205_kernel_m_read_readvariableop1savev2_adam_conv3d_205_bias_m_read_readvariableop3savev2_adam_conv3d_206_kernel_m_read_readvariableop1savev2_adam_conv3d_206_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_30_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_30_bias_m_read_readvariableop3savev2_adam_conv3d_207_kernel_m_read_readvariableop1savev2_adam_conv3d_207_bias_m_read_readvariableop3savev2_adam_conv3d_208_kernel_m_read_readvariableop1savev2_adam_conv3d_208_bias_m_read_readvariableop3savev2_adam_conv3d_209_kernel_m_read_readvariableop1savev2_adam_conv3d_209_bias_m_read_readvariableop3savev2_adam_conv3d_210_kernel_m_read_readvariableop1savev2_adam_conv3d_210_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_31_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_31_bias_m_read_readvariableop3savev2_adam_conv3d_211_kernel_m_read_readvariableop1savev2_adam_conv3d_211_bias_m_read_readvariableop3savev2_adam_conv3d_212_kernel_m_read_readvariableop1savev2_adam_conv3d_212_bias_m_read_readvariableop3savev2_adam_conv3d_213_kernel_m_read_readvariableop1savev2_adam_conv3d_213_bias_m_read_readvariableop3savev2_adam_conv3d_214_kernel_m_read_readvariableop1savev2_adam_conv3d_214_bias_m_read_readvariableop3savev2_adam_conv3d_215_kernel_m_read_readvariableop1savev2_adam_conv3d_215_bias_m_read_readvariableop3savev2_adam_conv3d_189_kernel_v_read_readvariableop1savev2_adam_conv3d_189_bias_v_read_readvariableop3savev2_adam_conv3d_190_kernel_v_read_readvariableop1savev2_adam_conv3d_190_bias_v_read_readvariableop3savev2_adam_conv3d_191_kernel_v_read_readvariableop1savev2_adam_conv3d_191_bias_v_read_readvariableop3savev2_adam_conv3d_192_kernel_v_read_readvariableop1savev2_adam_conv3d_192_bias_v_read_readvariableop3savev2_adam_conv3d_193_kernel_v_read_readvariableop1savev2_adam_conv3d_193_bias_v_read_readvariableop3savev2_adam_conv3d_194_kernel_v_read_readvariableop1savev2_adam_conv3d_194_bias_v_read_readvariableop3savev2_adam_conv3d_195_kernel_v_read_readvariableop1savev2_adam_conv3d_195_bias_v_read_readvariableop3savev2_adam_conv3d_196_kernel_v_read_readvariableop1savev2_adam_conv3d_196_bias_v_read_readvariableop3savev2_adam_conv3d_197_kernel_v_read_readvariableop1savev2_adam_conv3d_197_bias_v_read_readvariableop3savev2_adam_conv3d_198_kernel_v_read_readvariableop1savev2_adam_conv3d_198_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_28_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_28_bias_v_read_readvariableop3savev2_adam_conv3d_199_kernel_v_read_readvariableop1savev2_adam_conv3d_199_bias_v_read_readvariableop3savev2_adam_conv3d_200_kernel_v_read_readvariableop1savev2_adam_conv3d_200_bias_v_read_readvariableop3savev2_adam_conv3d_201_kernel_v_read_readvariableop1savev2_adam_conv3d_201_bias_v_read_readvariableop3savev2_adam_conv3d_202_kernel_v_read_readvariableop1savev2_adam_conv3d_202_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_29_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_29_bias_v_read_readvariableop3savev2_adam_conv3d_203_kernel_v_read_readvariableop1savev2_adam_conv3d_203_bias_v_read_readvariableop3savev2_adam_conv3d_204_kernel_v_read_readvariableop1savev2_adam_conv3d_204_bias_v_read_readvariableop3savev2_adam_conv3d_205_kernel_v_read_readvariableop1savev2_adam_conv3d_205_bias_v_read_readvariableop3savev2_adam_conv3d_206_kernel_v_read_readvariableop1savev2_adam_conv3d_206_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_30_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_30_bias_v_read_readvariableop3savev2_adam_conv3d_207_kernel_v_read_readvariableop1savev2_adam_conv3d_207_bias_v_read_readvariableop3savev2_adam_conv3d_208_kernel_v_read_readvariableop1savev2_adam_conv3d_208_bias_v_read_readvariableop3savev2_adam_conv3d_209_kernel_v_read_readvariableop1savev2_adam_conv3d_209_bias_v_read_readvariableop3savev2_adam_conv3d_210_kernel_v_read_readvariableop1savev2_adam_conv3d_210_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_31_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_31_bias_v_read_readvariableop3savev2_adam_conv3d_211_kernel_v_read_readvariableop1savev2_adam_conv3d_211_bias_v_read_readvariableop3savev2_adam_conv3d_212_kernel_v_read_readvariableop1savev2_adam_conv3d_212_bias_v_read_readvariableop3savev2_adam_conv3d_213_kernel_v_read_readvariableop1savev2_adam_conv3d_213_bias_v_read_readvariableop3savev2_adam_conv3d_214_kernel_v_read_readvariableop1savev2_adam_conv3d_214_bias_v_read_readvariableop3savev2_adam_conv3d_215_kernel_v_read_readvariableop1savev2_adam_conv3d_215_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
� 
�
(__inference_model_7_layer_call_fn_240333

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
GPU2*0J 8� *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_239475�
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
�
M
1__inference_max_pooling3d_28_layer_call_fn_241200

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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_237978�
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
+__inference_conv3d_197_layer_call_fn_241364

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_197_layer_call_and_return_conditional_losses_238381�
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
F__inference_conv3d_210_layer_call_and_return_conditional_losses_241812

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
[
/__inference_concatenate_28_layer_call_fn_241471
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_28_layer_call_and_return_conditional_losses_238433�
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
�	
�
4__inference_conv3d_transpose_29_layer_call_fn_241547

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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_238108�
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
F__inference_conv3d_197_layer_call_and_return_conditional_losses_238381

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
F__inference_conv3d_200_layer_call_and_return_conditional_losses_241498

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
F__inference_conv3d_209_layer_call_and_return_conditional_losses_241792

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
F__inference_conv3d_212_layer_call_and_return_conditional_losses_238692

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
�
�
F__inference_conv3d_195_layer_call_and_return_conditional_losses_238346

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
F__inference_conv3d_206_layer_call_and_return_conditional_losses_238562

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
+__inference_conv3d_201_layer_call_fn_241507

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_201_layer_call_and_return_conditional_losses_238463�
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
F__inference_conv3d_200_layer_call_and_return_conditional_losses_238446

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
��
�
C__inference_model_7_layer_call_and_return_conditional_losses_240069
input_8/
conv3d_189_239904:
conv3d_189_239906:/
conv3d_190_239909:
conv3d_190_239911:/
conv3d_191_239915: 
conv3d_191_239917: /
conv3d_192_239920:  
conv3d_192_239922: /
conv3d_193_239926: @
conv3d_193_239928:@/
conv3d_194_239931:@@
conv3d_194_239933:@0
conv3d_195_239937:@� 
conv3d_195_239939:	�1
conv3d_196_239942:�� 
conv3d_196_239944:	�1
conv3d_197_239948:�� 
conv3d_197_239950:	�1
conv3d_198_239953:�� 
conv3d_198_239955:	�:
conv3d_transpose_28_239958:��)
conv3d_transpose_28_239960:	�1
conv3d_199_239963:�� 
conv3d_199_239965:	�1
conv3d_200_239969:�� 
conv3d_200_239971:	�1
conv3d_201_239974:�� 
conv3d_201_239976:	�1
conv3d_202_239979:�� 
conv3d_202_239981:	�9
conv3d_transpose_29_239984:@�(
conv3d_transpose_29_239986:@/
conv3d_203_239989:@@
conv3d_203_239991:@0
conv3d_204_239995:�@
conv3d_204_239997:@/
conv3d_205_240000:@@
conv3d_205_240002:@/
conv3d_206_240005:@@
conv3d_206_240007:@8
conv3d_transpose_30_240010: @(
conv3d_transpose_30_240012: /
conv3d_207_240015:  
conv3d_207_240017: /
conv3d_208_240021:@ 
conv3d_208_240023: /
conv3d_209_240026:  
conv3d_209_240028: /
conv3d_210_240031:  
conv3d_210_240033: 8
conv3d_transpose_31_240036: (
conv3d_transpose_31_240038:/
conv3d_211_240041:
conv3d_211_240043:/
conv3d_212_240047: 
conv3d_212_240049:/
conv3d_213_240052:
conv3d_213_240054:/
conv3d_214_240057:
conv3d_214_240059:/
conv3d_215_240063:
conv3d_215_240065:
identity��"conv3d_189/StatefulPartitionedCall�"conv3d_190/StatefulPartitionedCall�"conv3d_191/StatefulPartitionedCall�"conv3d_192/StatefulPartitionedCall�"conv3d_193/StatefulPartitionedCall�"conv3d_194/StatefulPartitionedCall�"conv3d_195/StatefulPartitionedCall�"conv3d_196/StatefulPartitionedCall�"conv3d_197/StatefulPartitionedCall�"conv3d_198/StatefulPartitionedCall�"conv3d_199/StatefulPartitionedCall�"conv3d_200/StatefulPartitionedCall�"conv3d_201/StatefulPartitionedCall�"conv3d_202/StatefulPartitionedCall�"conv3d_203/StatefulPartitionedCall�"conv3d_204/StatefulPartitionedCall�"conv3d_205/StatefulPartitionedCall�"conv3d_206/StatefulPartitionedCall�"conv3d_207/StatefulPartitionedCall�"conv3d_208/StatefulPartitionedCall�"conv3d_209/StatefulPartitionedCall�"conv3d_210/StatefulPartitionedCall�"conv3d_211/StatefulPartitionedCall�"conv3d_212/StatefulPartitionedCall�"conv3d_213/StatefulPartitionedCall�"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�+conv3d_transpose_28/StatefulPartitionedCall�+conv3d_transpose_29/StatefulPartitionedCall�+conv3d_transpose_30/StatefulPartitionedCall�+conv3d_transpose_31/StatefulPartitionedCall�
 zero_padding3d_7/PartitionedCallPartitionedCallinput_8*
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
GPU2*0J 8� *U
fPRN
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_237966�
"conv3d_189/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_189_239904conv3d_189_239906*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_189_layer_call_and_return_conditional_losses_238241�
"conv3d_190/StatefulPartitionedCallStatefulPartitionedCall+conv3d_189/StatefulPartitionedCall:output:0conv3d_190_239909conv3d_190_239911*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_190_layer_call_and_return_conditional_losses_238258�
 max_pooling3d_28/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_237978�
"conv3d_191/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_28/PartitionedCall:output:0conv3d_191_239915conv3d_191_239917*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_191_layer_call_and_return_conditional_losses_238276�
"conv3d_192/StatefulPartitionedCallStatefulPartitionedCall+conv3d_191/StatefulPartitionedCall:output:0conv3d_192_239920conv3d_192_239922*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_192_layer_call_and_return_conditional_losses_238293�
 max_pooling3d_29/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_237990�
"conv3d_193/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_29/PartitionedCall:output:0conv3d_193_239926conv3d_193_239928*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_193_layer_call_and_return_conditional_losses_238311�
"conv3d_194/StatefulPartitionedCallStatefulPartitionedCall+conv3d_193/StatefulPartitionedCall:output:0conv3d_194_239931conv3d_194_239933*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_194_layer_call_and_return_conditional_losses_238328�
 max_pooling3d_30/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_238002�
"conv3d_195/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_30/PartitionedCall:output:0conv3d_195_239937conv3d_195_239939*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_195_layer_call_and_return_conditional_losses_238346�
"conv3d_196/StatefulPartitionedCallStatefulPartitionedCall+conv3d_195/StatefulPartitionedCall:output:0conv3d_196_239942conv3d_196_239944*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_196_layer_call_and_return_conditional_losses_238363�
 max_pooling3d_31/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *U
fPRN
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_238014�
"conv3d_197/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_31/PartitionedCall:output:0conv3d_197_239948conv3d_197_239950*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_197_layer_call_and_return_conditional_losses_238381�
"conv3d_198/StatefulPartitionedCallStatefulPartitionedCall+conv3d_197/StatefulPartitionedCall:output:0conv3d_198_239953conv3d_198_239955*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_198_layer_call_and_return_conditional_losses_238398�
+conv3d_transpose_28/StatefulPartitionedCallStatefulPartitionedCall+conv3d_198/StatefulPartitionedCall:output:0conv3d_transpose_28_239958conv3d_transpose_28_239960*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_238062�
"conv3d_199/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_28/StatefulPartitionedCall:output:0conv3d_199_239963conv3d_199_239965*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_199_layer_call_and_return_conditional_losses_238420�
concatenate_28/PartitionedCallPartitionedCall+conv3d_196/StatefulPartitionedCall:output:0+conv3d_199/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_28_layer_call_and_return_conditional_losses_238433�
"conv3d_200/StatefulPartitionedCallStatefulPartitionedCall'concatenate_28/PartitionedCall:output:0conv3d_200_239969conv3d_200_239971*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_200_layer_call_and_return_conditional_losses_238446�
"conv3d_201/StatefulPartitionedCallStatefulPartitionedCall+conv3d_200/StatefulPartitionedCall:output:0conv3d_201_239974conv3d_201_239976*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_201_layer_call_and_return_conditional_losses_238463�
"conv3d_202/StatefulPartitionedCallStatefulPartitionedCall+conv3d_201/StatefulPartitionedCall:output:0conv3d_202_239979conv3d_202_239981*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_202_layer_call_and_return_conditional_losses_238480�
+conv3d_transpose_29/StatefulPartitionedCallStatefulPartitionedCall+conv3d_202/StatefulPartitionedCall:output:0conv3d_transpose_29_239984conv3d_transpose_29_239986*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_238108�
"conv3d_203/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_29/StatefulPartitionedCall:output:0conv3d_203_239989conv3d_203_239991*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_203_layer_call_and_return_conditional_losses_238502�
concatenate_29/PartitionedCallPartitionedCall+conv3d_194/StatefulPartitionedCall:output:0+conv3d_203/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_29_layer_call_and_return_conditional_losses_238515�
"conv3d_204/StatefulPartitionedCallStatefulPartitionedCall'concatenate_29/PartitionedCall:output:0conv3d_204_239995conv3d_204_239997*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_204_layer_call_and_return_conditional_losses_238528�
"conv3d_205/StatefulPartitionedCallStatefulPartitionedCall+conv3d_204/StatefulPartitionedCall:output:0conv3d_205_240000conv3d_205_240002*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_205_layer_call_and_return_conditional_losses_238545�
"conv3d_206/StatefulPartitionedCallStatefulPartitionedCall+conv3d_205/StatefulPartitionedCall:output:0conv3d_206_240005conv3d_206_240007*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_206_layer_call_and_return_conditional_losses_238562�
+conv3d_transpose_30/StatefulPartitionedCallStatefulPartitionedCall+conv3d_206/StatefulPartitionedCall:output:0conv3d_transpose_30_240010conv3d_transpose_30_240012*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_238154�
"conv3d_207/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_30/StatefulPartitionedCall:output:0conv3d_207_240015conv3d_207_240017*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_207_layer_call_and_return_conditional_losses_238584�
concatenate_30/PartitionedCallPartitionedCall+conv3d_192/StatefulPartitionedCall:output:0+conv3d_207/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_30_layer_call_and_return_conditional_losses_238597�
"conv3d_208/StatefulPartitionedCallStatefulPartitionedCall'concatenate_30/PartitionedCall:output:0conv3d_208_240021conv3d_208_240023*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_208_layer_call_and_return_conditional_losses_238610�
"conv3d_209/StatefulPartitionedCallStatefulPartitionedCall+conv3d_208/StatefulPartitionedCall:output:0conv3d_209_240026conv3d_209_240028*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_209_layer_call_and_return_conditional_losses_238627�
"conv3d_210/StatefulPartitionedCallStatefulPartitionedCall+conv3d_209/StatefulPartitionedCall:output:0conv3d_210_240031conv3d_210_240033*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_210_layer_call_and_return_conditional_losses_238644�
+conv3d_transpose_31/StatefulPartitionedCallStatefulPartitionedCall+conv3d_210/StatefulPartitionedCall:output:0conv3d_transpose_31_240036conv3d_transpose_31_240038*
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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_238200�
"conv3d_211/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_31/StatefulPartitionedCall:output:0conv3d_211_240041conv3d_211_240043*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_211_layer_call_and_return_conditional_losses_238666�
concatenate_31/PartitionedCallPartitionedCall+conv3d_190/StatefulPartitionedCall:output:0+conv3d_211/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_31_layer_call_and_return_conditional_losses_238679�
"conv3d_212/StatefulPartitionedCallStatefulPartitionedCall'concatenate_31/PartitionedCall:output:0conv3d_212_240047conv3d_212_240049*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_212_layer_call_and_return_conditional_losses_238692�
"conv3d_213/StatefulPartitionedCallStatefulPartitionedCall+conv3d_212/StatefulPartitionedCall:output:0conv3d_213_240052conv3d_213_240054*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_213_layer_call_and_return_conditional_losses_238709�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCall+conv3d_213/StatefulPartitionedCall:output:0conv3d_214_240057conv3d_214_240059*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_214_layer_call_and_return_conditional_losses_238726�
cropping3d_7/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *Q
fLRJ
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_238219�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCall%cropping3d_7/PartitionedCall:output:0conv3d_215_240063conv3d_215_240065*
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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_215_layer_call_and_return_conditional_losses_238743�
IdentityIdentity+conv3d_215/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8�������������������������������������	
NoOpNoOp#^conv3d_189/StatefulPartitionedCall#^conv3d_190/StatefulPartitionedCall#^conv3d_191/StatefulPartitionedCall#^conv3d_192/StatefulPartitionedCall#^conv3d_193/StatefulPartitionedCall#^conv3d_194/StatefulPartitionedCall#^conv3d_195/StatefulPartitionedCall#^conv3d_196/StatefulPartitionedCall#^conv3d_197/StatefulPartitionedCall#^conv3d_198/StatefulPartitionedCall#^conv3d_199/StatefulPartitionedCall#^conv3d_200/StatefulPartitionedCall#^conv3d_201/StatefulPartitionedCall#^conv3d_202/StatefulPartitionedCall#^conv3d_203/StatefulPartitionedCall#^conv3d_204/StatefulPartitionedCall#^conv3d_205/StatefulPartitionedCall#^conv3d_206/StatefulPartitionedCall#^conv3d_207/StatefulPartitionedCall#^conv3d_208/StatefulPartitionedCall#^conv3d_209/StatefulPartitionedCall#^conv3d_210/StatefulPartitionedCall#^conv3d_211/StatefulPartitionedCall#^conv3d_212/StatefulPartitionedCall#^conv3d_213/StatefulPartitionedCall#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall,^conv3d_transpose_28/StatefulPartitionedCall,^conv3d_transpose_29/StatefulPartitionedCall,^conv3d_transpose_30/StatefulPartitionedCall,^conv3d_transpose_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:8������������������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_189/StatefulPartitionedCall"conv3d_189/StatefulPartitionedCall2H
"conv3d_190/StatefulPartitionedCall"conv3d_190/StatefulPartitionedCall2H
"conv3d_191/StatefulPartitionedCall"conv3d_191/StatefulPartitionedCall2H
"conv3d_192/StatefulPartitionedCall"conv3d_192/StatefulPartitionedCall2H
"conv3d_193/StatefulPartitionedCall"conv3d_193/StatefulPartitionedCall2H
"conv3d_194/StatefulPartitionedCall"conv3d_194/StatefulPartitionedCall2H
"conv3d_195/StatefulPartitionedCall"conv3d_195/StatefulPartitionedCall2H
"conv3d_196/StatefulPartitionedCall"conv3d_196/StatefulPartitionedCall2H
"conv3d_197/StatefulPartitionedCall"conv3d_197/StatefulPartitionedCall2H
"conv3d_198/StatefulPartitionedCall"conv3d_198/StatefulPartitionedCall2H
"conv3d_199/StatefulPartitionedCall"conv3d_199/StatefulPartitionedCall2H
"conv3d_200/StatefulPartitionedCall"conv3d_200/StatefulPartitionedCall2H
"conv3d_201/StatefulPartitionedCall"conv3d_201/StatefulPartitionedCall2H
"conv3d_202/StatefulPartitionedCall"conv3d_202/StatefulPartitionedCall2H
"conv3d_203/StatefulPartitionedCall"conv3d_203/StatefulPartitionedCall2H
"conv3d_204/StatefulPartitionedCall"conv3d_204/StatefulPartitionedCall2H
"conv3d_205/StatefulPartitionedCall"conv3d_205/StatefulPartitionedCall2H
"conv3d_206/StatefulPartitionedCall"conv3d_206/StatefulPartitionedCall2H
"conv3d_207/StatefulPartitionedCall"conv3d_207/StatefulPartitionedCall2H
"conv3d_208/StatefulPartitionedCall"conv3d_208/StatefulPartitionedCall2H
"conv3d_209/StatefulPartitionedCall"conv3d_209/StatefulPartitionedCall2H
"conv3d_210/StatefulPartitionedCall"conv3d_210/StatefulPartitionedCall2H
"conv3d_211/StatefulPartitionedCall"conv3d_211/StatefulPartitionedCall2H
"conv3d_212/StatefulPartitionedCall"conv3d_212/StatefulPartitionedCall2H
"conv3d_213/StatefulPartitionedCall"conv3d_213/StatefulPartitionedCall2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2Z
+conv3d_transpose_28/StatefulPartitionedCall+conv3d_transpose_28/StatefulPartitionedCall2Z
+conv3d_transpose_29/StatefulPartitionedCall+conv3d_transpose_29/StatefulPartitionedCall2Z
+conv3d_transpose_30/StatefulPartitionedCall+conv3d_transpose_30/StatefulPartitionedCall2Z
+conv3d_transpose_31/StatefulPartitionedCall+conv3d_transpose_31/StatefulPartitionedCall:w s
N
_output_shapes<
::8������������������������������������
!
_user_specified_name	input_8
�
�
F__inference_conv3d_201_layer_call_and_return_conditional_losses_238463

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
+__inference_conv3d_204_layer_call_fn_241624

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_204_layer_call_and_return_conditional_losses_238528�
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
+__inference_conv3d_189_layer_call_fn_241164

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_189_layer_call_and_return_conditional_losses_238241�
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
�
�
F__inference_conv3d_215_layer_call_and_return_conditional_losses_241981

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
�
4__inference_conv3d_transpose_31_layer_call_fn_241821

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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_238200�
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
F__inference_conv3d_204_layer_call_and_return_conditional_losses_238528

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
�
4__inference_conv3d_transpose_30_layer_call_fn_241684

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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_238154�
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
F__inference_conv3d_192_layer_call_and_return_conditional_losses_238293

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
��
͆
"__inference__traced_restore_243184
file_prefix@
"assignvariableop_conv3d_189_kernel:0
"assignvariableop_1_conv3d_189_bias:B
$assignvariableop_2_conv3d_190_kernel:0
"assignvariableop_3_conv3d_190_bias:B
$assignvariableop_4_conv3d_191_kernel: 0
"assignvariableop_5_conv3d_191_bias: B
$assignvariableop_6_conv3d_192_kernel:  0
"assignvariableop_7_conv3d_192_bias: B
$assignvariableop_8_conv3d_193_kernel: @0
"assignvariableop_9_conv3d_193_bias:@C
%assignvariableop_10_conv3d_194_kernel:@@1
#assignvariableop_11_conv3d_194_bias:@D
%assignvariableop_12_conv3d_195_kernel:@�2
#assignvariableop_13_conv3d_195_bias:	�E
%assignvariableop_14_conv3d_196_kernel:��2
#assignvariableop_15_conv3d_196_bias:	�E
%assignvariableop_16_conv3d_197_kernel:��2
#assignvariableop_17_conv3d_197_bias:	�E
%assignvariableop_18_conv3d_198_kernel:��2
#assignvariableop_19_conv3d_198_bias:	�N
.assignvariableop_20_conv3d_transpose_28_kernel:��;
,assignvariableop_21_conv3d_transpose_28_bias:	�E
%assignvariableop_22_conv3d_199_kernel:��2
#assignvariableop_23_conv3d_199_bias:	�E
%assignvariableop_24_conv3d_200_kernel:��2
#assignvariableop_25_conv3d_200_bias:	�E
%assignvariableop_26_conv3d_201_kernel:��2
#assignvariableop_27_conv3d_201_bias:	�E
%assignvariableop_28_conv3d_202_kernel:��2
#assignvariableop_29_conv3d_202_bias:	�M
.assignvariableop_30_conv3d_transpose_29_kernel:@�:
,assignvariableop_31_conv3d_transpose_29_bias:@C
%assignvariableop_32_conv3d_203_kernel:@@1
#assignvariableop_33_conv3d_203_bias:@D
%assignvariableop_34_conv3d_204_kernel:�@1
#assignvariableop_35_conv3d_204_bias:@C
%assignvariableop_36_conv3d_205_kernel:@@1
#assignvariableop_37_conv3d_205_bias:@C
%assignvariableop_38_conv3d_206_kernel:@@1
#assignvariableop_39_conv3d_206_bias:@L
.assignvariableop_40_conv3d_transpose_30_kernel: @:
,assignvariableop_41_conv3d_transpose_30_bias: C
%assignvariableop_42_conv3d_207_kernel:  1
#assignvariableop_43_conv3d_207_bias: C
%assignvariableop_44_conv3d_208_kernel:@ 1
#assignvariableop_45_conv3d_208_bias: C
%assignvariableop_46_conv3d_209_kernel:  1
#assignvariableop_47_conv3d_209_bias: C
%assignvariableop_48_conv3d_210_kernel:  1
#assignvariableop_49_conv3d_210_bias: L
.assignvariableop_50_conv3d_transpose_31_kernel: :
,assignvariableop_51_conv3d_transpose_31_bias:C
%assignvariableop_52_conv3d_211_kernel:1
#assignvariableop_53_conv3d_211_bias:C
%assignvariableop_54_conv3d_212_kernel: 1
#assignvariableop_55_conv3d_212_bias:C
%assignvariableop_56_conv3d_213_kernel:1
#assignvariableop_57_conv3d_213_bias:C
%assignvariableop_58_conv3d_214_kernel:1
#assignvariableop_59_conv3d_214_bias:C
%assignvariableop_60_conv3d_215_kernel:1
#assignvariableop_61_conv3d_215_bias:'
assignvariableop_62_adam_iter:	 )
assignvariableop_63_adam_beta_1: )
assignvariableop_64_adam_beta_2: (
assignvariableop_65_adam_decay: 0
&assignvariableop_66_adam_learning_rate: #
assignvariableop_67_total: #
assignvariableop_68_count: %
assignvariableop_69_total_1: %
assignvariableop_70_count_1: J
,assignvariableop_71_adam_conv3d_189_kernel_m:8
*assignvariableop_72_adam_conv3d_189_bias_m:J
,assignvariableop_73_adam_conv3d_190_kernel_m:8
*assignvariableop_74_adam_conv3d_190_bias_m:J
,assignvariableop_75_adam_conv3d_191_kernel_m: 8
*assignvariableop_76_adam_conv3d_191_bias_m: J
,assignvariableop_77_adam_conv3d_192_kernel_m:  8
*assignvariableop_78_adam_conv3d_192_bias_m: J
,assignvariableop_79_adam_conv3d_193_kernel_m: @8
*assignvariableop_80_adam_conv3d_193_bias_m:@J
,assignvariableop_81_adam_conv3d_194_kernel_m:@@8
*assignvariableop_82_adam_conv3d_194_bias_m:@K
,assignvariableop_83_adam_conv3d_195_kernel_m:@�9
*assignvariableop_84_adam_conv3d_195_bias_m:	�L
,assignvariableop_85_adam_conv3d_196_kernel_m:��9
*assignvariableop_86_adam_conv3d_196_bias_m:	�L
,assignvariableop_87_adam_conv3d_197_kernel_m:��9
*assignvariableop_88_adam_conv3d_197_bias_m:	�L
,assignvariableop_89_adam_conv3d_198_kernel_m:��9
*assignvariableop_90_adam_conv3d_198_bias_m:	�U
5assignvariableop_91_adam_conv3d_transpose_28_kernel_m:��B
3assignvariableop_92_adam_conv3d_transpose_28_bias_m:	�L
,assignvariableop_93_adam_conv3d_199_kernel_m:��9
*assignvariableop_94_adam_conv3d_199_bias_m:	�L
,assignvariableop_95_adam_conv3d_200_kernel_m:��9
*assignvariableop_96_adam_conv3d_200_bias_m:	�L
,assignvariableop_97_adam_conv3d_201_kernel_m:��9
*assignvariableop_98_adam_conv3d_201_bias_m:	�L
,assignvariableop_99_adam_conv3d_202_kernel_m:��:
+assignvariableop_100_adam_conv3d_202_bias_m:	�U
6assignvariableop_101_adam_conv3d_transpose_29_kernel_m:@�B
4assignvariableop_102_adam_conv3d_transpose_29_bias_m:@K
-assignvariableop_103_adam_conv3d_203_kernel_m:@@9
+assignvariableop_104_adam_conv3d_203_bias_m:@L
-assignvariableop_105_adam_conv3d_204_kernel_m:�@9
+assignvariableop_106_adam_conv3d_204_bias_m:@K
-assignvariableop_107_adam_conv3d_205_kernel_m:@@9
+assignvariableop_108_adam_conv3d_205_bias_m:@K
-assignvariableop_109_adam_conv3d_206_kernel_m:@@9
+assignvariableop_110_adam_conv3d_206_bias_m:@T
6assignvariableop_111_adam_conv3d_transpose_30_kernel_m: @B
4assignvariableop_112_adam_conv3d_transpose_30_bias_m: K
-assignvariableop_113_adam_conv3d_207_kernel_m:  9
+assignvariableop_114_adam_conv3d_207_bias_m: K
-assignvariableop_115_adam_conv3d_208_kernel_m:@ 9
+assignvariableop_116_adam_conv3d_208_bias_m: K
-assignvariableop_117_adam_conv3d_209_kernel_m:  9
+assignvariableop_118_adam_conv3d_209_bias_m: K
-assignvariableop_119_adam_conv3d_210_kernel_m:  9
+assignvariableop_120_adam_conv3d_210_bias_m: T
6assignvariableop_121_adam_conv3d_transpose_31_kernel_m: B
4assignvariableop_122_adam_conv3d_transpose_31_bias_m:K
-assignvariableop_123_adam_conv3d_211_kernel_m:9
+assignvariableop_124_adam_conv3d_211_bias_m:K
-assignvariableop_125_adam_conv3d_212_kernel_m: 9
+assignvariableop_126_adam_conv3d_212_bias_m:K
-assignvariableop_127_adam_conv3d_213_kernel_m:9
+assignvariableop_128_adam_conv3d_213_bias_m:K
-assignvariableop_129_adam_conv3d_214_kernel_m:9
+assignvariableop_130_adam_conv3d_214_bias_m:K
-assignvariableop_131_adam_conv3d_215_kernel_m:9
+assignvariableop_132_adam_conv3d_215_bias_m:K
-assignvariableop_133_adam_conv3d_189_kernel_v:9
+assignvariableop_134_adam_conv3d_189_bias_v:K
-assignvariableop_135_adam_conv3d_190_kernel_v:9
+assignvariableop_136_adam_conv3d_190_bias_v:K
-assignvariableop_137_adam_conv3d_191_kernel_v: 9
+assignvariableop_138_adam_conv3d_191_bias_v: K
-assignvariableop_139_adam_conv3d_192_kernel_v:  9
+assignvariableop_140_adam_conv3d_192_bias_v: K
-assignvariableop_141_adam_conv3d_193_kernel_v: @9
+assignvariableop_142_adam_conv3d_193_bias_v:@K
-assignvariableop_143_adam_conv3d_194_kernel_v:@@9
+assignvariableop_144_adam_conv3d_194_bias_v:@L
-assignvariableop_145_adam_conv3d_195_kernel_v:@�:
+assignvariableop_146_adam_conv3d_195_bias_v:	�M
-assignvariableop_147_adam_conv3d_196_kernel_v:��:
+assignvariableop_148_adam_conv3d_196_bias_v:	�M
-assignvariableop_149_adam_conv3d_197_kernel_v:��:
+assignvariableop_150_adam_conv3d_197_bias_v:	�M
-assignvariableop_151_adam_conv3d_198_kernel_v:��:
+assignvariableop_152_adam_conv3d_198_bias_v:	�V
6assignvariableop_153_adam_conv3d_transpose_28_kernel_v:��C
4assignvariableop_154_adam_conv3d_transpose_28_bias_v:	�M
-assignvariableop_155_adam_conv3d_199_kernel_v:��:
+assignvariableop_156_adam_conv3d_199_bias_v:	�M
-assignvariableop_157_adam_conv3d_200_kernel_v:��:
+assignvariableop_158_adam_conv3d_200_bias_v:	�M
-assignvariableop_159_adam_conv3d_201_kernel_v:��:
+assignvariableop_160_adam_conv3d_201_bias_v:	�M
-assignvariableop_161_adam_conv3d_202_kernel_v:��:
+assignvariableop_162_adam_conv3d_202_bias_v:	�U
6assignvariableop_163_adam_conv3d_transpose_29_kernel_v:@�B
4assignvariableop_164_adam_conv3d_transpose_29_bias_v:@K
-assignvariableop_165_adam_conv3d_203_kernel_v:@@9
+assignvariableop_166_adam_conv3d_203_bias_v:@L
-assignvariableop_167_adam_conv3d_204_kernel_v:�@9
+assignvariableop_168_adam_conv3d_204_bias_v:@K
-assignvariableop_169_adam_conv3d_205_kernel_v:@@9
+assignvariableop_170_adam_conv3d_205_bias_v:@K
-assignvariableop_171_adam_conv3d_206_kernel_v:@@9
+assignvariableop_172_adam_conv3d_206_bias_v:@T
6assignvariableop_173_adam_conv3d_transpose_30_kernel_v: @B
4assignvariableop_174_adam_conv3d_transpose_30_bias_v: K
-assignvariableop_175_adam_conv3d_207_kernel_v:  9
+assignvariableop_176_adam_conv3d_207_bias_v: K
-assignvariableop_177_adam_conv3d_208_kernel_v:@ 9
+assignvariableop_178_adam_conv3d_208_bias_v: K
-assignvariableop_179_adam_conv3d_209_kernel_v:  9
+assignvariableop_180_adam_conv3d_209_bias_v: K
-assignvariableop_181_adam_conv3d_210_kernel_v:  9
+assignvariableop_182_adam_conv3d_210_bias_v: T
6assignvariableop_183_adam_conv3d_transpose_31_kernel_v: B
4assignvariableop_184_adam_conv3d_transpose_31_bias_v:K
-assignvariableop_185_adam_conv3d_211_kernel_v:9
+assignvariableop_186_adam_conv3d_211_bias_v:K
-assignvariableop_187_adam_conv3d_212_kernel_v: 9
+assignvariableop_188_adam_conv3d_212_bias_v:K
-assignvariableop_189_adam_conv3d_213_kernel_v:9
+assignvariableop_190_adam_conv3d_213_bias_v:K
-assignvariableop_191_adam_conv3d_214_kernel_v:9
+assignvariableop_192_adam_conv3d_214_bias_v:K
-assignvariableop_193_adam_conv3d_215_kernel_v:9
+assignvariableop_194_adam_conv3d_215_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_189_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_189_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_190_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_190_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_191_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_191_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_192_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_192_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_193_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_193_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_194_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_194_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_195_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_195_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_196_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_196_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_197_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_197_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_198_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_198_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp.assignvariableop_20_conv3d_transpose_28_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_conv3d_transpose_28_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp%assignvariableop_22_conv3d_199_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv3d_199_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv3d_200_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv3d_200_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_conv3d_201_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv3d_201_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv3d_202_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv3d_202_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp.assignvariableop_30_conv3d_transpose_29_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp,assignvariableop_31_conv3d_transpose_29_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv3d_203_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp#assignvariableop_33_conv3d_203_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp%assignvariableop_34_conv3d_204_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp#assignvariableop_35_conv3d_204_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv3d_205_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv3d_205_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp%assignvariableop_38_conv3d_206_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv3d_206_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp.assignvariableop_40_conv3d_transpose_30_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp,assignvariableop_41_conv3d_transpose_30_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp%assignvariableop_42_conv3d_207_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv3d_207_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp%assignvariableop_44_conv3d_208_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp#assignvariableop_45_conv3d_208_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp%assignvariableop_46_conv3d_209_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp#assignvariableop_47_conv3d_209_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp%assignvariableop_48_conv3d_210_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp#assignvariableop_49_conv3d_210_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp.assignvariableop_50_conv3d_transpose_31_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp,assignvariableop_51_conv3d_transpose_31_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp%assignvariableop_52_conv3d_211_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp#assignvariableop_53_conv3d_211_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp%assignvariableop_54_conv3d_212_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp#assignvariableop_55_conv3d_212_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp%assignvariableop_56_conv3d_213_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp#assignvariableop_57_conv3d_213_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp%assignvariableop_58_conv3d_214_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp#assignvariableop_59_conv3d_214_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp%assignvariableop_60_conv3d_215_kernelIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp#assignvariableop_61_conv3d_215_biasIdentity_61:output:0"/device:CPU:0*
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
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv3d_189_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv3d_189_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_conv3d_190_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_conv3d_190_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_conv3d_191_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_conv3d_191_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv3d_192_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv3d_192_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_conv3d_193_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_conv3d_193_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_conv3d_194_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv3d_194_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv3d_195_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv3d_195_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp,assignvariableop_85_adam_conv3d_196_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp*assignvariableop_86_adam_conv3d_196_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_conv3d_197_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_conv3d_197_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv3d_198_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_conv3d_198_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_conv3d_transpose_28_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_conv3d_transpose_28_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_conv3d_199_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv3d_199_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp,assignvariableop_95_adam_conv3d_200_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp*assignvariableop_96_adam_conv3d_200_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adam_conv3d_201_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_conv3d_201_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp,assignvariableop_99_adam_conv3d_202_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_conv3d_202_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp6assignvariableop_101_adam_conv3d_transpose_29_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp4assignvariableop_102_adam_conv3d_transpose_29_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp-assignvariableop_103_adam_conv3d_203_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp+assignvariableop_104_adam_conv3d_203_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp-assignvariableop_105_adam_conv3d_204_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_conv3d_204_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp-assignvariableop_107_adam_conv3d_205_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp+assignvariableop_108_adam_conv3d_205_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp-assignvariableop_109_adam_conv3d_206_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_conv3d_206_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp6assignvariableop_111_adam_conv3d_transpose_30_kernel_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp4assignvariableop_112_adam_conv3d_transpose_30_bias_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp-assignvariableop_113_adam_conv3d_207_kernel_mIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp+assignvariableop_114_adam_conv3d_207_bias_mIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp-assignvariableop_115_adam_conv3d_208_kernel_mIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_conv3d_208_bias_mIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOp-assignvariableop_117_adam_conv3d_209_kernel_mIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_conv3d_209_bias_mIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOp-assignvariableop_119_adam_conv3d_210_kernel_mIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOp+assignvariableop_120_adam_conv3d_210_bias_mIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOp6assignvariableop_121_adam_conv3d_transpose_31_kernel_mIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOp4assignvariableop_122_adam_conv3d_transpose_31_bias_mIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOp-assignvariableop_123_adam_conv3d_211_kernel_mIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_conv3d_211_bias_mIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOp-assignvariableop_125_adam_conv3d_212_kernel_mIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOp+assignvariableop_126_adam_conv3d_212_bias_mIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_127AssignVariableOp-assignvariableop_127_adam_conv3d_213_kernel_mIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_128AssignVariableOp+assignvariableop_128_adam_conv3d_213_bias_mIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_129AssignVariableOp-assignvariableop_129_adam_conv3d_214_kernel_mIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_130AssignVariableOp+assignvariableop_130_adam_conv3d_214_bias_mIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_131AssignVariableOp-assignvariableop_131_adam_conv3d_215_kernel_mIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adam_conv3d_215_bias_mIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_133AssignVariableOp-assignvariableop_133_adam_conv3d_189_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_134AssignVariableOp+assignvariableop_134_adam_conv3d_189_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_135AssignVariableOp-assignvariableop_135_adam_conv3d_190_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_136AssignVariableOp+assignvariableop_136_adam_conv3d_190_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_137AssignVariableOp-assignvariableop_137_adam_conv3d_191_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_138AssignVariableOp+assignvariableop_138_adam_conv3d_191_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_139AssignVariableOp-assignvariableop_139_adam_conv3d_192_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_140AssignVariableOp+assignvariableop_140_adam_conv3d_192_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_141AssignVariableOp-assignvariableop_141_adam_conv3d_193_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_142AssignVariableOp+assignvariableop_142_adam_conv3d_193_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_143AssignVariableOp-assignvariableop_143_adam_conv3d_194_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_144AssignVariableOp+assignvariableop_144_adam_conv3d_194_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_145AssignVariableOp-assignvariableop_145_adam_conv3d_195_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_146AssignVariableOp+assignvariableop_146_adam_conv3d_195_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_147AssignVariableOp-assignvariableop_147_adam_conv3d_196_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_148AssignVariableOp+assignvariableop_148_adam_conv3d_196_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_149AssignVariableOp-assignvariableop_149_adam_conv3d_197_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_150AssignVariableOp+assignvariableop_150_adam_conv3d_197_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_151AssignVariableOp-assignvariableop_151_adam_conv3d_198_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_152AssignVariableOp+assignvariableop_152_adam_conv3d_198_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_153AssignVariableOp6assignvariableop_153_adam_conv3d_transpose_28_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_154AssignVariableOp4assignvariableop_154_adam_conv3d_transpose_28_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_155AssignVariableOp-assignvariableop_155_adam_conv3d_199_kernel_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_156AssignVariableOp+assignvariableop_156_adam_conv3d_199_bias_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_157AssignVariableOp-assignvariableop_157_adam_conv3d_200_kernel_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_158AssignVariableOp+assignvariableop_158_adam_conv3d_200_bias_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_159AssignVariableOp-assignvariableop_159_adam_conv3d_201_kernel_vIdentity_159:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_160AssignVariableOp+assignvariableop_160_adam_conv3d_201_bias_vIdentity_160:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_161AssignVariableOp-assignvariableop_161_adam_conv3d_202_kernel_vIdentity_161:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_162AssignVariableOp+assignvariableop_162_adam_conv3d_202_bias_vIdentity_162:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_163AssignVariableOp6assignvariableop_163_adam_conv3d_transpose_29_kernel_vIdentity_163:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_164AssignVariableOp4assignvariableop_164_adam_conv3d_transpose_29_bias_vIdentity_164:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_165AssignVariableOp-assignvariableop_165_adam_conv3d_203_kernel_vIdentity_165:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_166AssignVariableOp+assignvariableop_166_adam_conv3d_203_bias_vIdentity_166:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_167AssignVariableOp-assignvariableop_167_adam_conv3d_204_kernel_vIdentity_167:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_168AssignVariableOp+assignvariableop_168_adam_conv3d_204_bias_vIdentity_168:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_169AssignVariableOp-assignvariableop_169_adam_conv3d_205_kernel_vIdentity_169:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_170AssignVariableOp+assignvariableop_170_adam_conv3d_205_bias_vIdentity_170:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_171AssignVariableOp-assignvariableop_171_adam_conv3d_206_kernel_vIdentity_171:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_172AssignVariableOp+assignvariableop_172_adam_conv3d_206_bias_vIdentity_172:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_173AssignVariableOp6assignvariableop_173_adam_conv3d_transpose_30_kernel_vIdentity_173:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_174AssignVariableOp4assignvariableop_174_adam_conv3d_transpose_30_bias_vIdentity_174:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_175AssignVariableOp-assignvariableop_175_adam_conv3d_207_kernel_vIdentity_175:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_176AssignVariableOp+assignvariableop_176_adam_conv3d_207_bias_vIdentity_176:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_177AssignVariableOp-assignvariableop_177_adam_conv3d_208_kernel_vIdentity_177:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_178AssignVariableOp+assignvariableop_178_adam_conv3d_208_bias_vIdentity_178:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_179AssignVariableOp-assignvariableop_179_adam_conv3d_209_kernel_vIdentity_179:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_180AssignVariableOp+assignvariableop_180_adam_conv3d_209_bias_vIdentity_180:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_181AssignVariableOp-assignvariableop_181_adam_conv3d_210_kernel_vIdentity_181:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_182AssignVariableOp+assignvariableop_182_adam_conv3d_210_bias_vIdentity_182:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_183IdentityRestoreV2:tensors:183"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_183AssignVariableOp6assignvariableop_183_adam_conv3d_transpose_31_kernel_vIdentity_183:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_184IdentityRestoreV2:tensors:184"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_184AssignVariableOp4assignvariableop_184_adam_conv3d_transpose_31_bias_vIdentity_184:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_185IdentityRestoreV2:tensors:185"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_185AssignVariableOp-assignvariableop_185_adam_conv3d_211_kernel_vIdentity_185:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_186IdentityRestoreV2:tensors:186"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_186AssignVariableOp+assignvariableop_186_adam_conv3d_211_bias_vIdentity_186:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_187IdentityRestoreV2:tensors:187"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_187AssignVariableOp-assignvariableop_187_adam_conv3d_212_kernel_vIdentity_187:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_188IdentityRestoreV2:tensors:188"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_188AssignVariableOp+assignvariableop_188_adam_conv3d_212_bias_vIdentity_188:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_189IdentityRestoreV2:tensors:189"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_189AssignVariableOp-assignvariableop_189_adam_conv3d_213_kernel_vIdentity_189:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_190IdentityRestoreV2:tensors:190"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_190AssignVariableOp+assignvariableop_190_adam_conv3d_213_bias_vIdentity_190:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_191IdentityRestoreV2:tensors:191"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_191AssignVariableOp-assignvariableop_191_adam_conv3d_214_kernel_vIdentity_191:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_192IdentityRestoreV2:tensors:192"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_192AssignVariableOp+assignvariableop_192_adam_conv3d_214_bias_vIdentity_192:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_193IdentityRestoreV2:tensors:193"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_193AssignVariableOp-assignvariableop_193_adam_conv3d_215_kernel_vIdentity_193:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_194IdentityRestoreV2:tensors:194"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_194AssignVariableOp+assignvariableop_194_adam_conv3d_215_bias_vIdentity_194:output:0"/device:CPU:0*
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
�	
�
4__inference_conv3d_transpose_28_layer_call_fn_241404

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
GPU2*0J 8� *X
fSRQ
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_238062�
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
h
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_241305

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
+__inference_conv3d_203_layer_call_fn_241591

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_203_layer_call_and_return_conditional_losses_238502�
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
�&
�
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_241445

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
F__inference_conv3d_211_layer_call_and_return_conditional_losses_241876

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
F__inference_conv3d_203_layer_call_and_return_conditional_losses_238502

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
J__inference_concatenate_28_layer_call_and_return_conditional_losses_238433

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
�
�
F__inference_conv3d_191_layer_call_and_return_conditional_losses_238276

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
F__inference_conv3d_201_layer_call_and_return_conditional_losses_241518

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
h
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_237990

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
F__inference_conv3d_197_layer_call_and_return_conditional_losses_241375

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
F__inference_conv3d_196_layer_call_and_return_conditional_losses_241345

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
h
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_241205

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
+__inference_conv3d_198_layer_call_fn_241384

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_198_layer_call_and_return_conditional_losses_238398�
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
�
�
F__inference_conv3d_196_layer_call_and_return_conditional_losses_238363

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
d
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_241962

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
F__inference_conv3d_198_layer_call_and_return_conditional_losses_241395

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
+__inference_conv3d_200_layer_call_fn_241487

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_200_layer_call_and_return_conditional_losses_238446�
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
�
�
F__inference_conv3d_213_layer_call_and_return_conditional_losses_241929

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
F__inference_conv3d_206_layer_call_and_return_conditional_losses_241675

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
�
M
1__inference_zero_padding3d_7_layer_call_fn_241149

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
GPU2*0J 8� *U
fPRN
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_237966�
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
+__inference_conv3d_207_layer_call_fn_241728

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_207_layer_call_and_return_conditional_losses_238584�
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
d
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_238219

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
F__inference_conv3d_207_layer_call_and_return_conditional_losses_241739

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
[
/__inference_concatenate_29_layer_call_fn_241608
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
GPU2*0J 8� *S
fNRL
J__inference_concatenate_29_layer_call_and_return_conditional_losses_238515�
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
F__inference_conv3d_214_layer_call_and_return_conditional_losses_238726

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
+__inference_conv3d_215_layer_call_fn_241971

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
GPU2*0J 8� *O
fJRH
F__inference_conv3d_215_layer_call_and_return_conditional_losses_238743�
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
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
b
input_8W
serving_default_input_8:08������������������������������������e

conv3d_215W
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
(__inference_model_7_layer_call_fn_238877
(__inference_model_7_layer_call_fn_240204
(__inference_model_7_layer_call_fn_240333
(__inference_model_7_layer_call_fn_239731�
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
C__inference_model_7_layer_call_and_return_conditional_losses_240673
C__inference_model_7_layer_call_and_return_conditional_losses_241013
C__inference_model_7_layer_call_and_return_conditional_losses_239900
C__inference_model_7_layer_call_and_return_conditional_losses_240069�
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
!__inference__wrapped_model_237956input_8"�
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
1__inference_zero_padding3d_7_layer_call_fn_241149�
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
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_241155�
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
/:-2conv3d_189/kernel
:2conv3d_189/bias
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
+__inference_conv3d_189_layer_call_fn_241164�
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
F__inference_conv3d_189_layer_call_and_return_conditional_losses_241175�
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
/:-2conv3d_190/kernel
:2conv3d_190/bias
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
+__inference_conv3d_190_layer_call_fn_241184�
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
F__inference_conv3d_190_layer_call_and_return_conditional_losses_241195�
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
1__inference_max_pooling3d_28_layer_call_fn_241200�
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
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_241205�
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
/:- 2conv3d_191/kernel
: 2conv3d_191/bias
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
+__inference_conv3d_191_layer_call_fn_241214�
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
F__inference_conv3d_191_layer_call_and_return_conditional_losses_241225�
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
/:-  2conv3d_192/kernel
: 2conv3d_192/bias
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
+__inference_conv3d_192_layer_call_fn_241234�
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
F__inference_conv3d_192_layer_call_and_return_conditional_losses_241245�
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
1__inference_max_pooling3d_29_layer_call_fn_241250�
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
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_241255�
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
/:- @2conv3d_193/kernel
:@2conv3d_193/bias
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
+__inference_conv3d_193_layer_call_fn_241264�
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
F__inference_conv3d_193_layer_call_and_return_conditional_losses_241275�
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
/:-@@2conv3d_194/kernel
:@2conv3d_194/bias
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
+__inference_conv3d_194_layer_call_fn_241284�
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
F__inference_conv3d_194_layer_call_and_return_conditional_losses_241295�
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
1__inference_max_pooling3d_30_layer_call_fn_241300�
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
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_241305�
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
0:.@�2conv3d_195/kernel
:�2conv3d_195/bias
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
+__inference_conv3d_195_layer_call_fn_241314�
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
F__inference_conv3d_195_layer_call_and_return_conditional_losses_241325�
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
1:/��2conv3d_196/kernel
:�2conv3d_196/bias
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
+__inference_conv3d_196_layer_call_fn_241334�
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
F__inference_conv3d_196_layer_call_and_return_conditional_losses_241345�
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
1__inference_max_pooling3d_31_layer_call_fn_241350�
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
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_241355�
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
1:/��2conv3d_197/kernel
:�2conv3d_197/bias
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
+__inference_conv3d_197_layer_call_fn_241364�
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
F__inference_conv3d_197_layer_call_and_return_conditional_losses_241375�
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
1:/��2conv3d_198/kernel
:�2conv3d_198/bias
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
+__inference_conv3d_198_layer_call_fn_241384�
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
F__inference_conv3d_198_layer_call_and_return_conditional_losses_241395�
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
::8��2conv3d_transpose_28/kernel
':%�2conv3d_transpose_28/bias
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
4__inference_conv3d_transpose_28_layer_call_fn_241404�
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
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_241445�
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
1:/��2conv3d_199/kernel
:�2conv3d_199/bias
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
+__inference_conv3d_199_layer_call_fn_241454�
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
F__inference_conv3d_199_layer_call_and_return_conditional_losses_241465�
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
/__inference_concatenate_28_layer_call_fn_241471�
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
J__inference_concatenate_28_layer_call_and_return_conditional_losses_241478�
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
1:/��2conv3d_200/kernel
:�2conv3d_200/bias
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
+__inference_conv3d_200_layer_call_fn_241487�
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
F__inference_conv3d_200_layer_call_and_return_conditional_losses_241498�
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
1:/��2conv3d_201/kernel
:�2conv3d_201/bias
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
+__inference_conv3d_201_layer_call_fn_241507�
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
F__inference_conv3d_201_layer_call_and_return_conditional_losses_241518�
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
1:/��2conv3d_202/kernel
:�2conv3d_202/bias
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
+__inference_conv3d_202_layer_call_fn_241527�
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
F__inference_conv3d_202_layer_call_and_return_conditional_losses_241538�
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
9:7@�2conv3d_transpose_29/kernel
&:$@2conv3d_transpose_29/bias
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
4__inference_conv3d_transpose_29_layer_call_fn_241547�
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
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_241582�
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
/:-@@2conv3d_203/kernel
:@2conv3d_203/bias
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
+__inference_conv3d_203_layer_call_fn_241591�
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
F__inference_conv3d_203_layer_call_and_return_conditional_losses_241602�
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
/__inference_concatenate_29_layer_call_fn_241608�
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
J__inference_concatenate_29_layer_call_and_return_conditional_losses_241615�
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
0:.�@2conv3d_204/kernel
:@2conv3d_204/bias
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
+__inference_conv3d_204_layer_call_fn_241624�
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
F__inference_conv3d_204_layer_call_and_return_conditional_losses_241635�
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
/:-@@2conv3d_205/kernel
:@2conv3d_205/bias
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
+__inference_conv3d_205_layer_call_fn_241644�
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
F__inference_conv3d_205_layer_call_and_return_conditional_losses_241655�
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
/:-@@2conv3d_206/kernel
:@2conv3d_206/bias
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
+__inference_conv3d_206_layer_call_fn_241664�
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
F__inference_conv3d_206_layer_call_and_return_conditional_losses_241675�
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
8:6 @2conv3d_transpose_30/kernel
&:$ 2conv3d_transpose_30/bias
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
4__inference_conv3d_transpose_30_layer_call_fn_241684�
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
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_241719�
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
/:-  2conv3d_207/kernel
: 2conv3d_207/bias
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
+__inference_conv3d_207_layer_call_fn_241728�
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
F__inference_conv3d_207_layer_call_and_return_conditional_losses_241739�
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
/__inference_concatenate_30_layer_call_fn_241745�
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
J__inference_concatenate_30_layer_call_and_return_conditional_losses_241752�
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
/:-@ 2conv3d_208/kernel
: 2conv3d_208/bias
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
+__inference_conv3d_208_layer_call_fn_241761�
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
F__inference_conv3d_208_layer_call_and_return_conditional_losses_241772�
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
/:-  2conv3d_209/kernel
: 2conv3d_209/bias
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
+__inference_conv3d_209_layer_call_fn_241781�
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
F__inference_conv3d_209_layer_call_and_return_conditional_losses_241792�
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
/:-  2conv3d_210/kernel
: 2conv3d_210/bias
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
+__inference_conv3d_210_layer_call_fn_241801�
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
F__inference_conv3d_210_layer_call_and_return_conditional_losses_241812�
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
8:6 2conv3d_transpose_31/kernel
&:$2conv3d_transpose_31/bias
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
4__inference_conv3d_transpose_31_layer_call_fn_241821�
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
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_241856�
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
/:-2conv3d_211/kernel
:2conv3d_211/bias
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
+__inference_conv3d_211_layer_call_fn_241865�
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
F__inference_conv3d_211_layer_call_and_return_conditional_losses_241876�
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
/__inference_concatenate_31_layer_call_fn_241882�
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
J__inference_concatenate_31_layer_call_and_return_conditional_losses_241889�
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
/:- 2conv3d_212/kernel
:2conv3d_212/bias
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
+__inference_conv3d_212_layer_call_fn_241898�
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
F__inference_conv3d_212_layer_call_and_return_conditional_losses_241909�
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
/:-2conv3d_213/kernel
:2conv3d_213/bias
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
+__inference_conv3d_213_layer_call_fn_241918�
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
F__inference_conv3d_213_layer_call_and_return_conditional_losses_241929�
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
/:-2conv3d_214/kernel
:2conv3d_214/bias
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
+__inference_conv3d_214_layer_call_fn_241938�
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
F__inference_conv3d_214_layer_call_and_return_conditional_losses_241949�
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
-__inference_cropping3d_7_layer_call_fn_241954�
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
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_241962�
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
/:-2conv3d_215/kernel
:2conv3d_215/bias
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
+__inference_conv3d_215_layer_call_fn_241971�
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
F__inference_conv3d_215_layer_call_and_return_conditional_losses_241981�
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
$__inference_signature_wrapper_241144input_8"�
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
4:22Adam/conv3d_189/kernel/m
": 2Adam/conv3d_189/bias/m
4:22Adam/conv3d_190/kernel/m
": 2Adam/conv3d_190/bias/m
4:2 2Adam/conv3d_191/kernel/m
":  2Adam/conv3d_191/bias/m
4:2  2Adam/conv3d_192/kernel/m
":  2Adam/conv3d_192/bias/m
4:2 @2Adam/conv3d_193/kernel/m
": @2Adam/conv3d_193/bias/m
4:2@@2Adam/conv3d_194/kernel/m
": @2Adam/conv3d_194/bias/m
5:3@�2Adam/conv3d_195/kernel/m
#:!�2Adam/conv3d_195/bias/m
6:4��2Adam/conv3d_196/kernel/m
#:!�2Adam/conv3d_196/bias/m
6:4��2Adam/conv3d_197/kernel/m
#:!�2Adam/conv3d_197/bias/m
6:4��2Adam/conv3d_198/kernel/m
#:!�2Adam/conv3d_198/bias/m
?:=��2!Adam/conv3d_transpose_28/kernel/m
,:*�2Adam/conv3d_transpose_28/bias/m
6:4��2Adam/conv3d_199/kernel/m
#:!�2Adam/conv3d_199/bias/m
6:4��2Adam/conv3d_200/kernel/m
#:!�2Adam/conv3d_200/bias/m
6:4��2Adam/conv3d_201/kernel/m
#:!�2Adam/conv3d_201/bias/m
6:4��2Adam/conv3d_202/kernel/m
#:!�2Adam/conv3d_202/bias/m
>:<@�2!Adam/conv3d_transpose_29/kernel/m
+:)@2Adam/conv3d_transpose_29/bias/m
4:2@@2Adam/conv3d_203/kernel/m
": @2Adam/conv3d_203/bias/m
5:3�@2Adam/conv3d_204/kernel/m
": @2Adam/conv3d_204/bias/m
4:2@@2Adam/conv3d_205/kernel/m
": @2Adam/conv3d_205/bias/m
4:2@@2Adam/conv3d_206/kernel/m
": @2Adam/conv3d_206/bias/m
=:; @2!Adam/conv3d_transpose_30/kernel/m
+:) 2Adam/conv3d_transpose_30/bias/m
4:2  2Adam/conv3d_207/kernel/m
":  2Adam/conv3d_207/bias/m
4:2@ 2Adam/conv3d_208/kernel/m
":  2Adam/conv3d_208/bias/m
4:2  2Adam/conv3d_209/kernel/m
":  2Adam/conv3d_209/bias/m
4:2  2Adam/conv3d_210/kernel/m
":  2Adam/conv3d_210/bias/m
=:; 2!Adam/conv3d_transpose_31/kernel/m
+:)2Adam/conv3d_transpose_31/bias/m
4:22Adam/conv3d_211/kernel/m
": 2Adam/conv3d_211/bias/m
4:2 2Adam/conv3d_212/kernel/m
": 2Adam/conv3d_212/bias/m
4:22Adam/conv3d_213/kernel/m
": 2Adam/conv3d_213/bias/m
4:22Adam/conv3d_214/kernel/m
": 2Adam/conv3d_214/bias/m
4:22Adam/conv3d_215/kernel/m
": 2Adam/conv3d_215/bias/m
4:22Adam/conv3d_189/kernel/v
": 2Adam/conv3d_189/bias/v
4:22Adam/conv3d_190/kernel/v
": 2Adam/conv3d_190/bias/v
4:2 2Adam/conv3d_191/kernel/v
":  2Adam/conv3d_191/bias/v
4:2  2Adam/conv3d_192/kernel/v
":  2Adam/conv3d_192/bias/v
4:2 @2Adam/conv3d_193/kernel/v
": @2Adam/conv3d_193/bias/v
4:2@@2Adam/conv3d_194/kernel/v
": @2Adam/conv3d_194/bias/v
5:3@�2Adam/conv3d_195/kernel/v
#:!�2Adam/conv3d_195/bias/v
6:4��2Adam/conv3d_196/kernel/v
#:!�2Adam/conv3d_196/bias/v
6:4��2Adam/conv3d_197/kernel/v
#:!�2Adam/conv3d_197/bias/v
6:4��2Adam/conv3d_198/kernel/v
#:!�2Adam/conv3d_198/bias/v
?:=��2!Adam/conv3d_transpose_28/kernel/v
,:*�2Adam/conv3d_transpose_28/bias/v
6:4��2Adam/conv3d_199/kernel/v
#:!�2Adam/conv3d_199/bias/v
6:4��2Adam/conv3d_200/kernel/v
#:!�2Adam/conv3d_200/bias/v
6:4��2Adam/conv3d_201/kernel/v
#:!�2Adam/conv3d_201/bias/v
6:4��2Adam/conv3d_202/kernel/v
#:!�2Adam/conv3d_202/bias/v
>:<@�2!Adam/conv3d_transpose_29/kernel/v
+:)@2Adam/conv3d_transpose_29/bias/v
4:2@@2Adam/conv3d_203/kernel/v
": @2Adam/conv3d_203/bias/v
5:3�@2Adam/conv3d_204/kernel/v
": @2Adam/conv3d_204/bias/v
4:2@@2Adam/conv3d_205/kernel/v
": @2Adam/conv3d_205/bias/v
4:2@@2Adam/conv3d_206/kernel/v
": @2Adam/conv3d_206/bias/v
=:; @2!Adam/conv3d_transpose_30/kernel/v
+:) 2Adam/conv3d_transpose_30/bias/v
4:2  2Adam/conv3d_207/kernel/v
":  2Adam/conv3d_207/bias/v
4:2@ 2Adam/conv3d_208/kernel/v
":  2Adam/conv3d_208/bias/v
4:2  2Adam/conv3d_209/kernel/v
":  2Adam/conv3d_209/bias/v
4:2  2Adam/conv3d_210/kernel/v
":  2Adam/conv3d_210/bias/v
=:; 2!Adam/conv3d_transpose_31/kernel/v
+:)2Adam/conv3d_transpose_31/bias/v
4:22Adam/conv3d_211/kernel/v
": 2Adam/conv3d_211/bias/v
4:2 2Adam/conv3d_212/kernel/v
": 2Adam/conv3d_212/bias/v
4:22Adam/conv3d_213/kernel/v
": 2Adam/conv3d_213/bias/v
4:22Adam/conv3d_214/kernel/v
": 2Adam/conv3d_214/bias/v
4:22Adam/conv3d_215/kernel/v
": 2Adam/conv3d_215/bias/v�
!__inference__wrapped_model_237956�n;<CDQRYZghop}~������������������������������������������������W�T
M�J
H�E
input_88������������������������������������
� "^�[
Y

conv3d_215K�H

conv3d_2158�������������������������������������
J__inference_concatenate_28_layer_call_and_return_conditional_losses_241478����
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
/__inference_concatenate_28_layer_call_fn_241471����
���
���
J�G
inputs/09�������������������������������������
J�G
inputs/19�������������������������������������
� "@�=9��������������������������������������
J__inference_concatenate_29_layer_call_and_return_conditional_losses_241615����
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
/__inference_concatenate_29_layer_call_fn_241608����
���
���
I�F
inputs/08������������������������������������@
I�F
inputs/18������������������������������������@
� "@�=9��������������������������������������
J__inference_concatenate_30_layer_call_and_return_conditional_losses_241752����
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
/__inference_concatenate_30_layer_call_fn_241745����
���
���
I�F
inputs/08������������������������������������ 
I�F
inputs/18������������������������������������ 
� "?�<8������������������������������������@�
J__inference_concatenate_31_layer_call_and_return_conditional_losses_241889����
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
/__inference_concatenate_31_layer_call_fn_241882����
���
���
I�F
inputs/08������������������������������������
I�F
inputs/18������������������������������������
� "?�<8������������������������������������ �
F__inference_conv3d_189_layer_call_and_return_conditional_losses_241175�;<V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
+__inference_conv3d_189_layer_call_fn_241164�;<V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
F__inference_conv3d_190_layer_call_and_return_conditional_losses_241195�CDV�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
+__inference_conv3d_190_layer_call_fn_241184�CDV�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
F__inference_conv3d_191_layer_call_and_return_conditional_losses_241225�QRV�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������ 
� �
+__inference_conv3d_191_layer_call_fn_241214�QRV�S
L�I
G�D
inputs8������������������������������������
� "?�<8������������������������������������ �
F__inference_conv3d_192_layer_call_and_return_conditional_losses_241245�YZV�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
+__inference_conv3d_192_layer_call_fn_241234�YZV�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
F__inference_conv3d_193_layer_call_and_return_conditional_losses_241275�ghV�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������@
� �
+__inference_conv3d_193_layer_call_fn_241264�ghV�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������@�
F__inference_conv3d_194_layer_call_and_return_conditional_losses_241295�opV�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
+__inference_conv3d_194_layer_call_fn_241284�opV�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
F__inference_conv3d_195_layer_call_and_return_conditional_losses_241325�}~V�S
L�I
G�D
inputs8������������������������������������@
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_195_layer_call_fn_241314�}~V�S
L�I
G�D
inputs8������������������������������������@
� "@�=9��������������������������������������
F__inference_conv3d_196_layer_call_and_return_conditional_losses_241345���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_196_layer_call_fn_241334���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
F__inference_conv3d_197_layer_call_and_return_conditional_losses_241375���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_197_layer_call_fn_241364���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
F__inference_conv3d_198_layer_call_and_return_conditional_losses_241395���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_198_layer_call_fn_241384���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
F__inference_conv3d_199_layer_call_and_return_conditional_losses_241465���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_199_layer_call_fn_241454���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
F__inference_conv3d_200_layer_call_and_return_conditional_losses_241498���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_200_layer_call_fn_241487���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
F__inference_conv3d_201_layer_call_and_return_conditional_losses_241518���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_201_layer_call_fn_241507���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
F__inference_conv3d_202_layer_call_and_return_conditional_losses_241538���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
+__inference_conv3d_202_layer_call_fn_241527���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
F__inference_conv3d_203_layer_call_and_return_conditional_losses_241602���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
+__inference_conv3d_203_layer_call_fn_241591���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
F__inference_conv3d_204_layer_call_and_return_conditional_losses_241635���W�T
M�J
H�E
inputs9�������������������������������������
� "L�I
B�?
08������������������������������������@
� �
+__inference_conv3d_204_layer_call_fn_241624���W�T
M�J
H�E
inputs9�������������������������������������
� "?�<8������������������������������������@�
F__inference_conv3d_205_layer_call_and_return_conditional_losses_241655���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
+__inference_conv3d_205_layer_call_fn_241644���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
F__inference_conv3d_206_layer_call_and_return_conditional_losses_241675���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������@
� �
+__inference_conv3d_206_layer_call_fn_241664���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������@�
F__inference_conv3d_207_layer_call_and_return_conditional_losses_241739���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
+__inference_conv3d_207_layer_call_fn_241728���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
F__inference_conv3d_208_layer_call_and_return_conditional_losses_241772���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������ 
� �
+__inference_conv3d_208_layer_call_fn_241761���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������ �
F__inference_conv3d_209_layer_call_and_return_conditional_losses_241792���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
+__inference_conv3d_209_layer_call_fn_241781���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
F__inference_conv3d_210_layer_call_and_return_conditional_losses_241812���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������ 
� �
+__inference_conv3d_210_layer_call_fn_241801���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8������������������������������������ �
F__inference_conv3d_211_layer_call_and_return_conditional_losses_241876���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
+__inference_conv3d_211_layer_call_fn_241865���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
F__inference_conv3d_212_layer_call_and_return_conditional_losses_241909���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������
� �
+__inference_conv3d_212_layer_call_fn_241898���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8�������������������������������������
F__inference_conv3d_213_layer_call_and_return_conditional_losses_241929���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
+__inference_conv3d_213_layer_call_fn_241918���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
F__inference_conv3d_214_layer_call_and_return_conditional_losses_241949���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
+__inference_conv3d_214_layer_call_fn_241938���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
F__inference_conv3d_215_layer_call_and_return_conditional_losses_241981���V�S
L�I
G�D
inputs8������������������������������������
� "L�I
B�?
08������������������������������������
� �
+__inference_conv3d_215_layer_call_fn_241971���V�S
L�I
G�D
inputs8������������������������������������
� "?�<8�������������������������������������
O__inference_conv3d_transpose_28_layer_call_and_return_conditional_losses_241445���W�T
M�J
H�E
inputs9�������������������������������������
� "M�J
C�@
09�������������������������������������
� �
4__inference_conv3d_transpose_28_layer_call_fn_241404���W�T
M�J
H�E
inputs9�������������������������������������
� "@�=9��������������������������������������
O__inference_conv3d_transpose_29_layer_call_and_return_conditional_losses_241582���W�T
M�J
H�E
inputs9�������������������������������������
� "L�I
B�?
08������������������������������������@
� �
4__inference_conv3d_transpose_29_layer_call_fn_241547���W�T
M�J
H�E
inputs9�������������������������������������
� "?�<8������������������������������������@�
O__inference_conv3d_transpose_30_layer_call_and_return_conditional_losses_241719���V�S
L�I
G�D
inputs8������������������������������������@
� "L�I
B�?
08������������������������������������ 
� �
4__inference_conv3d_transpose_30_layer_call_fn_241684���V�S
L�I
G�D
inputs8������������������������������������@
� "?�<8������������������������������������ �
O__inference_conv3d_transpose_31_layer_call_and_return_conditional_losses_241856���V�S
L�I
G�D
inputs8������������������������������������ 
� "L�I
B�?
08������������������������������������
� �
4__inference_conv3d_transpose_31_layer_call_fn_241821���V�S
L�I
G�D
inputs8������������������������������������ 
� "?�<8�������������������������������������
H__inference_cropping3d_7_layer_call_and_return_conditional_losses_241962�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
-__inference_cropping3d_7_layer_call_fn_241954�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
L__inference_max_pooling3d_28_layer_call_and_return_conditional_losses_241205�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
1__inference_max_pooling3d_28_layer_call_fn_241200�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
L__inference_max_pooling3d_29_layer_call_and_return_conditional_losses_241255�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
1__inference_max_pooling3d_29_layer_call_fn_241250�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
L__inference_max_pooling3d_30_layer_call_and_return_conditional_losses_241305�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
1__inference_max_pooling3d_30_layer_call_fn_241300�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
L__inference_max_pooling3d_31_layer_call_and_return_conditional_losses_241355�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
1__inference_max_pooling3d_31_layer_call_fn_241350�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
C__inference_model_7_layer_call_and_return_conditional_losses_239900�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_88������������������������������������
p 

 
� "L�I
B�?
08������������������������������������
� �
C__inference_model_7_layer_call_and_return_conditional_losses_240069�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_88������������������������������������
p

 
� "L�I
B�?
08������������������������������������
� �
C__inference_model_7_layer_call_and_return_conditional_losses_240673�n;<CDQRYZghop}~������������������������������������������������^�[
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
C__inference_model_7_layer_call_and_return_conditional_losses_241013�n;<CDQRYZghop}~������������������������������������������������^�[
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
(__inference_model_7_layer_call_fn_238877�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_88������������������������������������
p 

 
� "?�<8�������������������������������������
(__inference_model_7_layer_call_fn_239731�n;<CDQRYZghop}~������������������������������������������������_�\
U�R
H�E
input_88������������������������������������
p

 
� "?�<8�������������������������������������
(__inference_model_7_layer_call_fn_240204�n;<CDQRYZghop}~������������������������������������������������^�[
T�Q
G�D
inputs8������������������������������������
p 

 
� "?�<8�������������������������������������
(__inference_model_7_layer_call_fn_240333�n;<CDQRYZghop}~������������������������������������������������^�[
T�Q
G�D
inputs8������������������������������������
p

 
� "?�<8�������������������������������������
$__inference_signature_wrapper_241144�n;<CDQRYZghop}~������������������������������������������������b�_
� 
X�U
S
input_8H�E
input_88������������������������������������"^�[
Y

conv3d_215K�H

conv3d_2158�������������������������������������
L__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_241155�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
1__inference_zero_padding3d_7_layer_call_fn_241149�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA���������������������������������������������