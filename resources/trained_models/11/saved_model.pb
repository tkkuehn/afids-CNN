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
conv3d_270/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_270/kernel

%conv3d_270/kernel/Read/ReadVariableOpReadVariableOpconv3d_270/kernel**
_output_shapes
:*
dtype0
v
conv3d_270/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_270/bias
o
#conv3d_270/bias/Read/ReadVariableOpReadVariableOpconv3d_270/bias*
_output_shapes
:*
dtype0

conv3d_271/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_271/kernel

%conv3d_271/kernel/Read/ReadVariableOpReadVariableOpconv3d_271/kernel**
_output_shapes
:*
dtype0
v
conv3d_271/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_271/bias
o
#conv3d_271/bias/Read/ReadVariableOpReadVariableOpconv3d_271/bias*
_output_shapes
:*
dtype0

conv3d_272/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_272/kernel

%conv3d_272/kernel/Read/ReadVariableOpReadVariableOpconv3d_272/kernel**
_output_shapes
: *
dtype0
v
conv3d_272/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_272/bias
o
#conv3d_272/bias/Read/ReadVariableOpReadVariableOpconv3d_272/bias*
_output_shapes
: *
dtype0

conv3d_273/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_273/kernel

%conv3d_273/kernel/Read/ReadVariableOpReadVariableOpconv3d_273/kernel**
_output_shapes
:  *
dtype0
v
conv3d_273/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_273/bias
o
#conv3d_273/bias/Read/ReadVariableOpReadVariableOpconv3d_273/bias*
_output_shapes
: *
dtype0

conv3d_274/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv3d_274/kernel

%conv3d_274/kernel/Read/ReadVariableOpReadVariableOpconv3d_274/kernel**
_output_shapes
: @*
dtype0
v
conv3d_274/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_274/bias
o
#conv3d_274/bias/Read/ReadVariableOpReadVariableOpconv3d_274/bias*
_output_shapes
:@*
dtype0

conv3d_275/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_275/kernel

%conv3d_275/kernel/Read/ReadVariableOpReadVariableOpconv3d_275/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_275/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_275/bias
o
#conv3d_275/bias/Read/ReadVariableOpReadVariableOpconv3d_275/bias*
_output_shapes
:@*
dtype0

conv3d_276/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*"
shared_nameconv3d_276/kernel

%conv3d_276/kernel/Read/ReadVariableOpReadVariableOpconv3d_276/kernel*+
_output_shapes
:@*
dtype0
w
conv3d_276/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_276/bias
p
#conv3d_276/bias/Read/ReadVariableOpReadVariableOpconv3d_276/bias*
_output_shapes	
:*
dtype0

conv3d_277/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_277/kernel

%conv3d_277/kernel/Read/ReadVariableOpReadVariableOpconv3d_277/kernel*,
_output_shapes
:*
dtype0
w
conv3d_277/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_277/bias
p
#conv3d_277/bias/Read/ReadVariableOpReadVariableOpconv3d_277/bias*
_output_shapes	
:*
dtype0

conv3d_278/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_278/kernel

%conv3d_278/kernel/Read/ReadVariableOpReadVariableOpconv3d_278/kernel*,
_output_shapes
:*
dtype0
w
conv3d_278/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_278/bias
p
#conv3d_278/bias/Read/ReadVariableOpReadVariableOpconv3d_278/bias*
_output_shapes	
:*
dtype0

conv3d_279/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_279/kernel

%conv3d_279/kernel/Read/ReadVariableOpReadVariableOpconv3d_279/kernel*,
_output_shapes
:*
dtype0
w
conv3d_279/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_279/bias
p
#conv3d_279/bias/Read/ReadVariableOpReadVariableOpconv3d_279/bias*
_output_shapes	
:*
dtype0

conv3d_transpose_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*+
shared_nameconv3d_transpose_40/kernel

.conv3d_transpose_40/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_40/kernel*,
_output_shapes
:*
dtype0

conv3d_transpose_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv3d_transpose_40/bias

,conv3d_transpose_40/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_40/bias*
_output_shapes	
:*
dtype0

conv3d_280/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_280/kernel

%conv3d_280/kernel/Read/ReadVariableOpReadVariableOpconv3d_280/kernel*,
_output_shapes
:*
dtype0
w
conv3d_280/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_280/bias
p
#conv3d_280/bias/Read/ReadVariableOpReadVariableOpconv3d_280/bias*
_output_shapes	
:*
dtype0

conv3d_281/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_281/kernel

%conv3d_281/kernel/Read/ReadVariableOpReadVariableOpconv3d_281/kernel*,
_output_shapes
:*
dtype0
w
conv3d_281/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_281/bias
p
#conv3d_281/bias/Read/ReadVariableOpReadVariableOpconv3d_281/bias*
_output_shapes	
:*
dtype0

conv3d_282/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_282/kernel

%conv3d_282/kernel/Read/ReadVariableOpReadVariableOpconv3d_282/kernel*,
_output_shapes
:*
dtype0
w
conv3d_282/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_282/bias
p
#conv3d_282/bias/Read/ReadVariableOpReadVariableOpconv3d_282/bias*
_output_shapes	
:*
dtype0

conv3d_283/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*"
shared_nameconv3d_283/kernel

%conv3d_283/kernel/Read/ReadVariableOpReadVariableOpconv3d_283/kernel*,
_output_shapes
:*
dtype0
w
conv3d_283/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_283/bias
p
#conv3d_283/bias/Read/ReadVariableOpReadVariableOpconv3d_283/bias*
_output_shapes	
:*
dtype0

conv3d_transpose_41/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*+
shared_nameconv3d_transpose_41/kernel

.conv3d_transpose_41/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_41/kernel*+
_output_shapes
:@*
dtype0

conv3d_transpose_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv3d_transpose_41/bias

,conv3d_transpose_41/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_41/bias*
_output_shapes
:@*
dtype0

conv3d_284/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_284/kernel

%conv3d_284/kernel/Read/ReadVariableOpReadVariableOpconv3d_284/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_284/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_284/bias
o
#conv3d_284/bias/Read/ReadVariableOpReadVariableOpconv3d_284/bias*
_output_shapes
:@*
dtype0

conv3d_285/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*"
shared_nameconv3d_285/kernel

%conv3d_285/kernel/Read/ReadVariableOpReadVariableOpconv3d_285/kernel*+
_output_shapes
:@*
dtype0
v
conv3d_285/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_285/bias
o
#conv3d_285/bias/Read/ReadVariableOpReadVariableOpconv3d_285/bias*
_output_shapes
:@*
dtype0

conv3d_286/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_286/kernel

%conv3d_286/kernel/Read/ReadVariableOpReadVariableOpconv3d_286/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_286/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_286/bias
o
#conv3d_286/bias/Read/ReadVariableOpReadVariableOpconv3d_286/bias*
_output_shapes
:@*
dtype0

conv3d_287/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv3d_287/kernel

%conv3d_287/kernel/Read/ReadVariableOpReadVariableOpconv3d_287/kernel**
_output_shapes
:@@*
dtype0
v
conv3d_287/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv3d_287/bias
o
#conv3d_287/bias/Read/ReadVariableOpReadVariableOpconv3d_287/bias*
_output_shapes
:@*
dtype0

conv3d_transpose_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv3d_transpose_42/kernel

.conv3d_transpose_42/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_42/kernel**
_output_shapes
: @*
dtype0

conv3d_transpose_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv3d_transpose_42/bias

,conv3d_transpose_42/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_42/bias*
_output_shapes
: *
dtype0

conv3d_288/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_288/kernel

%conv3d_288/kernel/Read/ReadVariableOpReadVariableOpconv3d_288/kernel**
_output_shapes
:  *
dtype0
v
conv3d_288/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_288/bias
o
#conv3d_288/bias/Read/ReadVariableOpReadVariableOpconv3d_288/bias*
_output_shapes
: *
dtype0

conv3d_289/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv3d_289/kernel

%conv3d_289/kernel/Read/ReadVariableOpReadVariableOpconv3d_289/kernel**
_output_shapes
:@ *
dtype0
v
conv3d_289/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_289/bias
o
#conv3d_289/bias/Read/ReadVariableOpReadVariableOpconv3d_289/bias*
_output_shapes
: *
dtype0

conv3d_290/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_290/kernel

%conv3d_290/kernel/Read/ReadVariableOpReadVariableOpconv3d_290/kernel**
_output_shapes
:  *
dtype0
v
conv3d_290/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_290/bias
o
#conv3d_290/bias/Read/ReadVariableOpReadVariableOpconv3d_290/bias*
_output_shapes
: *
dtype0

conv3d_291/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv3d_291/kernel

%conv3d_291/kernel/Read/ReadVariableOpReadVariableOpconv3d_291/kernel**
_output_shapes
:  *
dtype0
v
conv3d_291/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_291/bias
o
#conv3d_291/bias/Read/ReadVariableOpReadVariableOpconv3d_291/bias*
_output_shapes
: *
dtype0

conv3d_transpose_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv3d_transpose_43/kernel

.conv3d_transpose_43/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_43/kernel**
_output_shapes
: *
dtype0

conv3d_transpose_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv3d_transpose_43/bias

,conv3d_transpose_43/bias/Read/ReadVariableOpReadVariableOpconv3d_transpose_43/bias*
_output_shapes
:*
dtype0

conv3d_292/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_292/kernel

%conv3d_292/kernel/Read/ReadVariableOpReadVariableOpconv3d_292/kernel**
_output_shapes
:*
dtype0
v
conv3d_292/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_292/bias
o
#conv3d_292/bias/Read/ReadVariableOpReadVariableOpconv3d_292/bias*
_output_shapes
:*
dtype0

conv3d_293/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_293/kernel

%conv3d_293/kernel/Read/ReadVariableOpReadVariableOpconv3d_293/kernel**
_output_shapes
: *
dtype0
v
conv3d_293/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_293/bias
o
#conv3d_293/bias/Read/ReadVariableOpReadVariableOpconv3d_293/bias*
_output_shapes
:*
dtype0

conv3d_294/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_294/kernel

%conv3d_294/kernel/Read/ReadVariableOpReadVariableOpconv3d_294/kernel**
_output_shapes
:*
dtype0
v
conv3d_294/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_294/bias
o
#conv3d_294/bias/Read/ReadVariableOpReadVariableOpconv3d_294/bias*
_output_shapes
:*
dtype0

conv3d_295/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_295/kernel

%conv3d_295/kernel/Read/ReadVariableOpReadVariableOpconv3d_295/kernel**
_output_shapes
:*
dtype0
v
conv3d_295/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_295/bias
o
#conv3d_295/bias/Read/ReadVariableOpReadVariableOpconv3d_295/bias*
_output_shapes
:*
dtype0

conv3d_296/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_296/kernel

%conv3d_296/kernel/Read/ReadVariableOpReadVariableOpconv3d_296/kernel**
_output_shapes
:*
dtype0
v
conv3d_296/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_296/bias
o
#conv3d_296/bias/Read/ReadVariableOpReadVariableOpconv3d_296/bias*
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
Adam/conv3d_270/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_270/kernel/m

,Adam/conv3d_270/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_270/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_270/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_270/bias/m
}
*Adam/conv3d_270/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_270/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_271/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_271/kernel/m

,Adam/conv3d_271/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_271/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_271/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_271/bias/m
}
*Adam/conv3d_271/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_271/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_272/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_272/kernel/m

,Adam/conv3d_272/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_272/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_272/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_272/bias/m
}
*Adam/conv3d_272/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_272/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_273/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_273/kernel/m

,Adam/conv3d_273/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_273/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_273/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_273/bias/m
}
*Adam/conv3d_273/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_273/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_274/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_274/kernel/m

,Adam/conv3d_274/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_274/kernel/m**
_output_shapes
: @*
dtype0

Adam/conv3d_274/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_274/bias/m
}
*Adam/conv3d_274/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_274/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_275/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_275/kernel/m

,Adam/conv3d_275/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_275/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_275/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_275/bias/m
}
*Adam/conv3d_275/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_275/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_276/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_276/kernel/m

,Adam/conv3d_276/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_276/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_276/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_276/bias/m
~
*Adam/conv3d_276/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_276/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_277/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_277/kernel/m

,Adam/conv3d_277/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_277/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_277/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_277/bias/m
~
*Adam/conv3d_277/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_277/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_278/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_278/kernel/m

,Adam/conv3d_278/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_278/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_278/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_278/bias/m
~
*Adam/conv3d_278/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_278/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_279/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_279/kernel/m

,Adam/conv3d_279/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_279/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_279/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_279/bias/m
~
*Adam/conv3d_279/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_279/bias/m*
_output_shapes	
:*
dtype0
Ќ
!Adam/conv3d_transpose_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*2
shared_name#!Adam/conv3d_transpose_40/kernel/m
Ѕ
5Adam/conv3d_transpose_40/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_40/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_transpose_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_40/bias/m

3Adam/conv3d_transpose_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_40/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_280/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_280/kernel/m

,Adam/conv3d_280/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_280/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_280/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_280/bias/m
~
*Adam/conv3d_280/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_280/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_281/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_281/kernel/m

,Adam/conv3d_281/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_281/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_281/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_281/bias/m
~
*Adam/conv3d_281/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_281/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_282/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_282/kernel/m

,Adam/conv3d_282/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_282/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_282/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_282/bias/m
~
*Adam/conv3d_282/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_282/bias/m*
_output_shapes	
:*
dtype0

Adam/conv3d_283/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_283/kernel/m

,Adam/conv3d_283/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_283/kernel/m*,
_output_shapes
:*
dtype0

Adam/conv3d_283/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_283/bias/m
~
*Adam/conv3d_283/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_283/bias/m*
_output_shapes	
:*
dtype0
Ћ
!Adam/conv3d_transpose_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*2
shared_name#!Adam/conv3d_transpose_41/kernel/m
Є
5Adam/conv3d_transpose_41/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_41/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_transpose_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_41/bias/m

3Adam/conv3d_transpose_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_41/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_284/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_284/kernel/m

,Adam/conv3d_284/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_284/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_284/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_284/bias/m
}
*Adam/conv3d_284/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_284/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_285/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_285/kernel/m

,Adam/conv3d_285/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_285/kernel/m*+
_output_shapes
:@*
dtype0

Adam/conv3d_285/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_285/bias/m
}
*Adam/conv3d_285/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_285/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_286/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_286/kernel/m

,Adam/conv3d_286/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_286/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_286/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_286/bias/m
}
*Adam/conv3d_286/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_286/bias/m*
_output_shapes
:@*
dtype0

Adam/conv3d_287/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_287/kernel/m

,Adam/conv3d_287/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_287/kernel/m**
_output_shapes
:@@*
dtype0

Adam/conv3d_287/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_287/bias/m
}
*Adam/conv3d_287/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_287/bias/m*
_output_shapes
:@*
dtype0
Њ
!Adam/conv3d_transpose_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_42/kernel/m
Ѓ
5Adam/conv3d_transpose_42/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_42/kernel/m**
_output_shapes
: @*
dtype0

Adam/conv3d_transpose_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_42/bias/m

3Adam/conv3d_transpose_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_42/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_288/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_288/kernel/m

,Adam/conv3d_288/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_288/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_288/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_288/bias/m
}
*Adam/conv3d_288/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_288/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_289/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_289/kernel/m

,Adam/conv3d_289/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_289/kernel/m**
_output_shapes
:@ *
dtype0

Adam/conv3d_289/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_289/bias/m
}
*Adam/conv3d_289/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_289/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_290/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_290/kernel/m

,Adam/conv3d_290/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_290/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_290/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_290/bias/m
}
*Adam/conv3d_290/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_290/bias/m*
_output_shapes
: *
dtype0

Adam/conv3d_291/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_291/kernel/m

,Adam/conv3d_291/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_291/kernel/m**
_output_shapes
:  *
dtype0

Adam/conv3d_291/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_291/bias/m
}
*Adam/conv3d_291/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_291/bias/m*
_output_shapes
: *
dtype0
Њ
!Adam/conv3d_transpose_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_43/kernel/m
Ѓ
5Adam/conv3d_transpose_43/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_43/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_transpose_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_43/bias/m

3Adam/conv3d_transpose_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_43/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_292/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_292/kernel/m

,Adam/conv3d_292/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_292/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_292/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_292/bias/m
}
*Adam/conv3d_292/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_292/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_293/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_293/kernel/m

,Adam/conv3d_293/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_293/kernel/m**
_output_shapes
: *
dtype0

Adam/conv3d_293/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_293/bias/m
}
*Adam/conv3d_293/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_293/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_294/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_294/kernel/m

,Adam/conv3d_294/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_294/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_294/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_294/bias/m
}
*Adam/conv3d_294/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_294/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_295/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_295/kernel/m

,Adam/conv3d_295/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_295/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_295/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_295/bias/m
}
*Adam/conv3d_295/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_295/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_296/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_296/kernel/m

,Adam/conv3d_296/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_296/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_296/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_296/bias/m
}
*Adam/conv3d_296/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_296/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_270/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_270/kernel/v

,Adam/conv3d_270/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_270/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_270/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_270/bias/v
}
*Adam/conv3d_270/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_270/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_271/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_271/kernel/v

,Adam/conv3d_271/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_271/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_271/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_271/bias/v
}
*Adam/conv3d_271/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_271/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_272/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_272/kernel/v

,Adam/conv3d_272/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_272/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_272/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_272/bias/v
}
*Adam/conv3d_272/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_272/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_273/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_273/kernel/v

,Adam/conv3d_273/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_273/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_273/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_273/bias/v
}
*Adam/conv3d_273/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_273/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_274/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv3d_274/kernel/v

,Adam/conv3d_274/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_274/kernel/v**
_output_shapes
: @*
dtype0

Adam/conv3d_274/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_274/bias/v
}
*Adam/conv3d_274/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_274/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_275/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_275/kernel/v

,Adam/conv3d_275/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_275/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_275/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_275/bias/v
}
*Adam/conv3d_275/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_275/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_276/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_276/kernel/v

,Adam/conv3d_276/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_276/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_276/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_276/bias/v
~
*Adam/conv3d_276/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_276/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_277/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_277/kernel/v

,Adam/conv3d_277/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_277/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_277/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_277/bias/v
~
*Adam/conv3d_277/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_277/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_278/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_278/kernel/v

,Adam/conv3d_278/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_278/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_278/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_278/bias/v
~
*Adam/conv3d_278/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_278/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_279/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_279/kernel/v

,Adam/conv3d_279/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_279/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_279/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_279/bias/v
~
*Adam/conv3d_279/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_279/bias/v*
_output_shapes	
:*
dtype0
Ќ
!Adam/conv3d_transpose_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*2
shared_name#!Adam/conv3d_transpose_40/kernel/v
Ѕ
5Adam/conv3d_transpose_40/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_40/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_transpose_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_40/bias/v

3Adam/conv3d_transpose_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_40/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_280/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_280/kernel/v

,Adam/conv3d_280/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_280/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_280/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_280/bias/v
~
*Adam/conv3d_280/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_280/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_281/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_281/kernel/v

,Adam/conv3d_281/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_281/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_281/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_281/bias/v
~
*Adam/conv3d_281/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_281/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_282/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_282/kernel/v

,Adam/conv3d_282/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_282/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_282/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_282/bias/v
~
*Adam/conv3d_282/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_282/bias/v*
_output_shapes	
:*
dtype0

Adam/conv3d_283/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*)
shared_nameAdam/conv3d_283/kernel/v

,Adam/conv3d_283/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_283/kernel/v*,
_output_shapes
:*
dtype0

Adam/conv3d_283/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_283/bias/v
~
*Adam/conv3d_283/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_283/bias/v*
_output_shapes	
:*
dtype0
Ћ
!Adam/conv3d_transpose_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*2
shared_name#!Adam/conv3d_transpose_41/kernel/v
Є
5Adam/conv3d_transpose_41/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_41/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_transpose_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv3d_transpose_41/bias/v

3Adam/conv3d_transpose_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_41/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_284/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_284/kernel/v

,Adam/conv3d_284/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_284/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_284/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_284/bias/v
}
*Adam/conv3d_284/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_284/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_285/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*)
shared_nameAdam/conv3d_285/kernel/v

,Adam/conv3d_285/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_285/kernel/v*+
_output_shapes
:@*
dtype0

Adam/conv3d_285/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_285/bias/v
}
*Adam/conv3d_285/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_285/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_286/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_286/kernel/v

,Adam/conv3d_286/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_286/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_286/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_286/bias/v
}
*Adam/conv3d_286/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_286/bias/v*
_output_shapes
:@*
dtype0

Adam/conv3d_287/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv3d_287/kernel/v

,Adam/conv3d_287/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_287/kernel/v**
_output_shapes
:@@*
dtype0

Adam/conv3d_287/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv3d_287/bias/v
}
*Adam/conv3d_287/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_287/bias/v*
_output_shapes
:@*
dtype0
Њ
!Adam/conv3d_transpose_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv3d_transpose_42/kernel/v
Ѓ
5Adam/conv3d_transpose_42/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_42/kernel/v**
_output_shapes
: @*
dtype0

Adam/conv3d_transpose_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv3d_transpose_42/bias/v

3Adam/conv3d_transpose_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_42/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_288/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_288/kernel/v

,Adam/conv3d_288/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_288/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_288/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_288/bias/v
}
*Adam/conv3d_288/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_288/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_289/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv3d_289/kernel/v

,Adam/conv3d_289/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_289/kernel/v**
_output_shapes
:@ *
dtype0

Adam/conv3d_289/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_289/bias/v
}
*Adam/conv3d_289/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_289/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_290/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_290/kernel/v

,Adam/conv3d_290/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_290/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_290/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_290/bias/v
}
*Adam/conv3d_290/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_290/bias/v*
_output_shapes
: *
dtype0

Adam/conv3d_291/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv3d_291/kernel/v

,Adam/conv3d_291/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_291/kernel/v**
_output_shapes
:  *
dtype0

Adam/conv3d_291/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_291/bias/v
}
*Adam/conv3d_291/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_291/bias/v*
_output_shapes
: *
dtype0
Њ
!Adam/conv3d_transpose_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv3d_transpose_43/kernel/v
Ѓ
5Adam/conv3d_transpose_43/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv3d_transpose_43/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_transpose_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv3d_transpose_43/bias/v

3Adam/conv3d_transpose_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_transpose_43/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_292/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_292/kernel/v

,Adam/conv3d_292/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_292/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_292/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_292/bias/v
}
*Adam/conv3d_292/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_292/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_293/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv3d_293/kernel/v

,Adam/conv3d_293/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_293/kernel/v**
_output_shapes
: *
dtype0

Adam/conv3d_293/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_293/bias/v
}
*Adam/conv3d_293/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_293/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_294/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_294/kernel/v

,Adam/conv3d_294/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_294/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_294/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_294/bias/v
}
*Adam/conv3d_294/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_294/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_295/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_295/kernel/v

,Adam/conv3d_295/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_295/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_295/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_295/bias/v
}
*Adam/conv3d_295/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_295/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_296/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_296/kernel/v

,Adam/conv3d_296/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_296/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_296/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_296/bias/v
}
*Adam/conv3d_296/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_296/bias/v*
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
VARIABLE_VALUEconv3d_270/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_270/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_271/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_271/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_272/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_272/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_273/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_273/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_274/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_274/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_275/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_275/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_276/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_276/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_277/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_277/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_278/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_278/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_279/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv3d_279/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_40/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_40/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_280/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_280/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_281/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_281/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_282/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_282/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_283/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_283/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_41/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_41/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_284/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_284/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_285/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_285/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_286/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_286/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_287/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_287/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_42/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_42/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_288/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_288/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_289/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_289/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_290/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_290/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_291/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_291/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_transpose_43/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv3d_transpose_43/bias5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_292/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_292/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_293/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_293/bias5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_294/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_294/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_295/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_295/bias5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_296/kernel7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv3d_296/bias5layer_with_weights-30/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/conv3d_270/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_270/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_271/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_271/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_272/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_272/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_273/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_273/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_274/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_274/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_275/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_275/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_276/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_276/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_277/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_277/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_278/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_278/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_279/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_279/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_40/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_40/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_280/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_280/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_281/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_281/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_282/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_282/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_283/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_283/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_41/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_41/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_284/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_284/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_285/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_285/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_286/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_286/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_287/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_287/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_42/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_42/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_288/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_288/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_289/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_289/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_290/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_290/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_291/kernel/mSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_291/bias/mQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_43/kernel/mSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_43/bias/mQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_292/kernel/mSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_292/bias/mQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_293/kernel/mSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_293/bias/mQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_294/kernel/mSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_294/bias/mQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_295/kernel/mSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_295/bias/mQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_296/kernel/mSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_296/bias/mQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_270/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_270/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_271/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_271/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_272/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_272/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_273/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_273/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_274/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_274/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_275/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_275/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_276/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_276/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_277/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_277/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_278/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_278/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv3d_279/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv3d_279/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_40/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_40/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_280/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_280/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_281/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_281/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_282/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_282/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_283/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_283/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_41/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_41/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_284/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_284/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_285/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_285/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_286/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_286/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_287/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_287/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_42/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_42/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_288/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_288/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_289/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_289/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_290/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_290/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_291/kernel/vSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_291/bias/vQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv3d_transpose_43/kernel/vSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_transpose_43/bias/vQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_292/kernel/vSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_292/bias/vQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_293/kernel/vSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_293/bias/vQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_294/kernel/vSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_294/bias/vQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_295/kernel/vSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_295/bias/vQlayer_with_weights-29/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv3d_296/kernel/vSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/conv3d_296/bias/vQlayer_with_weights-30/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Щ
serving_default_input_11Placeholder*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*C
shape::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
§
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11conv3d_270/kernelconv3d_270/biasconv3d_271/kernelconv3d_271/biasconv3d_272/kernelconv3d_272/biasconv3d_273/kernelconv3d_273/biasconv3d_274/kernelconv3d_274/biasconv3d_275/kernelconv3d_275/biasconv3d_276/kernelconv3d_276/biasconv3d_277/kernelconv3d_277/biasconv3d_278/kernelconv3d_278/biasconv3d_279/kernelconv3d_279/biasconv3d_transpose_40/kernelconv3d_transpose_40/biasconv3d_280/kernelconv3d_280/biasconv3d_281/kernelconv3d_281/biasconv3d_282/kernelconv3d_282/biasconv3d_283/kernelconv3d_283/biasconv3d_transpose_41/kernelconv3d_transpose_41/biasconv3d_284/kernelconv3d_284/biasconv3d_285/kernelconv3d_285/biasconv3d_286/kernelconv3d_286/biasconv3d_287/kernelconv3d_287/biasconv3d_transpose_42/kernelconv3d_transpose_42/biasconv3d_288/kernelconv3d_288/biasconv3d_289/kernelconv3d_289/biasconv3d_290/kernelconv3d_290/biasconv3d_291/kernelconv3d_291/biasconv3d_transpose_43/kernelconv3d_transpose_43/biasconv3d_292/kernelconv3d_292/biasconv3d_293/kernelconv3d_293/biasconv3d_294/kernelconv3d_294/biasconv3d_295/kernelconv3d_295/biasconv3d_296/kernelconv3d_296/bias*J
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
$__inference_signature_wrapper_332638
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
жE
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_270/kernel/Read/ReadVariableOp#conv3d_270/bias/Read/ReadVariableOp%conv3d_271/kernel/Read/ReadVariableOp#conv3d_271/bias/Read/ReadVariableOp%conv3d_272/kernel/Read/ReadVariableOp#conv3d_272/bias/Read/ReadVariableOp%conv3d_273/kernel/Read/ReadVariableOp#conv3d_273/bias/Read/ReadVariableOp%conv3d_274/kernel/Read/ReadVariableOp#conv3d_274/bias/Read/ReadVariableOp%conv3d_275/kernel/Read/ReadVariableOp#conv3d_275/bias/Read/ReadVariableOp%conv3d_276/kernel/Read/ReadVariableOp#conv3d_276/bias/Read/ReadVariableOp%conv3d_277/kernel/Read/ReadVariableOp#conv3d_277/bias/Read/ReadVariableOp%conv3d_278/kernel/Read/ReadVariableOp#conv3d_278/bias/Read/ReadVariableOp%conv3d_279/kernel/Read/ReadVariableOp#conv3d_279/bias/Read/ReadVariableOp.conv3d_transpose_40/kernel/Read/ReadVariableOp,conv3d_transpose_40/bias/Read/ReadVariableOp%conv3d_280/kernel/Read/ReadVariableOp#conv3d_280/bias/Read/ReadVariableOp%conv3d_281/kernel/Read/ReadVariableOp#conv3d_281/bias/Read/ReadVariableOp%conv3d_282/kernel/Read/ReadVariableOp#conv3d_282/bias/Read/ReadVariableOp%conv3d_283/kernel/Read/ReadVariableOp#conv3d_283/bias/Read/ReadVariableOp.conv3d_transpose_41/kernel/Read/ReadVariableOp,conv3d_transpose_41/bias/Read/ReadVariableOp%conv3d_284/kernel/Read/ReadVariableOp#conv3d_284/bias/Read/ReadVariableOp%conv3d_285/kernel/Read/ReadVariableOp#conv3d_285/bias/Read/ReadVariableOp%conv3d_286/kernel/Read/ReadVariableOp#conv3d_286/bias/Read/ReadVariableOp%conv3d_287/kernel/Read/ReadVariableOp#conv3d_287/bias/Read/ReadVariableOp.conv3d_transpose_42/kernel/Read/ReadVariableOp,conv3d_transpose_42/bias/Read/ReadVariableOp%conv3d_288/kernel/Read/ReadVariableOp#conv3d_288/bias/Read/ReadVariableOp%conv3d_289/kernel/Read/ReadVariableOp#conv3d_289/bias/Read/ReadVariableOp%conv3d_290/kernel/Read/ReadVariableOp#conv3d_290/bias/Read/ReadVariableOp%conv3d_291/kernel/Read/ReadVariableOp#conv3d_291/bias/Read/ReadVariableOp.conv3d_transpose_43/kernel/Read/ReadVariableOp,conv3d_transpose_43/bias/Read/ReadVariableOp%conv3d_292/kernel/Read/ReadVariableOp#conv3d_292/bias/Read/ReadVariableOp%conv3d_293/kernel/Read/ReadVariableOp#conv3d_293/bias/Read/ReadVariableOp%conv3d_294/kernel/Read/ReadVariableOp#conv3d_294/bias/Read/ReadVariableOp%conv3d_295/kernel/Read/ReadVariableOp#conv3d_295/bias/Read/ReadVariableOp%conv3d_296/kernel/Read/ReadVariableOp#conv3d_296/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv3d_270/kernel/m/Read/ReadVariableOp*Adam/conv3d_270/bias/m/Read/ReadVariableOp,Adam/conv3d_271/kernel/m/Read/ReadVariableOp*Adam/conv3d_271/bias/m/Read/ReadVariableOp,Adam/conv3d_272/kernel/m/Read/ReadVariableOp*Adam/conv3d_272/bias/m/Read/ReadVariableOp,Adam/conv3d_273/kernel/m/Read/ReadVariableOp*Adam/conv3d_273/bias/m/Read/ReadVariableOp,Adam/conv3d_274/kernel/m/Read/ReadVariableOp*Adam/conv3d_274/bias/m/Read/ReadVariableOp,Adam/conv3d_275/kernel/m/Read/ReadVariableOp*Adam/conv3d_275/bias/m/Read/ReadVariableOp,Adam/conv3d_276/kernel/m/Read/ReadVariableOp*Adam/conv3d_276/bias/m/Read/ReadVariableOp,Adam/conv3d_277/kernel/m/Read/ReadVariableOp*Adam/conv3d_277/bias/m/Read/ReadVariableOp,Adam/conv3d_278/kernel/m/Read/ReadVariableOp*Adam/conv3d_278/bias/m/Read/ReadVariableOp,Adam/conv3d_279/kernel/m/Read/ReadVariableOp*Adam/conv3d_279/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_40/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_40/bias/m/Read/ReadVariableOp,Adam/conv3d_280/kernel/m/Read/ReadVariableOp*Adam/conv3d_280/bias/m/Read/ReadVariableOp,Adam/conv3d_281/kernel/m/Read/ReadVariableOp*Adam/conv3d_281/bias/m/Read/ReadVariableOp,Adam/conv3d_282/kernel/m/Read/ReadVariableOp*Adam/conv3d_282/bias/m/Read/ReadVariableOp,Adam/conv3d_283/kernel/m/Read/ReadVariableOp*Adam/conv3d_283/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_41/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_41/bias/m/Read/ReadVariableOp,Adam/conv3d_284/kernel/m/Read/ReadVariableOp*Adam/conv3d_284/bias/m/Read/ReadVariableOp,Adam/conv3d_285/kernel/m/Read/ReadVariableOp*Adam/conv3d_285/bias/m/Read/ReadVariableOp,Adam/conv3d_286/kernel/m/Read/ReadVariableOp*Adam/conv3d_286/bias/m/Read/ReadVariableOp,Adam/conv3d_287/kernel/m/Read/ReadVariableOp*Adam/conv3d_287/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_42/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_42/bias/m/Read/ReadVariableOp,Adam/conv3d_288/kernel/m/Read/ReadVariableOp*Adam/conv3d_288/bias/m/Read/ReadVariableOp,Adam/conv3d_289/kernel/m/Read/ReadVariableOp*Adam/conv3d_289/bias/m/Read/ReadVariableOp,Adam/conv3d_290/kernel/m/Read/ReadVariableOp*Adam/conv3d_290/bias/m/Read/ReadVariableOp,Adam/conv3d_291/kernel/m/Read/ReadVariableOp*Adam/conv3d_291/bias/m/Read/ReadVariableOp5Adam/conv3d_transpose_43/kernel/m/Read/ReadVariableOp3Adam/conv3d_transpose_43/bias/m/Read/ReadVariableOp,Adam/conv3d_292/kernel/m/Read/ReadVariableOp*Adam/conv3d_292/bias/m/Read/ReadVariableOp,Adam/conv3d_293/kernel/m/Read/ReadVariableOp*Adam/conv3d_293/bias/m/Read/ReadVariableOp,Adam/conv3d_294/kernel/m/Read/ReadVariableOp*Adam/conv3d_294/bias/m/Read/ReadVariableOp,Adam/conv3d_295/kernel/m/Read/ReadVariableOp*Adam/conv3d_295/bias/m/Read/ReadVariableOp,Adam/conv3d_296/kernel/m/Read/ReadVariableOp*Adam/conv3d_296/bias/m/Read/ReadVariableOp,Adam/conv3d_270/kernel/v/Read/ReadVariableOp*Adam/conv3d_270/bias/v/Read/ReadVariableOp,Adam/conv3d_271/kernel/v/Read/ReadVariableOp*Adam/conv3d_271/bias/v/Read/ReadVariableOp,Adam/conv3d_272/kernel/v/Read/ReadVariableOp*Adam/conv3d_272/bias/v/Read/ReadVariableOp,Adam/conv3d_273/kernel/v/Read/ReadVariableOp*Adam/conv3d_273/bias/v/Read/ReadVariableOp,Adam/conv3d_274/kernel/v/Read/ReadVariableOp*Adam/conv3d_274/bias/v/Read/ReadVariableOp,Adam/conv3d_275/kernel/v/Read/ReadVariableOp*Adam/conv3d_275/bias/v/Read/ReadVariableOp,Adam/conv3d_276/kernel/v/Read/ReadVariableOp*Adam/conv3d_276/bias/v/Read/ReadVariableOp,Adam/conv3d_277/kernel/v/Read/ReadVariableOp*Adam/conv3d_277/bias/v/Read/ReadVariableOp,Adam/conv3d_278/kernel/v/Read/ReadVariableOp*Adam/conv3d_278/bias/v/Read/ReadVariableOp,Adam/conv3d_279/kernel/v/Read/ReadVariableOp*Adam/conv3d_279/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_40/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_40/bias/v/Read/ReadVariableOp,Adam/conv3d_280/kernel/v/Read/ReadVariableOp*Adam/conv3d_280/bias/v/Read/ReadVariableOp,Adam/conv3d_281/kernel/v/Read/ReadVariableOp*Adam/conv3d_281/bias/v/Read/ReadVariableOp,Adam/conv3d_282/kernel/v/Read/ReadVariableOp*Adam/conv3d_282/bias/v/Read/ReadVariableOp,Adam/conv3d_283/kernel/v/Read/ReadVariableOp*Adam/conv3d_283/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_41/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_41/bias/v/Read/ReadVariableOp,Adam/conv3d_284/kernel/v/Read/ReadVariableOp*Adam/conv3d_284/bias/v/Read/ReadVariableOp,Adam/conv3d_285/kernel/v/Read/ReadVariableOp*Adam/conv3d_285/bias/v/Read/ReadVariableOp,Adam/conv3d_286/kernel/v/Read/ReadVariableOp*Adam/conv3d_286/bias/v/Read/ReadVariableOp,Adam/conv3d_287/kernel/v/Read/ReadVariableOp*Adam/conv3d_287/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_42/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_42/bias/v/Read/ReadVariableOp,Adam/conv3d_288/kernel/v/Read/ReadVariableOp*Adam/conv3d_288/bias/v/Read/ReadVariableOp,Adam/conv3d_289/kernel/v/Read/ReadVariableOp*Adam/conv3d_289/bias/v/Read/ReadVariableOp,Adam/conv3d_290/kernel/v/Read/ReadVariableOp*Adam/conv3d_290/bias/v/Read/ReadVariableOp,Adam/conv3d_291/kernel/v/Read/ReadVariableOp*Adam/conv3d_291/bias/v/Read/ReadVariableOp5Adam/conv3d_transpose_43/kernel/v/Read/ReadVariableOp3Adam/conv3d_transpose_43/bias/v/Read/ReadVariableOp,Adam/conv3d_292/kernel/v/Read/ReadVariableOp*Adam/conv3d_292/bias/v/Read/ReadVariableOp,Adam/conv3d_293/kernel/v/Read/ReadVariableOp*Adam/conv3d_293/bias/v/Read/ReadVariableOp,Adam/conv3d_294/kernel/v/Read/ReadVariableOp*Adam/conv3d_294/bias/v/Read/ReadVariableOp,Adam/conv3d_295/kernel/v/Read/ReadVariableOp*Adam/conv3d_295/bias/v/Read/ReadVariableOp,Adam/conv3d_296/kernel/v/Read/ReadVariableOp*Adam/conv3d_296/bias/v/Read/ReadVariableOpConst*г
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
__inference__traced_save_334083
'
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_270/kernelconv3d_270/biasconv3d_271/kernelconv3d_271/biasconv3d_272/kernelconv3d_272/biasconv3d_273/kernelconv3d_273/biasconv3d_274/kernelconv3d_274/biasconv3d_275/kernelconv3d_275/biasconv3d_276/kernelconv3d_276/biasconv3d_277/kernelconv3d_277/biasconv3d_278/kernelconv3d_278/biasconv3d_279/kernelconv3d_279/biasconv3d_transpose_40/kernelconv3d_transpose_40/biasconv3d_280/kernelconv3d_280/biasconv3d_281/kernelconv3d_281/biasconv3d_282/kernelconv3d_282/biasconv3d_283/kernelconv3d_283/biasconv3d_transpose_41/kernelconv3d_transpose_41/biasconv3d_284/kernelconv3d_284/biasconv3d_285/kernelconv3d_285/biasconv3d_286/kernelconv3d_286/biasconv3d_287/kernelconv3d_287/biasconv3d_transpose_42/kernelconv3d_transpose_42/biasconv3d_288/kernelconv3d_288/biasconv3d_289/kernelconv3d_289/biasconv3d_290/kernelconv3d_290/biasconv3d_291/kernelconv3d_291/biasconv3d_transpose_43/kernelconv3d_transpose_43/biasconv3d_292/kernelconv3d_292/biasconv3d_293/kernelconv3d_293/biasconv3d_294/kernelconv3d_294/biasconv3d_295/kernelconv3d_295/biasconv3d_296/kernelconv3d_296/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_270/kernel/mAdam/conv3d_270/bias/mAdam/conv3d_271/kernel/mAdam/conv3d_271/bias/mAdam/conv3d_272/kernel/mAdam/conv3d_272/bias/mAdam/conv3d_273/kernel/mAdam/conv3d_273/bias/mAdam/conv3d_274/kernel/mAdam/conv3d_274/bias/mAdam/conv3d_275/kernel/mAdam/conv3d_275/bias/mAdam/conv3d_276/kernel/mAdam/conv3d_276/bias/mAdam/conv3d_277/kernel/mAdam/conv3d_277/bias/mAdam/conv3d_278/kernel/mAdam/conv3d_278/bias/mAdam/conv3d_279/kernel/mAdam/conv3d_279/bias/m!Adam/conv3d_transpose_40/kernel/mAdam/conv3d_transpose_40/bias/mAdam/conv3d_280/kernel/mAdam/conv3d_280/bias/mAdam/conv3d_281/kernel/mAdam/conv3d_281/bias/mAdam/conv3d_282/kernel/mAdam/conv3d_282/bias/mAdam/conv3d_283/kernel/mAdam/conv3d_283/bias/m!Adam/conv3d_transpose_41/kernel/mAdam/conv3d_transpose_41/bias/mAdam/conv3d_284/kernel/mAdam/conv3d_284/bias/mAdam/conv3d_285/kernel/mAdam/conv3d_285/bias/mAdam/conv3d_286/kernel/mAdam/conv3d_286/bias/mAdam/conv3d_287/kernel/mAdam/conv3d_287/bias/m!Adam/conv3d_transpose_42/kernel/mAdam/conv3d_transpose_42/bias/mAdam/conv3d_288/kernel/mAdam/conv3d_288/bias/mAdam/conv3d_289/kernel/mAdam/conv3d_289/bias/mAdam/conv3d_290/kernel/mAdam/conv3d_290/bias/mAdam/conv3d_291/kernel/mAdam/conv3d_291/bias/m!Adam/conv3d_transpose_43/kernel/mAdam/conv3d_transpose_43/bias/mAdam/conv3d_292/kernel/mAdam/conv3d_292/bias/mAdam/conv3d_293/kernel/mAdam/conv3d_293/bias/mAdam/conv3d_294/kernel/mAdam/conv3d_294/bias/mAdam/conv3d_295/kernel/mAdam/conv3d_295/bias/mAdam/conv3d_296/kernel/mAdam/conv3d_296/bias/mAdam/conv3d_270/kernel/vAdam/conv3d_270/bias/vAdam/conv3d_271/kernel/vAdam/conv3d_271/bias/vAdam/conv3d_272/kernel/vAdam/conv3d_272/bias/vAdam/conv3d_273/kernel/vAdam/conv3d_273/bias/vAdam/conv3d_274/kernel/vAdam/conv3d_274/bias/vAdam/conv3d_275/kernel/vAdam/conv3d_275/bias/vAdam/conv3d_276/kernel/vAdam/conv3d_276/bias/vAdam/conv3d_277/kernel/vAdam/conv3d_277/bias/vAdam/conv3d_278/kernel/vAdam/conv3d_278/bias/vAdam/conv3d_279/kernel/vAdam/conv3d_279/bias/v!Adam/conv3d_transpose_40/kernel/vAdam/conv3d_transpose_40/bias/vAdam/conv3d_280/kernel/vAdam/conv3d_280/bias/vAdam/conv3d_281/kernel/vAdam/conv3d_281/bias/vAdam/conv3d_282/kernel/vAdam/conv3d_282/bias/vAdam/conv3d_283/kernel/vAdam/conv3d_283/bias/v!Adam/conv3d_transpose_41/kernel/vAdam/conv3d_transpose_41/bias/vAdam/conv3d_284/kernel/vAdam/conv3d_284/bias/vAdam/conv3d_285/kernel/vAdam/conv3d_285/bias/vAdam/conv3d_286/kernel/vAdam/conv3d_286/bias/vAdam/conv3d_287/kernel/vAdam/conv3d_287/bias/v!Adam/conv3d_transpose_42/kernel/vAdam/conv3d_transpose_42/bias/vAdam/conv3d_288/kernel/vAdam/conv3d_288/bias/vAdam/conv3d_289/kernel/vAdam/conv3d_289/bias/vAdam/conv3d_290/kernel/vAdam/conv3d_290/bias/vAdam/conv3d_291/kernel/vAdam/conv3d_291/bias/v!Adam/conv3d_transpose_43/kernel/vAdam/conv3d_transpose_43/bias/vAdam/conv3d_292/kernel/vAdam/conv3d_292/bias/vAdam/conv3d_293/kernel/vAdam/conv3d_293/bias/vAdam/conv3d_294/kernel/vAdam/conv3d_294/bias/vAdam/conv3d_295/kernel/vAdam/conv3d_295/bias/vAdam/conv3d_296/kernel/vAdam/conv3d_296/bias/v*в
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
"__inference__traced_restore_334678П№'
љ
Ї
+__inference_conv3d_281_layer_call_fn_332981

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
F__inference_conv3d_281_layer_call_and_return_conditional_losses_329940
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
з

F__inference_conv3d_279_layer_call_and_return_conditional_losses_329892

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
­
t
J__inference_concatenate_40_layer_call_and_return_conditional_losses_329927

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
Ы

F__inference_conv3d_291_layer_call_and_return_conditional_losses_330138

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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_332869

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
 
Њ
$__inference_signature_wrapper_332638
input_11%
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
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_329450
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
input_11
з

F__inference_conv3d_279_layer_call_and_return_conditional_losses_332889

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
Ы

F__inference_conv3d_270_layer_call_and_return_conditional_losses_329735

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
І&
Ѓ
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_329556

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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_332739

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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_330220

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
+__inference_conv3d_279_layer_call_fn_332878

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
F__inference_conv3d_279_layer_call_and_return_conditional_losses_329892
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
к
h
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_332749

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

[
/__inference_concatenate_42_layer_call_fn_333239
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
J__inference_concatenate_42_layer_call_and_return_conditional_losses_330091
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
	
­
4__inference_conv3d_transpose_43_layer_call_fn_333315

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
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_329694
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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_333443

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
+__inference_conv3d_295_layer_call_fn_333432

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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_330220
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
Ы

F__inference_conv3d_289_layer_call_and_return_conditional_losses_330104

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
Љ
t
J__inference_concatenate_41_layer_call_and_return_conditional_losses_330009

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
Њ
i
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_332649

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
ђ
Є
+__inference_conv3d_275_layer_call_fn_332778

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
F__inference_conv3d_275_layer_call_and_return_conditional_losses_329822
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
з

F__inference_conv3d_277_layer_call_and_return_conditional_losses_332839

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
Љи
е3
D__inference_model_10_layer_call_and_return_conditional_losses_332167

inputsG
)conv3d_270_conv3d_readvariableop_resource:8
*conv3d_270_biasadd_readvariableop_resource:G
)conv3d_271_conv3d_readvariableop_resource:8
*conv3d_271_biasadd_readvariableop_resource:G
)conv3d_272_conv3d_readvariableop_resource: 8
*conv3d_272_biasadd_readvariableop_resource: G
)conv3d_273_conv3d_readvariableop_resource:  8
*conv3d_273_biasadd_readvariableop_resource: G
)conv3d_274_conv3d_readvariableop_resource: @8
*conv3d_274_biasadd_readvariableop_resource:@G
)conv3d_275_conv3d_readvariableop_resource:@@8
*conv3d_275_biasadd_readvariableop_resource:@H
)conv3d_276_conv3d_readvariableop_resource:@9
*conv3d_276_biasadd_readvariableop_resource:	I
)conv3d_277_conv3d_readvariableop_resource:9
*conv3d_277_biasadd_readvariableop_resource:	I
)conv3d_278_conv3d_readvariableop_resource:9
*conv3d_278_biasadd_readvariableop_resource:	I
)conv3d_279_conv3d_readvariableop_resource:9
*conv3d_279_biasadd_readvariableop_resource:	\
<conv3d_transpose_40_conv3d_transpose_readvariableop_resource:B
3conv3d_transpose_40_biasadd_readvariableop_resource:	I
)conv3d_280_conv3d_readvariableop_resource:9
*conv3d_280_biasadd_readvariableop_resource:	I
)conv3d_281_conv3d_readvariableop_resource:9
*conv3d_281_biasadd_readvariableop_resource:	I
)conv3d_282_conv3d_readvariableop_resource:9
*conv3d_282_biasadd_readvariableop_resource:	I
)conv3d_283_conv3d_readvariableop_resource:9
*conv3d_283_biasadd_readvariableop_resource:	[
<conv3d_transpose_41_conv3d_transpose_readvariableop_resource:@A
3conv3d_transpose_41_biasadd_readvariableop_resource:@G
)conv3d_284_conv3d_readvariableop_resource:@@8
*conv3d_284_biasadd_readvariableop_resource:@H
)conv3d_285_conv3d_readvariableop_resource:@8
*conv3d_285_biasadd_readvariableop_resource:@G
)conv3d_286_conv3d_readvariableop_resource:@@8
*conv3d_286_biasadd_readvariableop_resource:@G
)conv3d_287_conv3d_readvariableop_resource:@@8
*conv3d_287_biasadd_readvariableop_resource:@Z
<conv3d_transpose_42_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_42_biasadd_readvariableop_resource: G
)conv3d_288_conv3d_readvariableop_resource:  8
*conv3d_288_biasadd_readvariableop_resource: G
)conv3d_289_conv3d_readvariableop_resource:@ 8
*conv3d_289_biasadd_readvariableop_resource: G
)conv3d_290_conv3d_readvariableop_resource:  8
*conv3d_290_biasadd_readvariableop_resource: G
)conv3d_291_conv3d_readvariableop_resource:  8
*conv3d_291_biasadd_readvariableop_resource: Z
<conv3d_transpose_43_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_43_biasadd_readvariableop_resource:G
)conv3d_292_conv3d_readvariableop_resource:8
*conv3d_292_biasadd_readvariableop_resource:G
)conv3d_293_conv3d_readvariableop_resource: 8
*conv3d_293_biasadd_readvariableop_resource:G
)conv3d_294_conv3d_readvariableop_resource:8
*conv3d_294_biasadd_readvariableop_resource:G
)conv3d_295_conv3d_readvariableop_resource:8
*conv3d_295_biasadd_readvariableop_resource:G
)conv3d_296_conv3d_readvariableop_resource:8
*conv3d_296_biasadd_readvariableop_resource:
identityЂ!conv3d_270/BiasAdd/ReadVariableOpЂ conv3d_270/Conv3D/ReadVariableOpЂ!conv3d_271/BiasAdd/ReadVariableOpЂ conv3d_271/Conv3D/ReadVariableOpЂ!conv3d_272/BiasAdd/ReadVariableOpЂ conv3d_272/Conv3D/ReadVariableOpЂ!conv3d_273/BiasAdd/ReadVariableOpЂ conv3d_273/Conv3D/ReadVariableOpЂ!conv3d_274/BiasAdd/ReadVariableOpЂ conv3d_274/Conv3D/ReadVariableOpЂ!conv3d_275/BiasAdd/ReadVariableOpЂ conv3d_275/Conv3D/ReadVariableOpЂ!conv3d_276/BiasAdd/ReadVariableOpЂ conv3d_276/Conv3D/ReadVariableOpЂ!conv3d_277/BiasAdd/ReadVariableOpЂ conv3d_277/Conv3D/ReadVariableOpЂ!conv3d_278/BiasAdd/ReadVariableOpЂ conv3d_278/Conv3D/ReadVariableOpЂ!conv3d_279/BiasAdd/ReadVariableOpЂ conv3d_279/Conv3D/ReadVariableOpЂ!conv3d_280/BiasAdd/ReadVariableOpЂ conv3d_280/Conv3D/ReadVariableOpЂ!conv3d_281/BiasAdd/ReadVariableOpЂ conv3d_281/Conv3D/ReadVariableOpЂ!conv3d_282/BiasAdd/ReadVariableOpЂ conv3d_282/Conv3D/ReadVariableOpЂ!conv3d_283/BiasAdd/ReadVariableOpЂ conv3d_283/Conv3D/ReadVariableOpЂ!conv3d_284/BiasAdd/ReadVariableOpЂ conv3d_284/Conv3D/ReadVariableOpЂ!conv3d_285/BiasAdd/ReadVariableOpЂ conv3d_285/Conv3D/ReadVariableOpЂ!conv3d_286/BiasAdd/ReadVariableOpЂ conv3d_286/Conv3D/ReadVariableOpЂ!conv3d_287/BiasAdd/ReadVariableOpЂ conv3d_287/Conv3D/ReadVariableOpЂ!conv3d_288/BiasAdd/ReadVariableOpЂ conv3d_288/Conv3D/ReadVariableOpЂ!conv3d_289/BiasAdd/ReadVariableOpЂ conv3d_289/Conv3D/ReadVariableOpЂ!conv3d_290/BiasAdd/ReadVariableOpЂ conv3d_290/Conv3D/ReadVariableOpЂ!conv3d_291/BiasAdd/ReadVariableOpЂ conv3d_291/Conv3D/ReadVariableOpЂ!conv3d_292/BiasAdd/ReadVariableOpЂ conv3d_292/Conv3D/ReadVariableOpЂ!conv3d_293/BiasAdd/ReadVariableOpЂ conv3d_293/Conv3D/ReadVariableOpЂ!conv3d_294/BiasAdd/ReadVariableOpЂ conv3d_294/Conv3D/ReadVariableOpЂ!conv3d_295/BiasAdd/ReadVariableOpЂ conv3d_295/Conv3D/ReadVariableOpЂ!conv3d_296/BiasAdd/ReadVariableOpЂ conv3d_296/Conv3D/ReadVariableOpЂ*conv3d_transpose_40/BiasAdd/ReadVariableOpЂ3conv3d_transpose_40/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_41/BiasAdd/ReadVariableOpЂ3conv3d_transpose_41/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_42/BiasAdd/ReadVariableOpЂ3conv3d_transpose_42/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_43/BiasAdd/ReadVariableOpЂ3conv3d_transpose_43/conv3d_transpose/ReadVariableOp
zero_padding3d_10/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_10/PadPadinputs'zero_padding3d_10/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_270/Conv3D/ReadVariableOpReadVariableOp)conv3d_270_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ч
conv3d_270/Conv3DConv3Dzero_padding3d_10/Pad:output:0(conv3d_270/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_270/BiasAdd/ReadVariableOpReadVariableOp*conv3d_270_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_270/BiasAddBiasAddconv3d_270/Conv3D:output:0)conv3d_270/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_270/ReluReluconv3d_270/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_271/Conv3D/ReadVariableOpReadVariableOp)conv3d_271_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_271/Conv3DConv3Dconv3d_270/Relu:activations:0(conv3d_271/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_271/BiasAdd/ReadVariableOpReadVariableOp*conv3d_271_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_271/BiasAddBiasAddconv3d_271/Conv3D:output:0)conv3d_271/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_271/ReluReluconv3d_271/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџн
max_pooling3d_40/MaxPool3D	MaxPool3Dconv3d_271/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_272/Conv3D/ReadVariableOpReadVariableOp)conv3d_272_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_272/Conv3DConv3D#max_pooling3d_40/MaxPool3D:output:0(conv3d_272/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_272/BiasAdd/ReadVariableOpReadVariableOp*conv3d_272_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_272/BiasAddBiasAddconv3d_272/Conv3D:output:0)conv3d_272/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_272/ReluReluconv3d_272/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_273/Conv3D/ReadVariableOpReadVariableOp)conv3d_273_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_273/Conv3DConv3Dconv3d_272/Relu:activations:0(conv3d_273/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_273/BiasAdd/ReadVariableOpReadVariableOp*conv3d_273_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_273/BiasAddBiasAddconv3d_273/Conv3D:output:0)conv3d_273/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_273/ReluReluconv3d_273/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ н
max_pooling3d_41/MaxPool3D	MaxPool3Dconv3d_273/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	

 conv3d_274/Conv3D/ReadVariableOpReadVariableOp)conv3d_274_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_274/Conv3DConv3D#max_pooling3d_41/MaxPool3D:output:0(conv3d_274/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_274/BiasAdd/ReadVariableOpReadVariableOp*conv3d_274_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_274/BiasAddBiasAddconv3d_274/Conv3D:output:0)conv3d_274/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_274/ReluReluconv3d_274/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_275/Conv3D/ReadVariableOpReadVariableOp)conv3d_275_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_275/Conv3DConv3Dconv3d_274/Relu:activations:0(conv3d_275/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_275/BiasAdd/ReadVariableOpReadVariableOp*conv3d_275_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_275/BiasAddBiasAddconv3d_275/Conv3D:output:0)conv3d_275/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_275/ReluReluconv3d_275/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@н
max_pooling3d_42/MaxPool3D	MaxPool3Dconv3d_275/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	

 conv3d_276/Conv3D/ReadVariableOpReadVariableOp)conv3d_276_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0э
conv3d_276/Conv3DConv3D#max_pooling3d_42/MaxPool3D:output:0(conv3d_276/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_276/BiasAdd/ReadVariableOpReadVariableOp*conv3d_276_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_276/BiasAddBiasAddconv3d_276/Conv3D:output:0)conv3d_276/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_276/ReluReluconv3d_276/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_277/Conv3D/ReadVariableOpReadVariableOp)conv3d_277_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_277/Conv3DConv3Dconv3d_276/Relu:activations:0(conv3d_277/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_277/BiasAdd/ReadVariableOpReadVariableOp*conv3d_277_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_277/BiasAddBiasAddconv3d_277/Conv3D:output:0)conv3d_277/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_277/ReluReluconv3d_277/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџо
max_pooling3d_43/MaxPool3D	MaxPool3Dconv3d_277/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_278/Conv3D/ReadVariableOpReadVariableOp)conv3d_278_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0э
conv3d_278/Conv3DConv3D#max_pooling3d_43/MaxPool3D:output:0(conv3d_278/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_278/BiasAdd/ReadVariableOpReadVariableOp*conv3d_278_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_278/BiasAddBiasAddconv3d_278/Conv3D:output:0)conv3d_278/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_278/ReluReluconv3d_278/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_279/Conv3D/ReadVariableOpReadVariableOp)conv3d_279_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_279/Conv3DConv3Dconv3d_278/Relu:activations:0(conv3d_279/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_279/BiasAdd/ReadVariableOpReadVariableOp*conv3d_279_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_279/BiasAddBiasAddconv3d_279/Conv3D:output:0)conv3d_279/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_279/ReluReluconv3d_279/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_40/ShapeShapeconv3d_279/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_40/strided_sliceStridedSlice"conv3d_transpose_40/Shape:output:00conv3d_transpose_40/strided_slice/stack:output:02conv3d_transpose_40/strided_slice/stack_1:output:02conv3d_transpose_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_40/strided_slice_1StridedSlice"conv3d_transpose_40/Shape:output:02conv3d_transpose_40/strided_slice_1/stack:output:04conv3d_transpose_40/strided_slice_1/stack_1:output:04conv3d_transpose_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_40/strided_slice_2StridedSlice"conv3d_transpose_40/Shape:output:02conv3d_transpose_40/strided_slice_2/stack:output:04conv3d_transpose_40/strided_slice_2/stack_1:output:04conv3d_transpose_40/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_40/strided_slice_3StridedSlice"conv3d_transpose_40/Shape:output:02conv3d_transpose_40/strided_slice_3/stack:output:04conv3d_transpose_40/strided_slice_3/stack_1:output:04conv3d_transpose_40/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_40/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_40/mulMul,conv3d_transpose_40/strided_slice_1:output:0"conv3d_transpose_40/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_40/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_40/addAddV2conv3d_transpose_40/mul:z:0"conv3d_transpose_40/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_40/mul_1Mul,conv3d_transpose_40/strided_slice_2:output:0$conv3d_transpose_40/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_40/add_1AddV2conv3d_transpose_40/mul_1:z:0$conv3d_transpose_40/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_40/mul_2Mul,conv3d_transpose_40/strided_slice_3:output:0$conv3d_transpose_40/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_40/add_2AddV2conv3d_transpose_40/mul_2:z:0$conv3d_transpose_40/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_40/stack/4Const*
_output_shapes
: *
dtype0*
value
B :ќ
conv3d_transpose_40/stackPack*conv3d_transpose_40/strided_slice:output:0conv3d_transpose_40/add:z:0conv3d_transpose_40/add_1:z:0conv3d_transpose_40/add_2:z:0$conv3d_transpose_40/stack/4:output:0*
N*
T0*
_output_shapes
:О
3conv3d_transpose_40/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_40_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0С
$conv3d_transpose_40/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_40/stack:output:0;conv3d_transpose_40/conv3d_transpose/ReadVariableOp:value:0conv3d_279/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	

*conv3d_transpose_40/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0у
conv3d_transpose_40/BiasAddBiasAdd-conv3d_transpose_40/conv3d_transpose:output:02conv3d_transpose_40/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_280/Conv3D/ReadVariableOpReadVariableOp)conv3d_280_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_280/Conv3DConv3D$conv3d_transpose_40/BiasAdd:output:0(conv3d_280/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_280/BiasAdd/ReadVariableOpReadVariableOp*conv3d_280_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_280/BiasAddBiasAddconv3d_280/Conv3D:output:0)conv3d_280/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_280/ReluReluconv3d_280/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_40/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_40/concatConcatV2conv3d_277/Relu:activations:0conv3d_280/Relu:activations:0#concatenate_40/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_281/Conv3D/ReadVariableOpReadVariableOp)conv3d_281_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ш
conv3d_281/Conv3DConv3Dconcatenate_40/concat:output:0(conv3d_281/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_281/BiasAdd/ReadVariableOpReadVariableOp*conv3d_281_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_281/BiasAddBiasAddconv3d_281/Conv3D:output:0)conv3d_281/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_281/ReluReluconv3d_281/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_282/Conv3D/ReadVariableOpReadVariableOp)conv3d_282_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_282/Conv3DConv3Dconv3d_281/Relu:activations:0(conv3d_282/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_282/BiasAdd/ReadVariableOpReadVariableOp*conv3d_282_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_282/BiasAddBiasAddconv3d_282/Conv3D:output:0)conv3d_282/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_282/ReluReluconv3d_282/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_283/Conv3D/ReadVariableOpReadVariableOp)conv3d_283_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_283/Conv3DConv3Dconv3d_282/Relu:activations:0(conv3d_283/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_283/BiasAdd/ReadVariableOpReadVariableOp*conv3d_283_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_283/BiasAddBiasAddconv3d_283/Conv3D:output:0)conv3d_283/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_283/ReluReluconv3d_283/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_41/ShapeShapeconv3d_283/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_41/strided_sliceStridedSlice"conv3d_transpose_41/Shape:output:00conv3d_transpose_41/strided_slice/stack:output:02conv3d_transpose_41/strided_slice/stack_1:output:02conv3d_transpose_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_41/strided_slice_1StridedSlice"conv3d_transpose_41/Shape:output:02conv3d_transpose_41/strided_slice_1/stack:output:04conv3d_transpose_41/strided_slice_1/stack_1:output:04conv3d_transpose_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_41/strided_slice_2StridedSlice"conv3d_transpose_41/Shape:output:02conv3d_transpose_41/strided_slice_2/stack:output:04conv3d_transpose_41/strided_slice_2/stack_1:output:04conv3d_transpose_41/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_41/strided_slice_3StridedSlice"conv3d_transpose_41/Shape:output:02conv3d_transpose_41/strided_slice_3/stack:output:04conv3d_transpose_41/strided_slice_3/stack_1:output:04conv3d_transpose_41/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_41/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_41/mulMul,conv3d_transpose_41/strided_slice_1:output:0"conv3d_transpose_41/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_41/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_41/mul_1Mul,conv3d_transpose_41/strided_slice_2:output:0$conv3d_transpose_41/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_41/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_41/mul_2Mul,conv3d_transpose_41/strided_slice_3:output:0$conv3d_transpose_41/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_41/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@ќ
conv3d_transpose_41/stackPack*conv3d_transpose_41/strided_slice:output:0conv3d_transpose_41/mul:z:0conv3d_transpose_41/mul_1:z:0conv3d_transpose_41/mul_2:z:0$conv3d_transpose_41/stack/4:output:0*
N*
T0*
_output_shapes
:Н
3conv3d_transpose_41/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_41_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0П
$conv3d_transpose_41/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_41/stack:output:0;conv3d_transpose_41/conv3d_transpose/ReadVariableOp:value:0conv3d_283/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*conv3d_transpose_41/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0т
conv3d_transpose_41/BiasAddBiasAdd-conv3d_transpose_41/conv3d_transpose:output:02conv3d_transpose_41/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_284/Conv3D/ReadVariableOpReadVariableOp)conv3d_284_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0э
conv3d_284/Conv3DConv3D$conv3d_transpose_41/BiasAdd:output:0(conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_284/BiasAdd/ReadVariableOpReadVariableOp*conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_284/BiasAddBiasAddconv3d_284/Conv3D:output:0)conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_284/ReluReluconv3d_284/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@\
concatenate_41/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_41/concatConcatV2conv3d_275/Relu:activations:0conv3d_284/Relu:activations:0#concatenate_41/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_285/Conv3D/ReadVariableOpReadVariableOp)conv3d_285_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ч
conv3d_285/Conv3DConv3Dconcatenate_41/concat:output:0(conv3d_285/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_285/BiasAdd/ReadVariableOpReadVariableOp*conv3d_285_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_285/BiasAddBiasAddconv3d_285/Conv3D:output:0)conv3d_285/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_285/ReluReluconv3d_285/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_286/Conv3D/ReadVariableOpReadVariableOp)conv3d_286_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_286/Conv3DConv3Dconv3d_285/Relu:activations:0(conv3d_286/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_286/BiasAdd/ReadVariableOpReadVariableOp*conv3d_286_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_286/BiasAddBiasAddconv3d_286/Conv3D:output:0)conv3d_286/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_286/ReluReluconv3d_286/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_287/Conv3D/ReadVariableOpReadVariableOp)conv3d_287_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_287/Conv3DConv3Dconv3d_286/Relu:activations:0(conv3d_287/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_287/BiasAdd/ReadVariableOpReadVariableOp*conv3d_287_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_287/BiasAddBiasAddconv3d_287/Conv3D:output:0)conv3d_287/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_287/ReluReluconv3d_287/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@f
conv3d_transpose_42/ShapeShapeconv3d_287/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_42/strided_sliceStridedSlice"conv3d_transpose_42/Shape:output:00conv3d_transpose_42/strided_slice/stack:output:02conv3d_transpose_42/strided_slice/stack_1:output:02conv3d_transpose_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_42/strided_slice_1StridedSlice"conv3d_transpose_42/Shape:output:02conv3d_transpose_42/strided_slice_1/stack:output:04conv3d_transpose_42/strided_slice_1/stack_1:output:04conv3d_transpose_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_42/strided_slice_2StridedSlice"conv3d_transpose_42/Shape:output:02conv3d_transpose_42/strided_slice_2/stack:output:04conv3d_transpose_42/strided_slice_2/stack_1:output:04conv3d_transpose_42/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_42/strided_slice_3StridedSlice"conv3d_transpose_42/Shape:output:02conv3d_transpose_42/strided_slice_3/stack:output:04conv3d_transpose_42/strided_slice_3/stack_1:output:04conv3d_transpose_42/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_42/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_42/mulMul,conv3d_transpose_42/strided_slice_1:output:0"conv3d_transpose_42/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_42/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_42/mul_1Mul,conv3d_transpose_42/strided_slice_2:output:0$conv3d_transpose_42/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_42/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_42/mul_2Mul,conv3d_transpose_42/strided_slice_3:output:0$conv3d_transpose_42/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_42/stack/4Const*
_output_shapes
: *
dtype0*
value	B : ќ
conv3d_transpose_42/stackPack*conv3d_transpose_42/strided_slice:output:0conv3d_transpose_42/mul:z:0conv3d_transpose_42/mul_1:z:0conv3d_transpose_42/mul_2:z:0$conv3d_transpose_42/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_42/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_42_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0П
$conv3d_transpose_42/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_42/stack:output:0;conv3d_transpose_42/conv3d_transpose/ReadVariableOp:value:0conv3d_287/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*conv3d_transpose_42/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0т
conv3d_transpose_42/BiasAddBiasAdd-conv3d_transpose_42/conv3d_transpose:output:02conv3d_transpose_42/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_288/Conv3D/ReadVariableOpReadVariableOp)conv3d_288_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0э
conv3d_288/Conv3DConv3D$conv3d_transpose_42/BiasAdd:output:0(conv3d_288/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_288/BiasAdd/ReadVariableOpReadVariableOp*conv3d_288_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_288/BiasAddBiasAddconv3d_288/Conv3D:output:0)conv3d_288/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_288/ReluReluconv3d_288/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ \
concatenate_42/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_42/concatConcatV2conv3d_273/Relu:activations:0conv3d_288/Relu:activations:0#concatenate_42/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_289/Conv3D/ReadVariableOpReadVariableOp)conv3d_289_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0ч
conv3d_289/Conv3DConv3Dconcatenate_42/concat:output:0(conv3d_289/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_289/BiasAdd/ReadVariableOpReadVariableOp*conv3d_289_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_289/BiasAddBiasAddconv3d_289/Conv3D:output:0)conv3d_289/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_289/ReluReluconv3d_289/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_290/Conv3D/ReadVariableOpReadVariableOp)conv3d_290_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_290/Conv3DConv3Dconv3d_289/Relu:activations:0(conv3d_290/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_290/BiasAdd/ReadVariableOpReadVariableOp*conv3d_290_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_290/BiasAddBiasAddconv3d_290/Conv3D:output:0)conv3d_290/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_290/ReluReluconv3d_290/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_291/Conv3D/ReadVariableOpReadVariableOp)conv3d_291_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_291/Conv3DConv3Dconv3d_290/Relu:activations:0(conv3d_291/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_291/BiasAdd/ReadVariableOpReadVariableOp*conv3d_291_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_291/BiasAddBiasAddconv3d_291/Conv3D:output:0)conv3d_291/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_291/ReluReluconv3d_291/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ f
conv3d_transpose_43/ShapeShapeconv3d_291/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_43/strided_sliceStridedSlice"conv3d_transpose_43/Shape:output:00conv3d_transpose_43/strided_slice/stack:output:02conv3d_transpose_43/strided_slice/stack_1:output:02conv3d_transpose_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_43/strided_slice_1StridedSlice"conv3d_transpose_43/Shape:output:02conv3d_transpose_43/strided_slice_1/stack:output:04conv3d_transpose_43/strided_slice_1/stack_1:output:04conv3d_transpose_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_43/strided_slice_2StridedSlice"conv3d_transpose_43/Shape:output:02conv3d_transpose_43/strided_slice_2/stack:output:04conv3d_transpose_43/strided_slice_2/stack_1:output:04conv3d_transpose_43/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_43/strided_slice_3StridedSlice"conv3d_transpose_43/Shape:output:02conv3d_transpose_43/strided_slice_3/stack:output:04conv3d_transpose_43/strided_slice_3/stack_1:output:04conv3d_transpose_43/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_43/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_43/mulMul,conv3d_transpose_43/strided_slice_1:output:0"conv3d_transpose_43/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_43/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_43/mul_1Mul,conv3d_transpose_43/strided_slice_2:output:0$conv3d_transpose_43/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_43/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_43/mul_2Mul,conv3d_transpose_43/strided_slice_3:output:0$conv3d_transpose_43/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_43/stack/4Const*
_output_shapes
: *
dtype0*
value	B :ќ
conv3d_transpose_43/stackPack*conv3d_transpose_43/strided_slice:output:0conv3d_transpose_43/mul:z:0conv3d_transpose_43/mul_1:z:0conv3d_transpose_43/mul_2:z:0$conv3d_transpose_43/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_43/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_43_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0П
$conv3d_transpose_43/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_43/stack:output:0;conv3d_transpose_43/conv3d_transpose/ReadVariableOp:value:0conv3d_291/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*conv3d_transpose_43/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0т
conv3d_transpose_43/BiasAddBiasAdd-conv3d_transpose_43/conv3d_transpose:output:02conv3d_transpose_43/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_292/Conv3D/ReadVariableOpReadVariableOp)conv3d_292_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_292/Conv3DConv3D$conv3d_transpose_43/BiasAdd:output:0(conv3d_292/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_292/BiasAdd/ReadVariableOpReadVariableOp*conv3d_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_292/BiasAddBiasAddconv3d_292/Conv3D:output:0)conv3d_292/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_292/ReluReluconv3d_292/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_43/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_43/concatConcatV2conv3d_271/Relu:activations:0conv3d_292/Relu:activations:0#concatenate_43/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_293/Conv3D/ReadVariableOpReadVariableOp)conv3d_293_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ч
conv3d_293/Conv3DConv3Dconcatenate_43/concat:output:0(conv3d_293/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_293/BiasAdd/ReadVariableOpReadVariableOp*conv3d_293_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_293/BiasAddBiasAddconv3d_293/Conv3D:output:0)conv3d_293/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_293/ReluReluconv3d_293/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_294/Conv3D/ReadVariableOpReadVariableOp)conv3d_294_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_294/Conv3DConv3Dconv3d_293/Relu:activations:0(conv3d_294/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_294/BiasAdd/ReadVariableOpReadVariableOp*conv3d_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_294/BiasAddBiasAddconv3d_294/Conv3D:output:0)conv3d_294/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_294/ReluReluconv3d_294/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_295/Conv3D/ReadVariableOpReadVariableOp)conv3d_295_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_295/Conv3DConv3Dconv3d_294/Relu:activations:0(conv3d_295/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_295/BiasAdd/ReadVariableOpReadVariableOp*conv3d_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_295/BiasAddBiasAddconv3d_295/Conv3D:output:0)conv3d_295/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_295/ReluReluconv3d_295/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ~
!cropping3d_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
#cropping3d_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
#cropping3d_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               к
cropping3d_10/strided_sliceStridedSliceconv3d_295/Relu:activations:0*cropping3d_10/strided_slice/stack:output:0,cropping3d_10/strided_slice/stack_1:output:0,cropping3d_10/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
 conv3d_296/Conv3D/ReadVariableOpReadVariableOp)conv3d_296_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_296/Conv3DConv3D$cropping3d_10/strided_slice:output:0(conv3d_296/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_296/BiasAdd/ReadVariableOpReadVariableOp*conv3d_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_296/BiasAddBiasAddconv3d_296/Conv3D:output:0)conv3d_296/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconv3d_296/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЯ
NoOpNoOp"^conv3d_270/BiasAdd/ReadVariableOp!^conv3d_270/Conv3D/ReadVariableOp"^conv3d_271/BiasAdd/ReadVariableOp!^conv3d_271/Conv3D/ReadVariableOp"^conv3d_272/BiasAdd/ReadVariableOp!^conv3d_272/Conv3D/ReadVariableOp"^conv3d_273/BiasAdd/ReadVariableOp!^conv3d_273/Conv3D/ReadVariableOp"^conv3d_274/BiasAdd/ReadVariableOp!^conv3d_274/Conv3D/ReadVariableOp"^conv3d_275/BiasAdd/ReadVariableOp!^conv3d_275/Conv3D/ReadVariableOp"^conv3d_276/BiasAdd/ReadVariableOp!^conv3d_276/Conv3D/ReadVariableOp"^conv3d_277/BiasAdd/ReadVariableOp!^conv3d_277/Conv3D/ReadVariableOp"^conv3d_278/BiasAdd/ReadVariableOp!^conv3d_278/Conv3D/ReadVariableOp"^conv3d_279/BiasAdd/ReadVariableOp!^conv3d_279/Conv3D/ReadVariableOp"^conv3d_280/BiasAdd/ReadVariableOp!^conv3d_280/Conv3D/ReadVariableOp"^conv3d_281/BiasAdd/ReadVariableOp!^conv3d_281/Conv3D/ReadVariableOp"^conv3d_282/BiasAdd/ReadVariableOp!^conv3d_282/Conv3D/ReadVariableOp"^conv3d_283/BiasAdd/ReadVariableOp!^conv3d_283/Conv3D/ReadVariableOp"^conv3d_284/BiasAdd/ReadVariableOp!^conv3d_284/Conv3D/ReadVariableOp"^conv3d_285/BiasAdd/ReadVariableOp!^conv3d_285/Conv3D/ReadVariableOp"^conv3d_286/BiasAdd/ReadVariableOp!^conv3d_286/Conv3D/ReadVariableOp"^conv3d_287/BiasAdd/ReadVariableOp!^conv3d_287/Conv3D/ReadVariableOp"^conv3d_288/BiasAdd/ReadVariableOp!^conv3d_288/Conv3D/ReadVariableOp"^conv3d_289/BiasAdd/ReadVariableOp!^conv3d_289/Conv3D/ReadVariableOp"^conv3d_290/BiasAdd/ReadVariableOp!^conv3d_290/Conv3D/ReadVariableOp"^conv3d_291/BiasAdd/ReadVariableOp!^conv3d_291/Conv3D/ReadVariableOp"^conv3d_292/BiasAdd/ReadVariableOp!^conv3d_292/Conv3D/ReadVariableOp"^conv3d_293/BiasAdd/ReadVariableOp!^conv3d_293/Conv3D/ReadVariableOp"^conv3d_294/BiasAdd/ReadVariableOp!^conv3d_294/Conv3D/ReadVariableOp"^conv3d_295/BiasAdd/ReadVariableOp!^conv3d_295/Conv3D/ReadVariableOp"^conv3d_296/BiasAdd/ReadVariableOp!^conv3d_296/Conv3D/ReadVariableOp+^conv3d_transpose_40/BiasAdd/ReadVariableOp4^conv3d_transpose_40/conv3d_transpose/ReadVariableOp+^conv3d_transpose_41/BiasAdd/ReadVariableOp4^conv3d_transpose_41/conv3d_transpose/ReadVariableOp+^conv3d_transpose_42/BiasAdd/ReadVariableOp4^conv3d_transpose_42/conv3d_transpose/ReadVariableOp+^conv3d_transpose_43/BiasAdd/ReadVariableOp4^conv3d_transpose_43/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_270/BiasAdd/ReadVariableOp!conv3d_270/BiasAdd/ReadVariableOp2D
 conv3d_270/Conv3D/ReadVariableOp conv3d_270/Conv3D/ReadVariableOp2F
!conv3d_271/BiasAdd/ReadVariableOp!conv3d_271/BiasAdd/ReadVariableOp2D
 conv3d_271/Conv3D/ReadVariableOp conv3d_271/Conv3D/ReadVariableOp2F
!conv3d_272/BiasAdd/ReadVariableOp!conv3d_272/BiasAdd/ReadVariableOp2D
 conv3d_272/Conv3D/ReadVariableOp conv3d_272/Conv3D/ReadVariableOp2F
!conv3d_273/BiasAdd/ReadVariableOp!conv3d_273/BiasAdd/ReadVariableOp2D
 conv3d_273/Conv3D/ReadVariableOp conv3d_273/Conv3D/ReadVariableOp2F
!conv3d_274/BiasAdd/ReadVariableOp!conv3d_274/BiasAdd/ReadVariableOp2D
 conv3d_274/Conv3D/ReadVariableOp conv3d_274/Conv3D/ReadVariableOp2F
!conv3d_275/BiasAdd/ReadVariableOp!conv3d_275/BiasAdd/ReadVariableOp2D
 conv3d_275/Conv3D/ReadVariableOp conv3d_275/Conv3D/ReadVariableOp2F
!conv3d_276/BiasAdd/ReadVariableOp!conv3d_276/BiasAdd/ReadVariableOp2D
 conv3d_276/Conv3D/ReadVariableOp conv3d_276/Conv3D/ReadVariableOp2F
!conv3d_277/BiasAdd/ReadVariableOp!conv3d_277/BiasAdd/ReadVariableOp2D
 conv3d_277/Conv3D/ReadVariableOp conv3d_277/Conv3D/ReadVariableOp2F
!conv3d_278/BiasAdd/ReadVariableOp!conv3d_278/BiasAdd/ReadVariableOp2D
 conv3d_278/Conv3D/ReadVariableOp conv3d_278/Conv3D/ReadVariableOp2F
!conv3d_279/BiasAdd/ReadVariableOp!conv3d_279/BiasAdd/ReadVariableOp2D
 conv3d_279/Conv3D/ReadVariableOp conv3d_279/Conv3D/ReadVariableOp2F
!conv3d_280/BiasAdd/ReadVariableOp!conv3d_280/BiasAdd/ReadVariableOp2D
 conv3d_280/Conv3D/ReadVariableOp conv3d_280/Conv3D/ReadVariableOp2F
!conv3d_281/BiasAdd/ReadVariableOp!conv3d_281/BiasAdd/ReadVariableOp2D
 conv3d_281/Conv3D/ReadVariableOp conv3d_281/Conv3D/ReadVariableOp2F
!conv3d_282/BiasAdd/ReadVariableOp!conv3d_282/BiasAdd/ReadVariableOp2D
 conv3d_282/Conv3D/ReadVariableOp conv3d_282/Conv3D/ReadVariableOp2F
!conv3d_283/BiasAdd/ReadVariableOp!conv3d_283/BiasAdd/ReadVariableOp2D
 conv3d_283/Conv3D/ReadVariableOp conv3d_283/Conv3D/ReadVariableOp2F
!conv3d_284/BiasAdd/ReadVariableOp!conv3d_284/BiasAdd/ReadVariableOp2D
 conv3d_284/Conv3D/ReadVariableOp conv3d_284/Conv3D/ReadVariableOp2F
!conv3d_285/BiasAdd/ReadVariableOp!conv3d_285/BiasAdd/ReadVariableOp2D
 conv3d_285/Conv3D/ReadVariableOp conv3d_285/Conv3D/ReadVariableOp2F
!conv3d_286/BiasAdd/ReadVariableOp!conv3d_286/BiasAdd/ReadVariableOp2D
 conv3d_286/Conv3D/ReadVariableOp conv3d_286/Conv3D/ReadVariableOp2F
!conv3d_287/BiasAdd/ReadVariableOp!conv3d_287/BiasAdd/ReadVariableOp2D
 conv3d_287/Conv3D/ReadVariableOp conv3d_287/Conv3D/ReadVariableOp2F
!conv3d_288/BiasAdd/ReadVariableOp!conv3d_288/BiasAdd/ReadVariableOp2D
 conv3d_288/Conv3D/ReadVariableOp conv3d_288/Conv3D/ReadVariableOp2F
!conv3d_289/BiasAdd/ReadVariableOp!conv3d_289/BiasAdd/ReadVariableOp2D
 conv3d_289/Conv3D/ReadVariableOp conv3d_289/Conv3D/ReadVariableOp2F
!conv3d_290/BiasAdd/ReadVariableOp!conv3d_290/BiasAdd/ReadVariableOp2D
 conv3d_290/Conv3D/ReadVariableOp conv3d_290/Conv3D/ReadVariableOp2F
!conv3d_291/BiasAdd/ReadVariableOp!conv3d_291/BiasAdd/ReadVariableOp2D
 conv3d_291/Conv3D/ReadVariableOp conv3d_291/Conv3D/ReadVariableOp2F
!conv3d_292/BiasAdd/ReadVariableOp!conv3d_292/BiasAdd/ReadVariableOp2D
 conv3d_292/Conv3D/ReadVariableOp conv3d_292/Conv3D/ReadVariableOp2F
!conv3d_293/BiasAdd/ReadVariableOp!conv3d_293/BiasAdd/ReadVariableOp2D
 conv3d_293/Conv3D/ReadVariableOp conv3d_293/Conv3D/ReadVariableOp2F
!conv3d_294/BiasAdd/ReadVariableOp!conv3d_294/BiasAdd/ReadVariableOp2D
 conv3d_294/Conv3D/ReadVariableOp conv3d_294/Conv3D/ReadVariableOp2F
!conv3d_295/BiasAdd/ReadVariableOp!conv3d_295/BiasAdd/ReadVariableOp2D
 conv3d_295/Conv3D/ReadVariableOp conv3d_295/Conv3D/ReadVariableOp2F
!conv3d_296/BiasAdd/ReadVariableOp!conv3d_296/BiasAdd/ReadVariableOp2D
 conv3d_296/Conv3D/ReadVariableOp conv3d_296/Conv3D/ReadVariableOp2X
*conv3d_transpose_40/BiasAdd/ReadVariableOp*conv3d_transpose_40/BiasAdd/ReadVariableOp2j
3conv3d_transpose_40/conv3d_transpose/ReadVariableOp3conv3d_transpose_40/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_41/BiasAdd/ReadVariableOp*conv3d_transpose_41/BiasAdd/ReadVariableOp2j
3conv3d_transpose_41/conv3d_transpose/ReadVariableOp3conv3d_transpose_41/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_42/BiasAdd/ReadVariableOp*conv3d_transpose_42/BiasAdd/ReadVariableOp2j
3conv3d_transpose_42/conv3d_transpose/ReadVariableOp3conv3d_transpose_42/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_43/BiasAdd/ReadVariableOp*conv3d_transpose_43/BiasAdd/ReadVariableOp2j
3conv3d_transpose_43/conv3d_transpose/ReadVariableOp3conv3d_transpose_43/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к
h
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_329472

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
F__inference_conv3d_288_layer_call_and_return_conditional_losses_333233

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
F__inference_conv3d_275_layer_call_and_return_conditional_losses_332789

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
+__inference_conv3d_282_layer_call_fn_333001

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
F__inference_conv3d_282_layer_call_and_return_conditional_losses_329957
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
ж"
 
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_333213

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
Ы

F__inference_conv3d_284_layer_call_and_return_conditional_losses_329996

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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_330203

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
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_333456

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
)__inference_model_10_layer_call_fn_330371
input_11%
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
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_10_layer_call_and_return_conditional_losses_330244
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
input_11
і
І
+__inference_conv3d_276_layer_call_fn_332808

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
F__inference_conv3d_276_layer_call_and_return_conditional_losses_329840
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
ђ
Є
+__inference_conv3d_288_layer_call_fn_333222

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
F__inference_conv3d_288_layer_call_and_return_conditional_losses_330078
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
г

F__inference_conv3d_276_layer_call_and_return_conditional_losses_329840

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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_329787

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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_333149

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
F__inference_conv3d_296_layer_call_and_return_conditional_losses_330237

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
Ы

F__inference_conv3d_289_layer_call_and_return_conditional_losses_333266

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
ж"
 
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_333350

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
Е
v
J__inference_concatenate_40_layer_call_and_return_conditional_losses_332972
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
ђ
Є
+__inference_conv3d_272_layer_call_fn_332708

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
F__inference_conv3d_272_layer_call_and_return_conditional_losses_329770
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

[
/__inference_concatenate_43_layer_call_fn_333376
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
J__inference_concatenate_43_layer_call_and_return_conditional_losses_330173
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
Ы

F__inference_conv3d_291_layer_call_and_return_conditional_losses_333306

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
Г 
­
)__inference_model_10_layer_call_fn_331827

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
D__inference_model_10_layer_call_and_return_conditional_losses_330969
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
F__inference_conv3d_290_layer_call_and_return_conditional_losses_330121

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
Ыа
д
D__inference_model_10_layer_call_and_return_conditional_losses_330969

inputs/
conv3d_270_330804:
conv3d_270_330806:/
conv3d_271_330809:
conv3d_271_330811:/
conv3d_272_330815: 
conv3d_272_330817: /
conv3d_273_330820:  
conv3d_273_330822: /
conv3d_274_330826: @
conv3d_274_330828:@/
conv3d_275_330831:@@
conv3d_275_330833:@0
conv3d_276_330837:@ 
conv3d_276_330839:	1
conv3d_277_330842: 
conv3d_277_330844:	1
conv3d_278_330848: 
conv3d_278_330850:	1
conv3d_279_330853: 
conv3d_279_330855:	:
conv3d_transpose_40_330858:)
conv3d_transpose_40_330860:	1
conv3d_280_330863: 
conv3d_280_330865:	1
conv3d_281_330869: 
conv3d_281_330871:	1
conv3d_282_330874: 
conv3d_282_330876:	1
conv3d_283_330879: 
conv3d_283_330881:	9
conv3d_transpose_41_330884:@(
conv3d_transpose_41_330886:@/
conv3d_284_330889:@@
conv3d_284_330891:@0
conv3d_285_330895:@
conv3d_285_330897:@/
conv3d_286_330900:@@
conv3d_286_330902:@/
conv3d_287_330905:@@
conv3d_287_330907:@8
conv3d_transpose_42_330910: @(
conv3d_transpose_42_330912: /
conv3d_288_330915:  
conv3d_288_330917: /
conv3d_289_330921:@ 
conv3d_289_330923: /
conv3d_290_330926:  
conv3d_290_330928: /
conv3d_291_330931:  
conv3d_291_330933: 8
conv3d_transpose_43_330936: (
conv3d_transpose_43_330938:/
conv3d_292_330941:
conv3d_292_330943:/
conv3d_293_330947: 
conv3d_293_330949:/
conv3d_294_330952:
conv3d_294_330954:/
conv3d_295_330957:
conv3d_295_330959:/
conv3d_296_330963:
conv3d_296_330965:
identityЂ"conv3d_270/StatefulPartitionedCallЂ"conv3d_271/StatefulPartitionedCallЂ"conv3d_272/StatefulPartitionedCallЂ"conv3d_273/StatefulPartitionedCallЂ"conv3d_274/StatefulPartitionedCallЂ"conv3d_275/StatefulPartitionedCallЂ"conv3d_276/StatefulPartitionedCallЂ"conv3d_277/StatefulPartitionedCallЂ"conv3d_278/StatefulPartitionedCallЂ"conv3d_279/StatefulPartitionedCallЂ"conv3d_280/StatefulPartitionedCallЂ"conv3d_281/StatefulPartitionedCallЂ"conv3d_282/StatefulPartitionedCallЂ"conv3d_283/StatefulPartitionedCallЂ"conv3d_284/StatefulPartitionedCallЂ"conv3d_285/StatefulPartitionedCallЂ"conv3d_286/StatefulPartitionedCallЂ"conv3d_287/StatefulPartitionedCallЂ"conv3d_288/StatefulPartitionedCallЂ"conv3d_289/StatefulPartitionedCallЂ"conv3d_290/StatefulPartitionedCallЂ"conv3d_291/StatefulPartitionedCallЂ"conv3d_292/StatefulPartitionedCallЂ"conv3d_293/StatefulPartitionedCallЂ"conv3d_294/StatefulPartitionedCallЂ"conv3d_295/StatefulPartitionedCallЂ"conv3d_296/StatefulPartitionedCallЂ+conv3d_transpose_40/StatefulPartitionedCallЂ+conv3d_transpose_41/StatefulPartitionedCallЂ+conv3d_transpose_42/StatefulPartitionedCallЂ+conv3d_transpose_43/StatefulPartitionedCallє
!zero_padding3d_10/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_329460Ц
"conv3d_270/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_10/PartitionedCall:output:0conv3d_270_330804conv3d_270_330806*
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
F__inference_conv3d_270_layer_call_and_return_conditional_losses_329735Ч
"conv3d_271/StatefulPartitionedCallStatefulPartitionedCall+conv3d_270/StatefulPartitionedCall:output:0conv3d_271_330809conv3d_271_330811*
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
F__inference_conv3d_271_layer_call_and_return_conditional_losses_329752
 max_pooling3d_40/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_329472Х
"conv3d_272/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_40/PartitionedCall:output:0conv3d_272_330815conv3d_272_330817*
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
F__inference_conv3d_272_layer_call_and_return_conditional_losses_329770Ч
"conv3d_273/StatefulPartitionedCallStatefulPartitionedCall+conv3d_272/StatefulPartitionedCall:output:0conv3d_273_330820conv3d_273_330822*
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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_329787
 max_pooling3d_41/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_329484Х
"conv3d_274/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_41/PartitionedCall:output:0conv3d_274_330826conv3d_274_330828*
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
F__inference_conv3d_274_layer_call_and_return_conditional_losses_329805Ч
"conv3d_275/StatefulPartitionedCallStatefulPartitionedCall+conv3d_274/StatefulPartitionedCall:output:0conv3d_275_330831conv3d_275_330833*
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
F__inference_conv3d_275_layer_call_and_return_conditional_losses_329822
 max_pooling3d_42/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_329496Ц
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_42/PartitionedCall:output:0conv3d_276_330837conv3d_276_330839*
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
F__inference_conv3d_276_layer_call_and_return_conditional_losses_329840Ш
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0conv3d_277_330842conv3d_277_330844*
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
F__inference_conv3d_277_layer_call_and_return_conditional_losses_329857
 max_pooling3d_43/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_329508Ц
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_43/PartitionedCall:output:0conv3d_278_330848conv3d_278_330850*
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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_329875Ш
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0conv3d_279_330853conv3d_279_330855*
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
F__inference_conv3d_279_layer_call_and_return_conditional_losses_329892ь
+conv3d_transpose_40/StatefulPartitionedCallStatefulPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0conv3d_transpose_40_330858conv3d_transpose_40_330860*
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
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_329556б
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_40/StatefulPartitionedCall:output:0conv3d_280_330863conv3d_280_330865*
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
F__inference_conv3d_280_layer_call_and_return_conditional_losses_329914Т
concatenate_40/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0+conv3d_280/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_40_layer_call_and_return_conditional_losses_329927Ф
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCall'concatenate_40/PartitionedCall:output:0conv3d_281_330869conv3d_281_330871*
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
F__inference_conv3d_281_layer_call_and_return_conditional_losses_329940Ш
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCall+conv3d_281/StatefulPartitionedCall:output:0conv3d_282_330874conv3d_282_330876*
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
F__inference_conv3d_282_layer_call_and_return_conditional_losses_329957Ш
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCall+conv3d_282/StatefulPartitionedCall:output:0conv3d_283_330879conv3d_283_330881*
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
F__inference_conv3d_283_layer_call_and_return_conditional_losses_329974ы
+conv3d_transpose_41/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_transpose_41_330884conv3d_transpose_41_330886*
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
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_329602а
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_41/StatefulPartitionedCall:output:0conv3d_284_330889conv3d_284_330891*
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
F__inference_conv3d_284_layer_call_and_return_conditional_losses_329996Т
concatenate_41/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0+conv3d_284/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_41_layer_call_and_return_conditional_losses_330009У
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall'concatenate_41/PartitionedCall:output:0conv3d_285_330895conv3d_285_330897*
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
F__inference_conv3d_285_layer_call_and_return_conditional_losses_330022Ч
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0conv3d_286_330900conv3d_286_330902*
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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_330039Ч
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCall+conv3d_286/StatefulPartitionedCall:output:0conv3d_287_330905conv3d_287_330907*
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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_330056ы
+conv3d_transpose_42/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_transpose_42_330910conv3d_transpose_42_330912*
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
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_329648а
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_42/StatefulPartitionedCall:output:0conv3d_288_330915conv3d_288_330917*
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
F__inference_conv3d_288_layer_call_and_return_conditional_losses_330078С
concatenate_42/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0+conv3d_288/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_42_layer_call_and_return_conditional_losses_330091У
"conv3d_289/StatefulPartitionedCallStatefulPartitionedCall'concatenate_42/PartitionedCall:output:0conv3d_289_330921conv3d_289_330923*
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
F__inference_conv3d_289_layer_call_and_return_conditional_losses_330104Ч
"conv3d_290/StatefulPartitionedCallStatefulPartitionedCall+conv3d_289/StatefulPartitionedCall:output:0conv3d_290_330926conv3d_290_330928*
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
F__inference_conv3d_290_layer_call_and_return_conditional_losses_330121Ч
"conv3d_291/StatefulPartitionedCallStatefulPartitionedCall+conv3d_290/StatefulPartitionedCall:output:0conv3d_291_330931conv3d_291_330933*
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
F__inference_conv3d_291_layer_call_and_return_conditional_losses_330138ы
+conv3d_transpose_43/StatefulPartitionedCallStatefulPartitionedCall+conv3d_291/StatefulPartitionedCall:output:0conv3d_transpose_43_330936conv3d_transpose_43_330938*
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
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_329694а
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_43/StatefulPartitionedCall:output:0conv3d_292_330941conv3d_292_330943*
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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_330160С
concatenate_43/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0+conv3d_292/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_43_layer_call_and_return_conditional_losses_330173У
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCall'concatenate_43/PartitionedCall:output:0conv3d_293_330947conv3d_293_330949*
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
F__inference_conv3d_293_layer_call_and_return_conditional_losses_330186Ч
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0conv3d_294_330952conv3d_294_330954*
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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_330203Ч
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0conv3d_295_330957conv3d_295_330959*
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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_330220
cropping3d_10/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_329713Т
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_10/PartitionedCall:output:0conv3d_296_330963conv3d_296_330965*
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
F__inference_conv3d_296_layer_call_and_return_conditional_losses_330237Ё
IdentityIdentity+conv3d_296/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_270/StatefulPartitionedCall#^conv3d_271/StatefulPartitionedCall#^conv3d_272/StatefulPartitionedCall#^conv3d_273/StatefulPartitionedCall#^conv3d_274/StatefulPartitionedCall#^conv3d_275/StatefulPartitionedCall#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall#^conv3d_289/StatefulPartitionedCall#^conv3d_290/StatefulPartitionedCall#^conv3d_291/StatefulPartitionedCall#^conv3d_292/StatefulPartitionedCall#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall,^conv3d_transpose_40/StatefulPartitionedCall,^conv3d_transpose_41/StatefulPartitionedCall,^conv3d_transpose_42/StatefulPartitionedCall,^conv3d_transpose_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_270/StatefulPartitionedCall"conv3d_270/StatefulPartitionedCall2H
"conv3d_271/StatefulPartitionedCall"conv3d_271/StatefulPartitionedCall2H
"conv3d_272/StatefulPartitionedCall"conv3d_272/StatefulPartitionedCall2H
"conv3d_273/StatefulPartitionedCall"conv3d_273/StatefulPartitionedCall2H
"conv3d_274/StatefulPartitionedCall"conv3d_274/StatefulPartitionedCall2H
"conv3d_275/StatefulPartitionedCall"conv3d_275/StatefulPartitionedCall2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2H
"conv3d_289/StatefulPartitionedCall"conv3d_289/StatefulPartitionedCall2H
"conv3d_290/StatefulPartitionedCall"conv3d_290/StatefulPartitionedCall2H
"conv3d_291/StatefulPartitionedCall"conv3d_291/StatefulPartitionedCall2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2Z
+conv3d_transpose_40/StatefulPartitionedCall+conv3d_transpose_40/StatefulPartitionedCall2Z
+conv3d_transpose_41/StatefulPartitionedCall+conv3d_transpose_41/StatefulPartitionedCall2Z
+conv3d_transpose_42/StatefulPartitionedCall+conv3d_transpose_42/StatefulPartitionedCall2Z
+conv3d_transpose_43/StatefulPartitionedCall+conv3d_transpose_43/StatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_283_layer_call_and_return_conditional_losses_329974

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
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_329484

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
Ыа
д
D__inference_model_10_layer_call_and_return_conditional_losses_330244

inputs/
conv3d_270_329736:
conv3d_270_329738:/
conv3d_271_329753:
conv3d_271_329755:/
conv3d_272_329771: 
conv3d_272_329773: /
conv3d_273_329788:  
conv3d_273_329790: /
conv3d_274_329806: @
conv3d_274_329808:@/
conv3d_275_329823:@@
conv3d_275_329825:@0
conv3d_276_329841:@ 
conv3d_276_329843:	1
conv3d_277_329858: 
conv3d_277_329860:	1
conv3d_278_329876: 
conv3d_278_329878:	1
conv3d_279_329893: 
conv3d_279_329895:	:
conv3d_transpose_40_329898:)
conv3d_transpose_40_329900:	1
conv3d_280_329915: 
conv3d_280_329917:	1
conv3d_281_329941: 
conv3d_281_329943:	1
conv3d_282_329958: 
conv3d_282_329960:	1
conv3d_283_329975: 
conv3d_283_329977:	9
conv3d_transpose_41_329980:@(
conv3d_transpose_41_329982:@/
conv3d_284_329997:@@
conv3d_284_329999:@0
conv3d_285_330023:@
conv3d_285_330025:@/
conv3d_286_330040:@@
conv3d_286_330042:@/
conv3d_287_330057:@@
conv3d_287_330059:@8
conv3d_transpose_42_330062: @(
conv3d_transpose_42_330064: /
conv3d_288_330079:  
conv3d_288_330081: /
conv3d_289_330105:@ 
conv3d_289_330107: /
conv3d_290_330122:  
conv3d_290_330124: /
conv3d_291_330139:  
conv3d_291_330141: 8
conv3d_transpose_43_330144: (
conv3d_transpose_43_330146:/
conv3d_292_330161:
conv3d_292_330163:/
conv3d_293_330187: 
conv3d_293_330189:/
conv3d_294_330204:
conv3d_294_330206:/
conv3d_295_330221:
conv3d_295_330223:/
conv3d_296_330238:
conv3d_296_330240:
identityЂ"conv3d_270/StatefulPartitionedCallЂ"conv3d_271/StatefulPartitionedCallЂ"conv3d_272/StatefulPartitionedCallЂ"conv3d_273/StatefulPartitionedCallЂ"conv3d_274/StatefulPartitionedCallЂ"conv3d_275/StatefulPartitionedCallЂ"conv3d_276/StatefulPartitionedCallЂ"conv3d_277/StatefulPartitionedCallЂ"conv3d_278/StatefulPartitionedCallЂ"conv3d_279/StatefulPartitionedCallЂ"conv3d_280/StatefulPartitionedCallЂ"conv3d_281/StatefulPartitionedCallЂ"conv3d_282/StatefulPartitionedCallЂ"conv3d_283/StatefulPartitionedCallЂ"conv3d_284/StatefulPartitionedCallЂ"conv3d_285/StatefulPartitionedCallЂ"conv3d_286/StatefulPartitionedCallЂ"conv3d_287/StatefulPartitionedCallЂ"conv3d_288/StatefulPartitionedCallЂ"conv3d_289/StatefulPartitionedCallЂ"conv3d_290/StatefulPartitionedCallЂ"conv3d_291/StatefulPartitionedCallЂ"conv3d_292/StatefulPartitionedCallЂ"conv3d_293/StatefulPartitionedCallЂ"conv3d_294/StatefulPartitionedCallЂ"conv3d_295/StatefulPartitionedCallЂ"conv3d_296/StatefulPartitionedCallЂ+conv3d_transpose_40/StatefulPartitionedCallЂ+conv3d_transpose_41/StatefulPartitionedCallЂ+conv3d_transpose_42/StatefulPartitionedCallЂ+conv3d_transpose_43/StatefulPartitionedCallє
!zero_padding3d_10/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_329460Ц
"conv3d_270/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_10/PartitionedCall:output:0conv3d_270_329736conv3d_270_329738*
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
F__inference_conv3d_270_layer_call_and_return_conditional_losses_329735Ч
"conv3d_271/StatefulPartitionedCallStatefulPartitionedCall+conv3d_270/StatefulPartitionedCall:output:0conv3d_271_329753conv3d_271_329755*
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
F__inference_conv3d_271_layer_call_and_return_conditional_losses_329752
 max_pooling3d_40/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_329472Х
"conv3d_272/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_40/PartitionedCall:output:0conv3d_272_329771conv3d_272_329773*
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
F__inference_conv3d_272_layer_call_and_return_conditional_losses_329770Ч
"conv3d_273/StatefulPartitionedCallStatefulPartitionedCall+conv3d_272/StatefulPartitionedCall:output:0conv3d_273_329788conv3d_273_329790*
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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_329787
 max_pooling3d_41/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_329484Х
"conv3d_274/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_41/PartitionedCall:output:0conv3d_274_329806conv3d_274_329808*
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
F__inference_conv3d_274_layer_call_and_return_conditional_losses_329805Ч
"conv3d_275/StatefulPartitionedCallStatefulPartitionedCall+conv3d_274/StatefulPartitionedCall:output:0conv3d_275_329823conv3d_275_329825*
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
F__inference_conv3d_275_layer_call_and_return_conditional_losses_329822
 max_pooling3d_42/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_329496Ц
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_42/PartitionedCall:output:0conv3d_276_329841conv3d_276_329843*
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
F__inference_conv3d_276_layer_call_and_return_conditional_losses_329840Ш
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0conv3d_277_329858conv3d_277_329860*
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
F__inference_conv3d_277_layer_call_and_return_conditional_losses_329857
 max_pooling3d_43/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_329508Ц
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_43/PartitionedCall:output:0conv3d_278_329876conv3d_278_329878*
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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_329875Ш
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0conv3d_279_329893conv3d_279_329895*
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
F__inference_conv3d_279_layer_call_and_return_conditional_losses_329892ь
+conv3d_transpose_40/StatefulPartitionedCallStatefulPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0conv3d_transpose_40_329898conv3d_transpose_40_329900*
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
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_329556б
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_40/StatefulPartitionedCall:output:0conv3d_280_329915conv3d_280_329917*
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
F__inference_conv3d_280_layer_call_and_return_conditional_losses_329914Т
concatenate_40/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0+conv3d_280/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_40_layer_call_and_return_conditional_losses_329927Ф
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCall'concatenate_40/PartitionedCall:output:0conv3d_281_329941conv3d_281_329943*
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
F__inference_conv3d_281_layer_call_and_return_conditional_losses_329940Ш
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCall+conv3d_281/StatefulPartitionedCall:output:0conv3d_282_329958conv3d_282_329960*
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
F__inference_conv3d_282_layer_call_and_return_conditional_losses_329957Ш
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCall+conv3d_282/StatefulPartitionedCall:output:0conv3d_283_329975conv3d_283_329977*
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
F__inference_conv3d_283_layer_call_and_return_conditional_losses_329974ы
+conv3d_transpose_41/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_transpose_41_329980conv3d_transpose_41_329982*
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
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_329602а
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_41/StatefulPartitionedCall:output:0conv3d_284_329997conv3d_284_329999*
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
F__inference_conv3d_284_layer_call_and_return_conditional_losses_329996Т
concatenate_41/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0+conv3d_284/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_41_layer_call_and_return_conditional_losses_330009У
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall'concatenate_41/PartitionedCall:output:0conv3d_285_330023conv3d_285_330025*
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
F__inference_conv3d_285_layer_call_and_return_conditional_losses_330022Ч
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0conv3d_286_330040conv3d_286_330042*
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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_330039Ч
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCall+conv3d_286/StatefulPartitionedCall:output:0conv3d_287_330057conv3d_287_330059*
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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_330056ы
+conv3d_transpose_42/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_transpose_42_330062conv3d_transpose_42_330064*
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
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_329648а
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_42/StatefulPartitionedCall:output:0conv3d_288_330079conv3d_288_330081*
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
F__inference_conv3d_288_layer_call_and_return_conditional_losses_330078С
concatenate_42/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0+conv3d_288/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_42_layer_call_and_return_conditional_losses_330091У
"conv3d_289/StatefulPartitionedCallStatefulPartitionedCall'concatenate_42/PartitionedCall:output:0conv3d_289_330105conv3d_289_330107*
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
F__inference_conv3d_289_layer_call_and_return_conditional_losses_330104Ч
"conv3d_290/StatefulPartitionedCallStatefulPartitionedCall+conv3d_289/StatefulPartitionedCall:output:0conv3d_290_330122conv3d_290_330124*
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
F__inference_conv3d_290_layer_call_and_return_conditional_losses_330121Ч
"conv3d_291/StatefulPartitionedCallStatefulPartitionedCall+conv3d_290/StatefulPartitionedCall:output:0conv3d_291_330139conv3d_291_330141*
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
F__inference_conv3d_291_layer_call_and_return_conditional_losses_330138ы
+conv3d_transpose_43/StatefulPartitionedCallStatefulPartitionedCall+conv3d_291/StatefulPartitionedCall:output:0conv3d_transpose_43_330144conv3d_transpose_43_330146*
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
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_329694а
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_43/StatefulPartitionedCall:output:0conv3d_292_330161conv3d_292_330163*
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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_330160С
concatenate_43/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0+conv3d_292/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_43_layer_call_and_return_conditional_losses_330173У
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCall'concatenate_43/PartitionedCall:output:0conv3d_293_330187conv3d_293_330189*
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
F__inference_conv3d_293_layer_call_and_return_conditional_losses_330186Ч
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0conv3d_294_330204conv3d_294_330206*
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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_330203Ч
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0conv3d_295_330221conv3d_295_330223*
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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_330220
cropping3d_10/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_329713Т
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_10/PartitionedCall:output:0conv3d_296_330238conv3d_296_330240*
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
F__inference_conv3d_296_layer_call_and_return_conditional_losses_330237Ё
IdentityIdentity+conv3d_296/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_270/StatefulPartitionedCall#^conv3d_271/StatefulPartitionedCall#^conv3d_272/StatefulPartitionedCall#^conv3d_273/StatefulPartitionedCall#^conv3d_274/StatefulPartitionedCall#^conv3d_275/StatefulPartitionedCall#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall#^conv3d_289/StatefulPartitionedCall#^conv3d_290/StatefulPartitionedCall#^conv3d_291/StatefulPartitionedCall#^conv3d_292/StatefulPartitionedCall#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall,^conv3d_transpose_40/StatefulPartitionedCall,^conv3d_transpose_41/StatefulPartitionedCall,^conv3d_transpose_42/StatefulPartitionedCall,^conv3d_transpose_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_270/StatefulPartitionedCall"conv3d_270/StatefulPartitionedCall2H
"conv3d_271/StatefulPartitionedCall"conv3d_271/StatefulPartitionedCall2H
"conv3d_272/StatefulPartitionedCall"conv3d_272/StatefulPartitionedCall2H
"conv3d_273/StatefulPartitionedCall"conv3d_273/StatefulPartitionedCall2H
"conv3d_274/StatefulPartitionedCall"conv3d_274/StatefulPartitionedCall2H
"conv3d_275/StatefulPartitionedCall"conv3d_275/StatefulPartitionedCall2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2H
"conv3d_289/StatefulPartitionedCall"conv3d_289/StatefulPartitionedCall2H
"conv3d_290/StatefulPartitionedCall"conv3d_290/StatefulPartitionedCall2H
"conv3d_291/StatefulPartitionedCall"conv3d_291/StatefulPartitionedCall2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2Z
+conv3d_transpose_40/StatefulPartitionedCall+conv3d_transpose_40/StatefulPartitionedCall2Z
+conv3d_transpose_41/StatefulPartitionedCall+conv3d_transpose_41/StatefulPartitionedCall2Z
+conv3d_transpose_42/StatefulPartitionedCall+conv3d_transpose_42/StatefulPartitionedCall2Z
+conv3d_transpose_43/StatefulPartitionedCall+conv3d_transpose_43/StatefulPartitionedCall:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ
Є
+__inference_conv3d_296_layer_call_fn_333465

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
F__inference_conv3d_296_layer_call_and_return_conditional_losses_330237
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
ба
ж
D__inference_model_10_layer_call_and_return_conditional_losses_331394
input_11/
conv3d_270_331229:
conv3d_270_331231:/
conv3d_271_331234:
conv3d_271_331236:/
conv3d_272_331240: 
conv3d_272_331242: /
conv3d_273_331245:  
conv3d_273_331247: /
conv3d_274_331251: @
conv3d_274_331253:@/
conv3d_275_331256:@@
conv3d_275_331258:@0
conv3d_276_331262:@ 
conv3d_276_331264:	1
conv3d_277_331267: 
conv3d_277_331269:	1
conv3d_278_331273: 
conv3d_278_331275:	1
conv3d_279_331278: 
conv3d_279_331280:	:
conv3d_transpose_40_331283:)
conv3d_transpose_40_331285:	1
conv3d_280_331288: 
conv3d_280_331290:	1
conv3d_281_331294: 
conv3d_281_331296:	1
conv3d_282_331299: 
conv3d_282_331301:	1
conv3d_283_331304: 
conv3d_283_331306:	9
conv3d_transpose_41_331309:@(
conv3d_transpose_41_331311:@/
conv3d_284_331314:@@
conv3d_284_331316:@0
conv3d_285_331320:@
conv3d_285_331322:@/
conv3d_286_331325:@@
conv3d_286_331327:@/
conv3d_287_331330:@@
conv3d_287_331332:@8
conv3d_transpose_42_331335: @(
conv3d_transpose_42_331337: /
conv3d_288_331340:  
conv3d_288_331342: /
conv3d_289_331346:@ 
conv3d_289_331348: /
conv3d_290_331351:  
conv3d_290_331353: /
conv3d_291_331356:  
conv3d_291_331358: 8
conv3d_transpose_43_331361: (
conv3d_transpose_43_331363:/
conv3d_292_331366:
conv3d_292_331368:/
conv3d_293_331372: 
conv3d_293_331374:/
conv3d_294_331377:
conv3d_294_331379:/
conv3d_295_331382:
conv3d_295_331384:/
conv3d_296_331388:
conv3d_296_331390:
identityЂ"conv3d_270/StatefulPartitionedCallЂ"conv3d_271/StatefulPartitionedCallЂ"conv3d_272/StatefulPartitionedCallЂ"conv3d_273/StatefulPartitionedCallЂ"conv3d_274/StatefulPartitionedCallЂ"conv3d_275/StatefulPartitionedCallЂ"conv3d_276/StatefulPartitionedCallЂ"conv3d_277/StatefulPartitionedCallЂ"conv3d_278/StatefulPartitionedCallЂ"conv3d_279/StatefulPartitionedCallЂ"conv3d_280/StatefulPartitionedCallЂ"conv3d_281/StatefulPartitionedCallЂ"conv3d_282/StatefulPartitionedCallЂ"conv3d_283/StatefulPartitionedCallЂ"conv3d_284/StatefulPartitionedCallЂ"conv3d_285/StatefulPartitionedCallЂ"conv3d_286/StatefulPartitionedCallЂ"conv3d_287/StatefulPartitionedCallЂ"conv3d_288/StatefulPartitionedCallЂ"conv3d_289/StatefulPartitionedCallЂ"conv3d_290/StatefulPartitionedCallЂ"conv3d_291/StatefulPartitionedCallЂ"conv3d_292/StatefulPartitionedCallЂ"conv3d_293/StatefulPartitionedCallЂ"conv3d_294/StatefulPartitionedCallЂ"conv3d_295/StatefulPartitionedCallЂ"conv3d_296/StatefulPartitionedCallЂ+conv3d_transpose_40/StatefulPartitionedCallЂ+conv3d_transpose_41/StatefulPartitionedCallЂ+conv3d_transpose_42/StatefulPartitionedCallЂ+conv3d_transpose_43/StatefulPartitionedCallі
!zero_padding3d_10/PartitionedCallPartitionedCallinput_11*
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
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_329460Ц
"conv3d_270/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_10/PartitionedCall:output:0conv3d_270_331229conv3d_270_331231*
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
F__inference_conv3d_270_layer_call_and_return_conditional_losses_329735Ч
"conv3d_271/StatefulPartitionedCallStatefulPartitionedCall+conv3d_270/StatefulPartitionedCall:output:0conv3d_271_331234conv3d_271_331236*
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
F__inference_conv3d_271_layer_call_and_return_conditional_losses_329752
 max_pooling3d_40/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_329472Х
"conv3d_272/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_40/PartitionedCall:output:0conv3d_272_331240conv3d_272_331242*
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
F__inference_conv3d_272_layer_call_and_return_conditional_losses_329770Ч
"conv3d_273/StatefulPartitionedCallStatefulPartitionedCall+conv3d_272/StatefulPartitionedCall:output:0conv3d_273_331245conv3d_273_331247*
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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_329787
 max_pooling3d_41/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_329484Х
"conv3d_274/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_41/PartitionedCall:output:0conv3d_274_331251conv3d_274_331253*
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
F__inference_conv3d_274_layer_call_and_return_conditional_losses_329805Ч
"conv3d_275/StatefulPartitionedCallStatefulPartitionedCall+conv3d_274/StatefulPartitionedCall:output:0conv3d_275_331256conv3d_275_331258*
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
F__inference_conv3d_275_layer_call_and_return_conditional_losses_329822
 max_pooling3d_42/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_329496Ц
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_42/PartitionedCall:output:0conv3d_276_331262conv3d_276_331264*
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
F__inference_conv3d_276_layer_call_and_return_conditional_losses_329840Ш
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0conv3d_277_331267conv3d_277_331269*
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
F__inference_conv3d_277_layer_call_and_return_conditional_losses_329857
 max_pooling3d_43/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_329508Ц
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_43/PartitionedCall:output:0conv3d_278_331273conv3d_278_331275*
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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_329875Ш
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0conv3d_279_331278conv3d_279_331280*
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
F__inference_conv3d_279_layer_call_and_return_conditional_losses_329892ь
+conv3d_transpose_40/StatefulPartitionedCallStatefulPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0conv3d_transpose_40_331283conv3d_transpose_40_331285*
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
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_329556б
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_40/StatefulPartitionedCall:output:0conv3d_280_331288conv3d_280_331290*
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
F__inference_conv3d_280_layer_call_and_return_conditional_losses_329914Т
concatenate_40/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0+conv3d_280/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_40_layer_call_and_return_conditional_losses_329927Ф
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCall'concatenate_40/PartitionedCall:output:0conv3d_281_331294conv3d_281_331296*
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
F__inference_conv3d_281_layer_call_and_return_conditional_losses_329940Ш
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCall+conv3d_281/StatefulPartitionedCall:output:0conv3d_282_331299conv3d_282_331301*
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
F__inference_conv3d_282_layer_call_and_return_conditional_losses_329957Ш
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCall+conv3d_282/StatefulPartitionedCall:output:0conv3d_283_331304conv3d_283_331306*
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
F__inference_conv3d_283_layer_call_and_return_conditional_losses_329974ы
+conv3d_transpose_41/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_transpose_41_331309conv3d_transpose_41_331311*
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
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_329602а
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_41/StatefulPartitionedCall:output:0conv3d_284_331314conv3d_284_331316*
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
F__inference_conv3d_284_layer_call_and_return_conditional_losses_329996Т
concatenate_41/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0+conv3d_284/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_41_layer_call_and_return_conditional_losses_330009У
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall'concatenate_41/PartitionedCall:output:0conv3d_285_331320conv3d_285_331322*
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
F__inference_conv3d_285_layer_call_and_return_conditional_losses_330022Ч
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0conv3d_286_331325conv3d_286_331327*
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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_330039Ч
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCall+conv3d_286/StatefulPartitionedCall:output:0conv3d_287_331330conv3d_287_331332*
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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_330056ы
+conv3d_transpose_42/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_transpose_42_331335conv3d_transpose_42_331337*
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
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_329648а
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_42/StatefulPartitionedCall:output:0conv3d_288_331340conv3d_288_331342*
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
F__inference_conv3d_288_layer_call_and_return_conditional_losses_330078С
concatenate_42/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0+conv3d_288/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_42_layer_call_and_return_conditional_losses_330091У
"conv3d_289/StatefulPartitionedCallStatefulPartitionedCall'concatenate_42/PartitionedCall:output:0conv3d_289_331346conv3d_289_331348*
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
F__inference_conv3d_289_layer_call_and_return_conditional_losses_330104Ч
"conv3d_290/StatefulPartitionedCallStatefulPartitionedCall+conv3d_289/StatefulPartitionedCall:output:0conv3d_290_331351conv3d_290_331353*
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
F__inference_conv3d_290_layer_call_and_return_conditional_losses_330121Ч
"conv3d_291/StatefulPartitionedCallStatefulPartitionedCall+conv3d_290/StatefulPartitionedCall:output:0conv3d_291_331356conv3d_291_331358*
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
F__inference_conv3d_291_layer_call_and_return_conditional_losses_330138ы
+conv3d_transpose_43/StatefulPartitionedCallStatefulPartitionedCall+conv3d_291/StatefulPartitionedCall:output:0conv3d_transpose_43_331361conv3d_transpose_43_331363*
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
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_329694а
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_43/StatefulPartitionedCall:output:0conv3d_292_331366conv3d_292_331368*
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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_330160С
concatenate_43/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0+conv3d_292/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_43_layer_call_and_return_conditional_losses_330173У
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCall'concatenate_43/PartitionedCall:output:0conv3d_293_331372conv3d_293_331374*
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
F__inference_conv3d_293_layer_call_and_return_conditional_losses_330186Ч
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0conv3d_294_331377conv3d_294_331379*
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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_330203Ч
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0conv3d_295_331382conv3d_295_331384*
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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_330220
cropping3d_10/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_329713Т
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_10/PartitionedCall:output:0conv3d_296_331388conv3d_296_331390*
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
F__inference_conv3d_296_layer_call_and_return_conditional_losses_330237Ё
IdentityIdentity+conv3d_296/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_270/StatefulPartitionedCall#^conv3d_271/StatefulPartitionedCall#^conv3d_272/StatefulPartitionedCall#^conv3d_273/StatefulPartitionedCall#^conv3d_274/StatefulPartitionedCall#^conv3d_275/StatefulPartitionedCall#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall#^conv3d_289/StatefulPartitionedCall#^conv3d_290/StatefulPartitionedCall#^conv3d_291/StatefulPartitionedCall#^conv3d_292/StatefulPartitionedCall#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall,^conv3d_transpose_40/StatefulPartitionedCall,^conv3d_transpose_41/StatefulPartitionedCall,^conv3d_transpose_42/StatefulPartitionedCall,^conv3d_transpose_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_270/StatefulPartitionedCall"conv3d_270/StatefulPartitionedCall2H
"conv3d_271/StatefulPartitionedCall"conv3d_271/StatefulPartitionedCall2H
"conv3d_272/StatefulPartitionedCall"conv3d_272/StatefulPartitionedCall2H
"conv3d_273/StatefulPartitionedCall"conv3d_273/StatefulPartitionedCall2H
"conv3d_274/StatefulPartitionedCall"conv3d_274/StatefulPartitionedCall2H
"conv3d_275/StatefulPartitionedCall"conv3d_275/StatefulPartitionedCall2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2H
"conv3d_289/StatefulPartitionedCall"conv3d_289/StatefulPartitionedCall2H
"conv3d_290/StatefulPartitionedCall"conv3d_290/StatefulPartitionedCall2H
"conv3d_291/StatefulPartitionedCall"conv3d_291/StatefulPartitionedCall2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2Z
+conv3d_transpose_40/StatefulPartitionedCall+conv3d_transpose_40/StatefulPartitionedCall2Z
+conv3d_transpose_41/StatefulPartitionedCall+conv3d_transpose_41/StatefulPartitionedCall2Z
+conv3d_transpose_42/StatefulPartitionedCall+conv3d_transpose_42/StatefulPartitionedCall2Z
+conv3d_transpose_43/StatefulPartitionedCall+conv3d_transpose_43/StatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_11
ђ
Є
+__inference_conv3d_290_layer_call_fn_333275

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
F__inference_conv3d_290_layer_call_and_return_conditional_losses_330121
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
Я

F__inference_conv3d_285_layer_call_and_return_conditional_losses_333129

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
љ
Ї
+__inference_conv3d_278_layer_call_fn_332858

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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_329875
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
Б
v
J__inference_concatenate_41_layer_call_and_return_conditional_losses_333109
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
F__inference_conv3d_284_layer_call_and_return_conditional_losses_333096

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
Ї
t
J__inference_concatenate_42_layer_call_and_return_conditional_losses_330091

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
Ы

F__inference_conv3d_275_layer_call_and_return_conditional_losses_329822

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
ё
M
1__inference_max_pooling3d_40_layer_call_fn_332694

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
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_329472
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
ба
ж
D__inference_model_10_layer_call_and_return_conditional_losses_331563
input_11/
conv3d_270_331398:
conv3d_270_331400:/
conv3d_271_331403:
conv3d_271_331405:/
conv3d_272_331409: 
conv3d_272_331411: /
conv3d_273_331414:  
conv3d_273_331416: /
conv3d_274_331420: @
conv3d_274_331422:@/
conv3d_275_331425:@@
conv3d_275_331427:@0
conv3d_276_331431:@ 
conv3d_276_331433:	1
conv3d_277_331436: 
conv3d_277_331438:	1
conv3d_278_331442: 
conv3d_278_331444:	1
conv3d_279_331447: 
conv3d_279_331449:	:
conv3d_transpose_40_331452:)
conv3d_transpose_40_331454:	1
conv3d_280_331457: 
conv3d_280_331459:	1
conv3d_281_331463: 
conv3d_281_331465:	1
conv3d_282_331468: 
conv3d_282_331470:	1
conv3d_283_331473: 
conv3d_283_331475:	9
conv3d_transpose_41_331478:@(
conv3d_transpose_41_331480:@/
conv3d_284_331483:@@
conv3d_284_331485:@0
conv3d_285_331489:@
conv3d_285_331491:@/
conv3d_286_331494:@@
conv3d_286_331496:@/
conv3d_287_331499:@@
conv3d_287_331501:@8
conv3d_transpose_42_331504: @(
conv3d_transpose_42_331506: /
conv3d_288_331509:  
conv3d_288_331511: /
conv3d_289_331515:@ 
conv3d_289_331517: /
conv3d_290_331520:  
conv3d_290_331522: /
conv3d_291_331525:  
conv3d_291_331527: 8
conv3d_transpose_43_331530: (
conv3d_transpose_43_331532:/
conv3d_292_331535:
conv3d_292_331537:/
conv3d_293_331541: 
conv3d_293_331543:/
conv3d_294_331546:
conv3d_294_331548:/
conv3d_295_331551:
conv3d_295_331553:/
conv3d_296_331557:
conv3d_296_331559:
identityЂ"conv3d_270/StatefulPartitionedCallЂ"conv3d_271/StatefulPartitionedCallЂ"conv3d_272/StatefulPartitionedCallЂ"conv3d_273/StatefulPartitionedCallЂ"conv3d_274/StatefulPartitionedCallЂ"conv3d_275/StatefulPartitionedCallЂ"conv3d_276/StatefulPartitionedCallЂ"conv3d_277/StatefulPartitionedCallЂ"conv3d_278/StatefulPartitionedCallЂ"conv3d_279/StatefulPartitionedCallЂ"conv3d_280/StatefulPartitionedCallЂ"conv3d_281/StatefulPartitionedCallЂ"conv3d_282/StatefulPartitionedCallЂ"conv3d_283/StatefulPartitionedCallЂ"conv3d_284/StatefulPartitionedCallЂ"conv3d_285/StatefulPartitionedCallЂ"conv3d_286/StatefulPartitionedCallЂ"conv3d_287/StatefulPartitionedCallЂ"conv3d_288/StatefulPartitionedCallЂ"conv3d_289/StatefulPartitionedCallЂ"conv3d_290/StatefulPartitionedCallЂ"conv3d_291/StatefulPartitionedCallЂ"conv3d_292/StatefulPartitionedCallЂ"conv3d_293/StatefulPartitionedCallЂ"conv3d_294/StatefulPartitionedCallЂ"conv3d_295/StatefulPartitionedCallЂ"conv3d_296/StatefulPartitionedCallЂ+conv3d_transpose_40/StatefulPartitionedCallЂ+conv3d_transpose_41/StatefulPartitionedCallЂ+conv3d_transpose_42/StatefulPartitionedCallЂ+conv3d_transpose_43/StatefulPartitionedCallі
!zero_padding3d_10/PartitionedCallPartitionedCallinput_11*
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
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_329460Ц
"conv3d_270/StatefulPartitionedCallStatefulPartitionedCall*zero_padding3d_10/PartitionedCall:output:0conv3d_270_331398conv3d_270_331400*
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
F__inference_conv3d_270_layer_call_and_return_conditional_losses_329735Ч
"conv3d_271/StatefulPartitionedCallStatefulPartitionedCall+conv3d_270/StatefulPartitionedCall:output:0conv3d_271_331403conv3d_271_331405*
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
F__inference_conv3d_271_layer_call_and_return_conditional_losses_329752
 max_pooling3d_40/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_329472Х
"conv3d_272/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_40/PartitionedCall:output:0conv3d_272_331409conv3d_272_331411*
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
F__inference_conv3d_272_layer_call_and_return_conditional_losses_329770Ч
"conv3d_273/StatefulPartitionedCallStatefulPartitionedCall+conv3d_272/StatefulPartitionedCall:output:0conv3d_273_331414conv3d_273_331416*
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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_329787
 max_pooling3d_41/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_329484Х
"conv3d_274/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_41/PartitionedCall:output:0conv3d_274_331420conv3d_274_331422*
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
F__inference_conv3d_274_layer_call_and_return_conditional_losses_329805Ч
"conv3d_275/StatefulPartitionedCallStatefulPartitionedCall+conv3d_274/StatefulPartitionedCall:output:0conv3d_275_331425conv3d_275_331427*
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
F__inference_conv3d_275_layer_call_and_return_conditional_losses_329822
 max_pooling3d_42/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_329496Ц
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_42/PartitionedCall:output:0conv3d_276_331431conv3d_276_331433*
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
F__inference_conv3d_276_layer_call_and_return_conditional_losses_329840Ш
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0conv3d_277_331436conv3d_277_331438*
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
F__inference_conv3d_277_layer_call_and_return_conditional_losses_329857
 max_pooling3d_43/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_329508Ц
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_43/PartitionedCall:output:0conv3d_278_331442conv3d_278_331444*
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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_329875Ш
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0conv3d_279_331447conv3d_279_331449*
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
F__inference_conv3d_279_layer_call_and_return_conditional_losses_329892ь
+conv3d_transpose_40/StatefulPartitionedCallStatefulPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0conv3d_transpose_40_331452conv3d_transpose_40_331454*
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
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_329556б
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_40/StatefulPartitionedCall:output:0conv3d_280_331457conv3d_280_331459*
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
F__inference_conv3d_280_layer_call_and_return_conditional_losses_329914Т
concatenate_40/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0+conv3d_280/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_40_layer_call_and_return_conditional_losses_329927Ф
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCall'concatenate_40/PartitionedCall:output:0conv3d_281_331463conv3d_281_331465*
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
F__inference_conv3d_281_layer_call_and_return_conditional_losses_329940Ш
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCall+conv3d_281/StatefulPartitionedCall:output:0conv3d_282_331468conv3d_282_331470*
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
F__inference_conv3d_282_layer_call_and_return_conditional_losses_329957Ш
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCall+conv3d_282/StatefulPartitionedCall:output:0conv3d_283_331473conv3d_283_331475*
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
F__inference_conv3d_283_layer_call_and_return_conditional_losses_329974ы
+conv3d_transpose_41/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_transpose_41_331478conv3d_transpose_41_331480*
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
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_329602а
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_41/StatefulPartitionedCall:output:0conv3d_284_331483conv3d_284_331485*
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
F__inference_conv3d_284_layer_call_and_return_conditional_losses_329996Т
concatenate_41/PartitionedCallPartitionedCall+conv3d_275/StatefulPartitionedCall:output:0+conv3d_284/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_41_layer_call_and_return_conditional_losses_330009У
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall'concatenate_41/PartitionedCall:output:0conv3d_285_331489conv3d_285_331491*
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
F__inference_conv3d_285_layer_call_and_return_conditional_losses_330022Ч
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0conv3d_286_331494conv3d_286_331496*
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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_330039Ч
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCall+conv3d_286/StatefulPartitionedCall:output:0conv3d_287_331499conv3d_287_331501*
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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_330056ы
+conv3d_transpose_42/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_transpose_42_331504conv3d_transpose_42_331506*
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
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_329648а
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_42/StatefulPartitionedCall:output:0conv3d_288_331509conv3d_288_331511*
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
F__inference_conv3d_288_layer_call_and_return_conditional_losses_330078С
concatenate_42/PartitionedCallPartitionedCall+conv3d_273/StatefulPartitionedCall:output:0+conv3d_288/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_42_layer_call_and_return_conditional_losses_330091У
"conv3d_289/StatefulPartitionedCallStatefulPartitionedCall'concatenate_42/PartitionedCall:output:0conv3d_289_331515conv3d_289_331517*
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
F__inference_conv3d_289_layer_call_and_return_conditional_losses_330104Ч
"conv3d_290/StatefulPartitionedCallStatefulPartitionedCall+conv3d_289/StatefulPartitionedCall:output:0conv3d_290_331520conv3d_290_331522*
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
F__inference_conv3d_290_layer_call_and_return_conditional_losses_330121Ч
"conv3d_291/StatefulPartitionedCallStatefulPartitionedCall+conv3d_290/StatefulPartitionedCall:output:0conv3d_291_331525conv3d_291_331527*
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
F__inference_conv3d_291_layer_call_and_return_conditional_losses_330138ы
+conv3d_transpose_43/StatefulPartitionedCallStatefulPartitionedCall+conv3d_291/StatefulPartitionedCall:output:0conv3d_transpose_43_331530conv3d_transpose_43_331532*
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
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_329694а
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall4conv3d_transpose_43/StatefulPartitionedCall:output:0conv3d_292_331535conv3d_292_331537*
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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_330160С
concatenate_43/PartitionedCallPartitionedCall+conv3d_271/StatefulPartitionedCall:output:0+conv3d_292/StatefulPartitionedCall:output:0*
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
J__inference_concatenate_43_layer_call_and_return_conditional_losses_330173У
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCall'concatenate_43/PartitionedCall:output:0conv3d_293_331541conv3d_293_331543*
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
F__inference_conv3d_293_layer_call_and_return_conditional_losses_330186Ч
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0conv3d_294_331546conv3d_294_331548*
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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_330203Ч
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0conv3d_295_331551conv3d_295_331553*
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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_330220
cropping3d_10/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_329713Т
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall&cropping3d_10/PartitionedCall:output:0conv3d_296_331557conv3d_296_331559*
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
F__inference_conv3d_296_layer_call_and_return_conditional_losses_330237Ё
IdentityIdentity+conv3d_296/StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџх	
NoOpNoOp#^conv3d_270/StatefulPartitionedCall#^conv3d_271/StatefulPartitionedCall#^conv3d_272/StatefulPartitionedCall#^conv3d_273/StatefulPartitionedCall#^conv3d_274/StatefulPartitionedCall#^conv3d_275/StatefulPartitionedCall#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall#^conv3d_289/StatefulPartitionedCall#^conv3d_290/StatefulPartitionedCall#^conv3d_291/StatefulPartitionedCall#^conv3d_292/StatefulPartitionedCall#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall,^conv3d_transpose_40/StatefulPartitionedCall,^conv3d_transpose_41/StatefulPartitionedCall,^conv3d_transpose_42/StatefulPartitionedCall,^conv3d_transpose_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv3d_270/StatefulPartitionedCall"conv3d_270/StatefulPartitionedCall2H
"conv3d_271/StatefulPartitionedCall"conv3d_271/StatefulPartitionedCall2H
"conv3d_272/StatefulPartitionedCall"conv3d_272/StatefulPartitionedCall2H
"conv3d_273/StatefulPartitionedCall"conv3d_273/StatefulPartitionedCall2H
"conv3d_274/StatefulPartitionedCall"conv3d_274/StatefulPartitionedCall2H
"conv3d_275/StatefulPartitionedCall"conv3d_275/StatefulPartitionedCall2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2H
"conv3d_289/StatefulPartitionedCall"conv3d_289/StatefulPartitionedCall2H
"conv3d_290/StatefulPartitionedCall"conv3d_290/StatefulPartitionedCall2H
"conv3d_291/StatefulPartitionedCall"conv3d_291/StatefulPartitionedCall2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2Z
+conv3d_transpose_40/StatefulPartitionedCall+conv3d_transpose_40/StatefulPartitionedCall2Z
+conv3d_transpose_41/StatefulPartitionedCall+conv3d_transpose_41/StatefulPartitionedCall2Z
+conv3d_transpose_42/StatefulPartitionedCall+conv3d_transpose_42/StatefulPartitionedCall2Z
+conv3d_transpose_43/StatefulPartitionedCall+conv3d_transpose_43/StatefulPartitionedCall:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_11
љ
Ї
+__inference_conv3d_277_layer_call_fn_332828

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
F__inference_conv3d_277_layer_call_and_return_conditional_losses_329857
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
љ
Ї
+__inference_conv3d_280_layer_call_fn_332948

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
F__inference_conv3d_280_layer_call_and_return_conditional_losses_329914
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
+__inference_conv3d_284_layer_call_fn_333085

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
F__inference_conv3d_284_layer_call_and_return_conditional_losses_329996
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
+__inference_conv3d_293_layer_call_fn_333392

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
F__inference_conv3d_293_layer_call_and_return_conditional_losses_330186
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
Ѓ
[
/__inference_concatenate_40_layer_call_fn_332965
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
J__inference_concatenate_40_layer_call_and_return_conditional_losses_329927
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
ђ
Є
+__inference_conv3d_271_layer_call_fn_332678

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
F__inference_conv3d_271_layer_call_and_return_conditional_losses_329752
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
Ы

F__inference_conv3d_274_layer_call_and_return_conditional_losses_332769

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
ё
M
1__inference_max_pooling3d_42_layer_call_fn_332794

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
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_329496
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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_330160

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
ѓ
N
2__inference_zero_padding3d_10_layer_call_fn_332643

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
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_329460
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
	
А
4__inference_conv3d_transpose_40_layer_call_fn_332898

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
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_329556
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
к
h
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_332799

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
Ї
t
J__inference_concatenate_43_layer_call_and_return_conditional_losses_330173

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
Ы

F__inference_conv3d_271_layer_call_and_return_conditional_losses_332689

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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_329875

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
ђ
Є
+__inference_conv3d_270_layer_call_fn_332658

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
F__inference_conv3d_270_layer_call_and_return_conditional_losses_329735
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
к
h
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_329496

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
Љи
е3
D__inference_model_10_layer_call_and_return_conditional_losses_332507

inputsG
)conv3d_270_conv3d_readvariableop_resource:8
*conv3d_270_biasadd_readvariableop_resource:G
)conv3d_271_conv3d_readvariableop_resource:8
*conv3d_271_biasadd_readvariableop_resource:G
)conv3d_272_conv3d_readvariableop_resource: 8
*conv3d_272_biasadd_readvariableop_resource: G
)conv3d_273_conv3d_readvariableop_resource:  8
*conv3d_273_biasadd_readvariableop_resource: G
)conv3d_274_conv3d_readvariableop_resource: @8
*conv3d_274_biasadd_readvariableop_resource:@G
)conv3d_275_conv3d_readvariableop_resource:@@8
*conv3d_275_biasadd_readvariableop_resource:@H
)conv3d_276_conv3d_readvariableop_resource:@9
*conv3d_276_biasadd_readvariableop_resource:	I
)conv3d_277_conv3d_readvariableop_resource:9
*conv3d_277_biasadd_readvariableop_resource:	I
)conv3d_278_conv3d_readvariableop_resource:9
*conv3d_278_biasadd_readvariableop_resource:	I
)conv3d_279_conv3d_readvariableop_resource:9
*conv3d_279_biasadd_readvariableop_resource:	\
<conv3d_transpose_40_conv3d_transpose_readvariableop_resource:B
3conv3d_transpose_40_biasadd_readvariableop_resource:	I
)conv3d_280_conv3d_readvariableop_resource:9
*conv3d_280_biasadd_readvariableop_resource:	I
)conv3d_281_conv3d_readvariableop_resource:9
*conv3d_281_biasadd_readvariableop_resource:	I
)conv3d_282_conv3d_readvariableop_resource:9
*conv3d_282_biasadd_readvariableop_resource:	I
)conv3d_283_conv3d_readvariableop_resource:9
*conv3d_283_biasadd_readvariableop_resource:	[
<conv3d_transpose_41_conv3d_transpose_readvariableop_resource:@A
3conv3d_transpose_41_biasadd_readvariableop_resource:@G
)conv3d_284_conv3d_readvariableop_resource:@@8
*conv3d_284_biasadd_readvariableop_resource:@H
)conv3d_285_conv3d_readvariableop_resource:@8
*conv3d_285_biasadd_readvariableop_resource:@G
)conv3d_286_conv3d_readvariableop_resource:@@8
*conv3d_286_biasadd_readvariableop_resource:@G
)conv3d_287_conv3d_readvariableop_resource:@@8
*conv3d_287_biasadd_readvariableop_resource:@Z
<conv3d_transpose_42_conv3d_transpose_readvariableop_resource: @A
3conv3d_transpose_42_biasadd_readvariableop_resource: G
)conv3d_288_conv3d_readvariableop_resource:  8
*conv3d_288_biasadd_readvariableop_resource: G
)conv3d_289_conv3d_readvariableop_resource:@ 8
*conv3d_289_biasadd_readvariableop_resource: G
)conv3d_290_conv3d_readvariableop_resource:  8
*conv3d_290_biasadd_readvariableop_resource: G
)conv3d_291_conv3d_readvariableop_resource:  8
*conv3d_291_biasadd_readvariableop_resource: Z
<conv3d_transpose_43_conv3d_transpose_readvariableop_resource: A
3conv3d_transpose_43_biasadd_readvariableop_resource:G
)conv3d_292_conv3d_readvariableop_resource:8
*conv3d_292_biasadd_readvariableop_resource:G
)conv3d_293_conv3d_readvariableop_resource: 8
*conv3d_293_biasadd_readvariableop_resource:G
)conv3d_294_conv3d_readvariableop_resource:8
*conv3d_294_biasadd_readvariableop_resource:G
)conv3d_295_conv3d_readvariableop_resource:8
*conv3d_295_biasadd_readvariableop_resource:G
)conv3d_296_conv3d_readvariableop_resource:8
*conv3d_296_biasadd_readvariableop_resource:
identityЂ!conv3d_270/BiasAdd/ReadVariableOpЂ conv3d_270/Conv3D/ReadVariableOpЂ!conv3d_271/BiasAdd/ReadVariableOpЂ conv3d_271/Conv3D/ReadVariableOpЂ!conv3d_272/BiasAdd/ReadVariableOpЂ conv3d_272/Conv3D/ReadVariableOpЂ!conv3d_273/BiasAdd/ReadVariableOpЂ conv3d_273/Conv3D/ReadVariableOpЂ!conv3d_274/BiasAdd/ReadVariableOpЂ conv3d_274/Conv3D/ReadVariableOpЂ!conv3d_275/BiasAdd/ReadVariableOpЂ conv3d_275/Conv3D/ReadVariableOpЂ!conv3d_276/BiasAdd/ReadVariableOpЂ conv3d_276/Conv3D/ReadVariableOpЂ!conv3d_277/BiasAdd/ReadVariableOpЂ conv3d_277/Conv3D/ReadVariableOpЂ!conv3d_278/BiasAdd/ReadVariableOpЂ conv3d_278/Conv3D/ReadVariableOpЂ!conv3d_279/BiasAdd/ReadVariableOpЂ conv3d_279/Conv3D/ReadVariableOpЂ!conv3d_280/BiasAdd/ReadVariableOpЂ conv3d_280/Conv3D/ReadVariableOpЂ!conv3d_281/BiasAdd/ReadVariableOpЂ conv3d_281/Conv3D/ReadVariableOpЂ!conv3d_282/BiasAdd/ReadVariableOpЂ conv3d_282/Conv3D/ReadVariableOpЂ!conv3d_283/BiasAdd/ReadVariableOpЂ conv3d_283/Conv3D/ReadVariableOpЂ!conv3d_284/BiasAdd/ReadVariableOpЂ conv3d_284/Conv3D/ReadVariableOpЂ!conv3d_285/BiasAdd/ReadVariableOpЂ conv3d_285/Conv3D/ReadVariableOpЂ!conv3d_286/BiasAdd/ReadVariableOpЂ conv3d_286/Conv3D/ReadVariableOpЂ!conv3d_287/BiasAdd/ReadVariableOpЂ conv3d_287/Conv3D/ReadVariableOpЂ!conv3d_288/BiasAdd/ReadVariableOpЂ conv3d_288/Conv3D/ReadVariableOpЂ!conv3d_289/BiasAdd/ReadVariableOpЂ conv3d_289/Conv3D/ReadVariableOpЂ!conv3d_290/BiasAdd/ReadVariableOpЂ conv3d_290/Conv3D/ReadVariableOpЂ!conv3d_291/BiasAdd/ReadVariableOpЂ conv3d_291/Conv3D/ReadVariableOpЂ!conv3d_292/BiasAdd/ReadVariableOpЂ conv3d_292/Conv3D/ReadVariableOpЂ!conv3d_293/BiasAdd/ReadVariableOpЂ conv3d_293/Conv3D/ReadVariableOpЂ!conv3d_294/BiasAdd/ReadVariableOpЂ conv3d_294/Conv3D/ReadVariableOpЂ!conv3d_295/BiasAdd/ReadVariableOpЂ conv3d_295/Conv3D/ReadVariableOpЂ!conv3d_296/BiasAdd/ReadVariableOpЂ conv3d_296/Conv3D/ReadVariableOpЂ*conv3d_transpose_40/BiasAdd/ReadVariableOpЂ3conv3d_transpose_40/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_41/BiasAdd/ReadVariableOpЂ3conv3d_transpose_41/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_42/BiasAdd/ReadVariableOpЂ3conv3d_transpose_42/conv3d_transpose/ReadVariableOpЂ*conv3d_transpose_43/BiasAdd/ReadVariableOpЂ3conv3d_transpose_43/conv3d_transpose/ReadVariableOp
zero_padding3d_10/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_10/PadPadinputs'zero_padding3d_10/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_270/Conv3D/ReadVariableOpReadVariableOp)conv3d_270_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ч
conv3d_270/Conv3DConv3Dzero_padding3d_10/Pad:output:0(conv3d_270/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_270/BiasAdd/ReadVariableOpReadVariableOp*conv3d_270_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_270/BiasAddBiasAddconv3d_270/Conv3D:output:0)conv3d_270/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_270/ReluReluconv3d_270/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_271/Conv3D/ReadVariableOpReadVariableOp)conv3d_271_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_271/Conv3DConv3Dconv3d_270/Relu:activations:0(conv3d_271/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_271/BiasAdd/ReadVariableOpReadVariableOp*conv3d_271_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_271/BiasAddBiasAddconv3d_271/Conv3D:output:0)conv3d_271/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_271/ReluReluconv3d_271/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџн
max_pooling3d_40/MaxPool3D	MaxPool3Dconv3d_271/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_272/Conv3D/ReadVariableOpReadVariableOp)conv3d_272_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ь
conv3d_272/Conv3DConv3D#max_pooling3d_40/MaxPool3D:output:0(conv3d_272/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_272/BiasAdd/ReadVariableOpReadVariableOp*conv3d_272_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_272/BiasAddBiasAddconv3d_272/Conv3D:output:0)conv3d_272/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_272/ReluReluconv3d_272/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_273/Conv3D/ReadVariableOpReadVariableOp)conv3d_273_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_273/Conv3DConv3Dconv3d_272/Relu:activations:0(conv3d_273/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_273/BiasAdd/ReadVariableOpReadVariableOp*conv3d_273_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_273/BiasAddBiasAddconv3d_273/Conv3D:output:0)conv3d_273/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_273/ReluReluconv3d_273/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ н
max_pooling3d_41/MaxPool3D	MaxPool3Dconv3d_273/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	

 conv3d_274/Conv3D/ReadVariableOpReadVariableOp)conv3d_274_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0ь
conv3d_274/Conv3DConv3D#max_pooling3d_41/MaxPool3D:output:0(conv3d_274/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_274/BiasAdd/ReadVariableOpReadVariableOp*conv3d_274_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_274/BiasAddBiasAddconv3d_274/Conv3D:output:0)conv3d_274/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_274/ReluReluconv3d_274/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_275/Conv3D/ReadVariableOpReadVariableOp)conv3d_275_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_275/Conv3DConv3Dconv3d_274/Relu:activations:0(conv3d_275/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_275/BiasAdd/ReadVariableOpReadVariableOp*conv3d_275_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_275/BiasAddBiasAddconv3d_275/Conv3D:output:0)conv3d_275/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_275/ReluReluconv3d_275/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@н
max_pooling3d_42/MaxPool3D	MaxPool3Dconv3d_275/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	

 conv3d_276/Conv3D/ReadVariableOpReadVariableOp)conv3d_276_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0э
conv3d_276/Conv3DConv3D#max_pooling3d_42/MaxPool3D:output:0(conv3d_276/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_276/BiasAdd/ReadVariableOpReadVariableOp*conv3d_276_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_276/BiasAddBiasAddconv3d_276/Conv3D:output:0)conv3d_276/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_276/ReluReluconv3d_276/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_277/Conv3D/ReadVariableOpReadVariableOp)conv3d_277_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_277/Conv3DConv3Dconv3d_276/Relu:activations:0(conv3d_277/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_277/BiasAdd/ReadVariableOpReadVariableOp*conv3d_277_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_277/BiasAddBiasAddconv3d_277/Conv3D:output:0)conv3d_277/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_277/ReluReluconv3d_277/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџо
max_pooling3d_43/MaxPool3D	MaxPool3Dconv3d_277/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	

 conv3d_278/Conv3D/ReadVariableOpReadVariableOp)conv3d_278_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0э
conv3d_278/Conv3DConv3D#max_pooling3d_43/MaxPool3D:output:0(conv3d_278/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_278/BiasAdd/ReadVariableOpReadVariableOp*conv3d_278_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_278/BiasAddBiasAddconv3d_278/Conv3D:output:0)conv3d_278/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_278/ReluReluconv3d_278/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_279/Conv3D/ReadVariableOpReadVariableOp)conv3d_279_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_279/Conv3DConv3Dconv3d_278/Relu:activations:0(conv3d_279/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_279/BiasAdd/ReadVariableOpReadVariableOp*conv3d_279_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_279/BiasAddBiasAddconv3d_279/Conv3D:output:0)conv3d_279/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_279/ReluReluconv3d_279/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_40/ShapeShapeconv3d_279/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_40/strided_sliceStridedSlice"conv3d_transpose_40/Shape:output:00conv3d_transpose_40/strided_slice/stack:output:02conv3d_transpose_40/strided_slice/stack_1:output:02conv3d_transpose_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_40/strided_slice_1StridedSlice"conv3d_transpose_40/Shape:output:02conv3d_transpose_40/strided_slice_1/stack:output:04conv3d_transpose_40/strided_slice_1/stack_1:output:04conv3d_transpose_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_40/strided_slice_2StridedSlice"conv3d_transpose_40/Shape:output:02conv3d_transpose_40/strided_slice_2/stack:output:04conv3d_transpose_40/strided_slice_2/stack_1:output:04conv3d_transpose_40/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_40/strided_slice_3StridedSlice"conv3d_transpose_40/Shape:output:02conv3d_transpose_40/strided_slice_3/stack:output:04conv3d_transpose_40/strided_slice_3/stack_1:output:04conv3d_transpose_40/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_40/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_40/mulMul,conv3d_transpose_40/strided_slice_1:output:0"conv3d_transpose_40/mul/y:output:0*
T0*
_output_shapes
: [
conv3d_transpose_40/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_40/addAddV2conv3d_transpose_40/mul:z:0"conv3d_transpose_40/add/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_40/mul_1Mul,conv3d_transpose_40/strided_slice_2:output:0$conv3d_transpose_40/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_40/add_1AddV2conv3d_transpose_40/mul_1:z:0$conv3d_transpose_40/add_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_40/mul_2Mul,conv3d_transpose_40/strided_slice_3:output:0$conv3d_transpose_40/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_40/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv3d_transpose_40/add_2AddV2conv3d_transpose_40/mul_2:z:0$conv3d_transpose_40/add_2/y:output:0*
T0*
_output_shapes
: ^
conv3d_transpose_40/stack/4Const*
_output_shapes
: *
dtype0*
value
B :ќ
conv3d_transpose_40/stackPack*conv3d_transpose_40/strided_slice:output:0conv3d_transpose_40/add:z:0conv3d_transpose_40/add_1:z:0conv3d_transpose_40/add_2:z:0$conv3d_transpose_40/stack/4:output:0*
N*
T0*
_output_shapes
:О
3conv3d_transpose_40/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_40_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0С
$conv3d_transpose_40/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_40/stack:output:0;conv3d_transpose_40/conv3d_transpose/ReadVariableOp:value:0conv3d_279/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	

*conv3d_transpose_40/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0у
conv3d_transpose_40/BiasAddBiasAdd-conv3d_transpose_40/conv3d_transpose:output:02conv3d_transpose_40/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_280/Conv3D/ReadVariableOpReadVariableOp)conv3d_280_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ю
conv3d_280/Conv3DConv3D$conv3d_transpose_40/BiasAdd:output:0(conv3d_280/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_280/BiasAdd/ReadVariableOpReadVariableOp*conv3d_280_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_280/BiasAddBiasAddconv3d_280/Conv3D:output:0)conv3d_280/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_280/ReluReluconv3d_280/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_40/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_40/concatConcatV2conv3d_277/Relu:activations:0conv3d_280/Relu:activations:0#concatenate_40/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_281/Conv3D/ReadVariableOpReadVariableOp)conv3d_281_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ш
conv3d_281/Conv3DConv3Dconcatenate_40/concat:output:0(conv3d_281/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_281/BiasAdd/ReadVariableOpReadVariableOp*conv3d_281_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_281/BiasAddBiasAddconv3d_281/Conv3D:output:0)conv3d_281/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_281/ReluReluconv3d_281/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_282/Conv3D/ReadVariableOpReadVariableOp)conv3d_282_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_282/Conv3DConv3Dconv3d_281/Relu:activations:0(conv3d_282/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_282/BiasAdd/ReadVariableOpReadVariableOp*conv3d_282_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_282/BiasAddBiasAddconv3d_282/Conv3D:output:0)conv3d_282/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_282/ReluReluconv3d_282/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_283/Conv3D/ReadVariableOpReadVariableOp)conv3d_283_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ч
conv3d_283/Conv3DConv3Dconv3d_282/Relu:activations:0(conv3d_283/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_283/BiasAdd/ReadVariableOpReadVariableOp*conv3d_283_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0О
conv3d_283/BiasAddBiasAddconv3d_283/Conv3D:output:0)conv3d_283/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_283/ReluReluconv3d_283/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџf
conv3d_transpose_41/ShapeShapeconv3d_283/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_41/strided_sliceStridedSlice"conv3d_transpose_41/Shape:output:00conv3d_transpose_41/strided_slice/stack:output:02conv3d_transpose_41/strided_slice/stack_1:output:02conv3d_transpose_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_41/strided_slice_1StridedSlice"conv3d_transpose_41/Shape:output:02conv3d_transpose_41/strided_slice_1/stack:output:04conv3d_transpose_41/strided_slice_1/stack_1:output:04conv3d_transpose_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_41/strided_slice_2StridedSlice"conv3d_transpose_41/Shape:output:02conv3d_transpose_41/strided_slice_2/stack:output:04conv3d_transpose_41/strided_slice_2/stack_1:output:04conv3d_transpose_41/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_41/strided_slice_3StridedSlice"conv3d_transpose_41/Shape:output:02conv3d_transpose_41/strided_slice_3/stack:output:04conv3d_transpose_41/strided_slice_3/stack_1:output:04conv3d_transpose_41/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_41/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_41/mulMul,conv3d_transpose_41/strided_slice_1:output:0"conv3d_transpose_41/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_41/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_41/mul_1Mul,conv3d_transpose_41/strided_slice_2:output:0$conv3d_transpose_41/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_41/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_41/mul_2Mul,conv3d_transpose_41/strided_slice_3:output:0$conv3d_transpose_41/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_41/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@ќ
conv3d_transpose_41/stackPack*conv3d_transpose_41/strided_slice:output:0conv3d_transpose_41/mul:z:0conv3d_transpose_41/mul_1:z:0conv3d_transpose_41/mul_2:z:0$conv3d_transpose_41/stack/4:output:0*
N*
T0*
_output_shapes
:Н
3conv3d_transpose_41/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_41_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0П
$conv3d_transpose_41/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_41/stack:output:0;conv3d_transpose_41/conv3d_transpose/ReadVariableOp:value:0conv3d_283/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*conv3d_transpose_41/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0т
conv3d_transpose_41/BiasAddBiasAdd-conv3d_transpose_41/conv3d_transpose:output:02conv3d_transpose_41/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_284/Conv3D/ReadVariableOpReadVariableOp)conv3d_284_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0э
conv3d_284/Conv3DConv3D$conv3d_transpose_41/BiasAdd:output:0(conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_284/BiasAdd/ReadVariableOpReadVariableOp*conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_284/BiasAddBiasAddconv3d_284/Conv3D:output:0)conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_284/ReluReluconv3d_284/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@\
concatenate_41/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatenate_41/concatConcatV2conv3d_275/Relu:activations:0conv3d_284/Relu:activations:0#concatenate_41/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_285/Conv3D/ReadVariableOpReadVariableOp)conv3d_285_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ч
conv3d_285/Conv3DConv3Dconcatenate_41/concat:output:0(conv3d_285/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_285/BiasAdd/ReadVariableOpReadVariableOp*conv3d_285_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_285/BiasAddBiasAddconv3d_285/Conv3D:output:0)conv3d_285/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_285/ReluReluconv3d_285/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_286/Conv3D/ReadVariableOpReadVariableOp)conv3d_286_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_286/Conv3DConv3Dconv3d_285/Relu:activations:0(conv3d_286/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_286/BiasAdd/ReadVariableOpReadVariableOp*conv3d_286_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_286/BiasAddBiasAddconv3d_286/Conv3D:output:0)conv3d_286/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_286/ReluReluconv3d_286/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_287/Conv3D/ReadVariableOpReadVariableOp)conv3d_287_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ц
conv3d_287/Conv3DConv3Dconv3d_286/Relu:activations:0(conv3d_287/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

!conv3d_287/BiasAdd/ReadVariableOpReadVariableOp*conv3d_287_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Н
conv3d_287/BiasAddBiasAddconv3d_287/Conv3D:output:0)conv3d_287/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv3d_287/ReluReluconv3d_287/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@f
conv3d_transpose_42/ShapeShapeconv3d_287/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_42/strided_sliceStridedSlice"conv3d_transpose_42/Shape:output:00conv3d_transpose_42/strided_slice/stack:output:02conv3d_transpose_42/strided_slice/stack_1:output:02conv3d_transpose_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_42/strided_slice_1StridedSlice"conv3d_transpose_42/Shape:output:02conv3d_transpose_42/strided_slice_1/stack:output:04conv3d_transpose_42/strided_slice_1/stack_1:output:04conv3d_transpose_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_42/strided_slice_2StridedSlice"conv3d_transpose_42/Shape:output:02conv3d_transpose_42/strided_slice_2/stack:output:04conv3d_transpose_42/strided_slice_2/stack_1:output:04conv3d_transpose_42/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_42/strided_slice_3StridedSlice"conv3d_transpose_42/Shape:output:02conv3d_transpose_42/strided_slice_3/stack:output:04conv3d_transpose_42/strided_slice_3/stack_1:output:04conv3d_transpose_42/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_42/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_42/mulMul,conv3d_transpose_42/strided_slice_1:output:0"conv3d_transpose_42/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_42/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_42/mul_1Mul,conv3d_transpose_42/strided_slice_2:output:0$conv3d_transpose_42/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_42/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_42/mul_2Mul,conv3d_transpose_42/strided_slice_3:output:0$conv3d_transpose_42/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_42/stack/4Const*
_output_shapes
: *
dtype0*
value	B : ќ
conv3d_transpose_42/stackPack*conv3d_transpose_42/strided_slice:output:0conv3d_transpose_42/mul:z:0conv3d_transpose_42/mul_1:z:0conv3d_transpose_42/mul_2:z:0$conv3d_transpose_42/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_42/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_42_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0П
$conv3d_transpose_42/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_42/stack:output:0;conv3d_transpose_42/conv3d_transpose/ReadVariableOp:value:0conv3d_287/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*conv3d_transpose_42/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0т
conv3d_transpose_42/BiasAddBiasAdd-conv3d_transpose_42/conv3d_transpose:output:02conv3d_transpose_42/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_288/Conv3D/ReadVariableOpReadVariableOp)conv3d_288_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0э
conv3d_288/Conv3DConv3D$conv3d_transpose_42/BiasAdd:output:0(conv3d_288/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_288/BiasAdd/ReadVariableOpReadVariableOp*conv3d_288_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_288/BiasAddBiasAddconv3d_288/Conv3D:output:0)conv3d_288/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_288/ReluReluconv3d_288/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ \
concatenate_42/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_42/concatConcatV2conv3d_273/Relu:activations:0conv3d_288/Relu:activations:0#concatenate_42/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 conv3d_289/Conv3D/ReadVariableOpReadVariableOp)conv3d_289_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0ч
conv3d_289/Conv3DConv3Dconcatenate_42/concat:output:0(conv3d_289/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_289/BiasAdd/ReadVariableOpReadVariableOp*conv3d_289_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_289/BiasAddBiasAddconv3d_289/Conv3D:output:0)conv3d_289/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_289/ReluReluconv3d_289/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_290/Conv3D/ReadVariableOpReadVariableOp)conv3d_290_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_290/Conv3DConv3Dconv3d_289/Relu:activations:0(conv3d_290/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_290/BiasAdd/ReadVariableOpReadVariableOp*conv3d_290_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_290/BiasAddBiasAddconv3d_290/Conv3D:output:0)conv3d_290/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_290/ReluReluconv3d_290/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_291/Conv3D/ReadVariableOpReadVariableOp)conv3d_291_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0ц
conv3d_291/Conv3DConv3Dconv3d_290/Relu:activations:0(conv3d_291/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

!conv3d_291/BiasAdd/ReadVariableOpReadVariableOp*conv3d_291_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Н
conv3d_291/BiasAddBiasAddconv3d_291/Conv3D:output:0)conv3d_291/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv3d_291/ReluReluconv3d_291/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ f
conv3d_transpose_43/ShapeShapeconv3d_291/Relu:activations:0*
T0*
_output_shapes
:q
'conv3d_transpose_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv3d_transpose_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv3d_transpose_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!conv3d_transpose_43/strided_sliceStridedSlice"conv3d_transpose_43/Shape:output:00conv3d_transpose_43/strided_slice/stack:output:02conv3d_transpose_43/strided_slice/stack_1:output:02conv3d_transpose_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_43/strided_slice_1StridedSlice"conv3d_transpose_43/Shape:output:02conv3d_transpose_43/strided_slice_1/stack:output:04conv3d_transpose_43/strided_slice_1/stack_1:output:04conv3d_transpose_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_43/strided_slice_2StridedSlice"conv3d_transpose_43/Shape:output:02conv3d_transpose_43/strided_slice_2/stack:output:04conv3d_transpose_43/strided_slice_2/stack_1:output:04conv3d_transpose_43/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)conv3d_transpose_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv3d_transpose_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
#conv3d_transpose_43/strided_slice_3StridedSlice"conv3d_transpose_43/Shape:output:02conv3d_transpose_43/strided_slice_3/stack:output:04conv3d_transpose_43/strided_slice_3/stack_1:output:04conv3d_transpose_43/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv3d_transpose_43/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_43/mulMul,conv3d_transpose_43/strided_slice_1:output:0"conv3d_transpose_43/mul/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_43/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_43/mul_1Mul,conv3d_transpose_43/strided_slice_2:output:0$conv3d_transpose_43/mul_1/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_43/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
conv3d_transpose_43/mul_2Mul,conv3d_transpose_43/strided_slice_3:output:0$conv3d_transpose_43/mul_2/y:output:0*
T0*
_output_shapes
: ]
conv3d_transpose_43/stack/4Const*
_output_shapes
: *
dtype0*
value	B :ќ
conv3d_transpose_43/stackPack*conv3d_transpose_43/strided_slice:output:0conv3d_transpose_43/mul:z:0conv3d_transpose_43/mul_1:z:0conv3d_transpose_43/mul_2:z:0$conv3d_transpose_43/stack/4:output:0*
N*
T0*
_output_shapes
:М
3conv3d_transpose_43/conv3d_transpose/ReadVariableOpReadVariableOp<conv3d_transpose_43_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0П
$conv3d_transpose_43/conv3d_transposeConv3DBackpropInputV2"conv3d_transpose_43/stack:output:0;conv3d_transpose_43/conv3d_transpose/ReadVariableOp:value:0conv3d_291/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*conv3d_transpose_43/BiasAdd/ReadVariableOpReadVariableOp3conv3d_transpose_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0т
conv3d_transpose_43/BiasAddBiasAdd-conv3d_transpose_43/conv3d_transpose:output:02conv3d_transpose_43/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_292/Conv3D/ReadVariableOpReadVariableOp)conv3d_292_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_292/Conv3DConv3D$conv3d_transpose_43/BiasAdd:output:0(conv3d_292/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_292/BiasAdd/ReadVariableOpReadVariableOp*conv3d_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_292/BiasAddBiasAddconv3d_292/Conv3D:output:0)conv3d_292/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_292/ReluReluconv3d_292/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ\
concatenate_43/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate_43/concatConcatV2conv3d_271/Relu:activations:0conv3d_292/Relu:activations:0#concatenate_43/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 conv3d_293/Conv3D/ReadVariableOpReadVariableOp)conv3d_293_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0ч
conv3d_293/Conv3DConv3Dconcatenate_43/concat:output:0(conv3d_293/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_293/BiasAdd/ReadVariableOpReadVariableOp*conv3d_293_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_293/BiasAddBiasAddconv3d_293/Conv3D:output:0)conv3d_293/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_293/ReluReluconv3d_293/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_294/Conv3D/ReadVariableOpReadVariableOp)conv3d_294_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_294/Conv3DConv3Dconv3d_293/Relu:activations:0(conv3d_294/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_294/BiasAdd/ReadVariableOpReadVariableOp*conv3d_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_294/BiasAddBiasAddconv3d_294/Conv3D:output:0)conv3d_294/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_294/ReluReluconv3d_294/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 conv3d_295/Conv3D/ReadVariableOpReadVariableOp)conv3d_295_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ц
conv3d_295/Conv3DConv3Dconv3d_294/Relu:activations:0(conv3d_295/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_295/BiasAdd/ReadVariableOpReadVariableOp*conv3d_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_295/BiasAddBiasAddconv3d_295/Conv3D:output:0)conv3d_295/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
conv3d_295/ReluReluconv3d_295/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ~
!cropping3d_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
#cropping3d_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
#cropping3d_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               к
cropping3d_10/strided_sliceStridedSliceconv3d_295/Relu:activations:0*cropping3d_10/strided_slice/stack:output:0,cropping3d_10/strided_slice/stack_1:output:0,cropping3d_10/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask
 conv3d_296/Conv3D/ReadVariableOpReadVariableOp)conv3d_296_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0э
conv3d_296/Conv3DConv3D$cropping3d_10/strided_slice:output:0(conv3d_296/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

!conv3d_296/BiasAdd/ReadVariableOpReadVariableOp*conv3d_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Н
conv3d_296/BiasAddBiasAddconv3d_296/Conv3D:output:0)conv3d_296/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityconv3d_296/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЯ
NoOpNoOp"^conv3d_270/BiasAdd/ReadVariableOp!^conv3d_270/Conv3D/ReadVariableOp"^conv3d_271/BiasAdd/ReadVariableOp!^conv3d_271/Conv3D/ReadVariableOp"^conv3d_272/BiasAdd/ReadVariableOp!^conv3d_272/Conv3D/ReadVariableOp"^conv3d_273/BiasAdd/ReadVariableOp!^conv3d_273/Conv3D/ReadVariableOp"^conv3d_274/BiasAdd/ReadVariableOp!^conv3d_274/Conv3D/ReadVariableOp"^conv3d_275/BiasAdd/ReadVariableOp!^conv3d_275/Conv3D/ReadVariableOp"^conv3d_276/BiasAdd/ReadVariableOp!^conv3d_276/Conv3D/ReadVariableOp"^conv3d_277/BiasAdd/ReadVariableOp!^conv3d_277/Conv3D/ReadVariableOp"^conv3d_278/BiasAdd/ReadVariableOp!^conv3d_278/Conv3D/ReadVariableOp"^conv3d_279/BiasAdd/ReadVariableOp!^conv3d_279/Conv3D/ReadVariableOp"^conv3d_280/BiasAdd/ReadVariableOp!^conv3d_280/Conv3D/ReadVariableOp"^conv3d_281/BiasAdd/ReadVariableOp!^conv3d_281/Conv3D/ReadVariableOp"^conv3d_282/BiasAdd/ReadVariableOp!^conv3d_282/Conv3D/ReadVariableOp"^conv3d_283/BiasAdd/ReadVariableOp!^conv3d_283/Conv3D/ReadVariableOp"^conv3d_284/BiasAdd/ReadVariableOp!^conv3d_284/Conv3D/ReadVariableOp"^conv3d_285/BiasAdd/ReadVariableOp!^conv3d_285/Conv3D/ReadVariableOp"^conv3d_286/BiasAdd/ReadVariableOp!^conv3d_286/Conv3D/ReadVariableOp"^conv3d_287/BiasAdd/ReadVariableOp!^conv3d_287/Conv3D/ReadVariableOp"^conv3d_288/BiasAdd/ReadVariableOp!^conv3d_288/Conv3D/ReadVariableOp"^conv3d_289/BiasAdd/ReadVariableOp!^conv3d_289/Conv3D/ReadVariableOp"^conv3d_290/BiasAdd/ReadVariableOp!^conv3d_290/Conv3D/ReadVariableOp"^conv3d_291/BiasAdd/ReadVariableOp!^conv3d_291/Conv3D/ReadVariableOp"^conv3d_292/BiasAdd/ReadVariableOp!^conv3d_292/Conv3D/ReadVariableOp"^conv3d_293/BiasAdd/ReadVariableOp!^conv3d_293/Conv3D/ReadVariableOp"^conv3d_294/BiasAdd/ReadVariableOp!^conv3d_294/Conv3D/ReadVariableOp"^conv3d_295/BiasAdd/ReadVariableOp!^conv3d_295/Conv3D/ReadVariableOp"^conv3d_296/BiasAdd/ReadVariableOp!^conv3d_296/Conv3D/ReadVariableOp+^conv3d_transpose_40/BiasAdd/ReadVariableOp4^conv3d_transpose_40/conv3d_transpose/ReadVariableOp+^conv3d_transpose_41/BiasAdd/ReadVariableOp4^conv3d_transpose_41/conv3d_transpose/ReadVariableOp+^conv3d_transpose_42/BiasAdd/ReadVariableOp4^conv3d_transpose_42/conv3d_transpose/ReadVariableOp+^conv3d_transpose_43/BiasAdd/ReadVariableOp4^conv3d_transpose_43/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv3d_270/BiasAdd/ReadVariableOp!conv3d_270/BiasAdd/ReadVariableOp2D
 conv3d_270/Conv3D/ReadVariableOp conv3d_270/Conv3D/ReadVariableOp2F
!conv3d_271/BiasAdd/ReadVariableOp!conv3d_271/BiasAdd/ReadVariableOp2D
 conv3d_271/Conv3D/ReadVariableOp conv3d_271/Conv3D/ReadVariableOp2F
!conv3d_272/BiasAdd/ReadVariableOp!conv3d_272/BiasAdd/ReadVariableOp2D
 conv3d_272/Conv3D/ReadVariableOp conv3d_272/Conv3D/ReadVariableOp2F
!conv3d_273/BiasAdd/ReadVariableOp!conv3d_273/BiasAdd/ReadVariableOp2D
 conv3d_273/Conv3D/ReadVariableOp conv3d_273/Conv3D/ReadVariableOp2F
!conv3d_274/BiasAdd/ReadVariableOp!conv3d_274/BiasAdd/ReadVariableOp2D
 conv3d_274/Conv3D/ReadVariableOp conv3d_274/Conv3D/ReadVariableOp2F
!conv3d_275/BiasAdd/ReadVariableOp!conv3d_275/BiasAdd/ReadVariableOp2D
 conv3d_275/Conv3D/ReadVariableOp conv3d_275/Conv3D/ReadVariableOp2F
!conv3d_276/BiasAdd/ReadVariableOp!conv3d_276/BiasAdd/ReadVariableOp2D
 conv3d_276/Conv3D/ReadVariableOp conv3d_276/Conv3D/ReadVariableOp2F
!conv3d_277/BiasAdd/ReadVariableOp!conv3d_277/BiasAdd/ReadVariableOp2D
 conv3d_277/Conv3D/ReadVariableOp conv3d_277/Conv3D/ReadVariableOp2F
!conv3d_278/BiasAdd/ReadVariableOp!conv3d_278/BiasAdd/ReadVariableOp2D
 conv3d_278/Conv3D/ReadVariableOp conv3d_278/Conv3D/ReadVariableOp2F
!conv3d_279/BiasAdd/ReadVariableOp!conv3d_279/BiasAdd/ReadVariableOp2D
 conv3d_279/Conv3D/ReadVariableOp conv3d_279/Conv3D/ReadVariableOp2F
!conv3d_280/BiasAdd/ReadVariableOp!conv3d_280/BiasAdd/ReadVariableOp2D
 conv3d_280/Conv3D/ReadVariableOp conv3d_280/Conv3D/ReadVariableOp2F
!conv3d_281/BiasAdd/ReadVariableOp!conv3d_281/BiasAdd/ReadVariableOp2D
 conv3d_281/Conv3D/ReadVariableOp conv3d_281/Conv3D/ReadVariableOp2F
!conv3d_282/BiasAdd/ReadVariableOp!conv3d_282/BiasAdd/ReadVariableOp2D
 conv3d_282/Conv3D/ReadVariableOp conv3d_282/Conv3D/ReadVariableOp2F
!conv3d_283/BiasAdd/ReadVariableOp!conv3d_283/BiasAdd/ReadVariableOp2D
 conv3d_283/Conv3D/ReadVariableOp conv3d_283/Conv3D/ReadVariableOp2F
!conv3d_284/BiasAdd/ReadVariableOp!conv3d_284/BiasAdd/ReadVariableOp2D
 conv3d_284/Conv3D/ReadVariableOp conv3d_284/Conv3D/ReadVariableOp2F
!conv3d_285/BiasAdd/ReadVariableOp!conv3d_285/BiasAdd/ReadVariableOp2D
 conv3d_285/Conv3D/ReadVariableOp conv3d_285/Conv3D/ReadVariableOp2F
!conv3d_286/BiasAdd/ReadVariableOp!conv3d_286/BiasAdd/ReadVariableOp2D
 conv3d_286/Conv3D/ReadVariableOp conv3d_286/Conv3D/ReadVariableOp2F
!conv3d_287/BiasAdd/ReadVariableOp!conv3d_287/BiasAdd/ReadVariableOp2D
 conv3d_287/Conv3D/ReadVariableOp conv3d_287/Conv3D/ReadVariableOp2F
!conv3d_288/BiasAdd/ReadVariableOp!conv3d_288/BiasAdd/ReadVariableOp2D
 conv3d_288/Conv3D/ReadVariableOp conv3d_288/Conv3D/ReadVariableOp2F
!conv3d_289/BiasAdd/ReadVariableOp!conv3d_289/BiasAdd/ReadVariableOp2D
 conv3d_289/Conv3D/ReadVariableOp conv3d_289/Conv3D/ReadVariableOp2F
!conv3d_290/BiasAdd/ReadVariableOp!conv3d_290/BiasAdd/ReadVariableOp2D
 conv3d_290/Conv3D/ReadVariableOp conv3d_290/Conv3D/ReadVariableOp2F
!conv3d_291/BiasAdd/ReadVariableOp!conv3d_291/BiasAdd/ReadVariableOp2D
 conv3d_291/Conv3D/ReadVariableOp conv3d_291/Conv3D/ReadVariableOp2F
!conv3d_292/BiasAdd/ReadVariableOp!conv3d_292/BiasAdd/ReadVariableOp2D
 conv3d_292/Conv3D/ReadVariableOp conv3d_292/Conv3D/ReadVariableOp2F
!conv3d_293/BiasAdd/ReadVariableOp!conv3d_293/BiasAdd/ReadVariableOp2D
 conv3d_293/Conv3D/ReadVariableOp conv3d_293/Conv3D/ReadVariableOp2F
!conv3d_294/BiasAdd/ReadVariableOp!conv3d_294/BiasAdd/ReadVariableOp2D
 conv3d_294/Conv3D/ReadVariableOp conv3d_294/Conv3D/ReadVariableOp2F
!conv3d_295/BiasAdd/ReadVariableOp!conv3d_295/BiasAdd/ReadVariableOp2D
 conv3d_295/Conv3D/ReadVariableOp conv3d_295/Conv3D/ReadVariableOp2F
!conv3d_296/BiasAdd/ReadVariableOp!conv3d_296/BiasAdd/ReadVariableOp2D
 conv3d_296/Conv3D/ReadVariableOp conv3d_296/Conv3D/ReadVariableOp2X
*conv3d_transpose_40/BiasAdd/ReadVariableOp*conv3d_transpose_40/BiasAdd/ReadVariableOp2j
3conv3d_transpose_40/conv3d_transpose/ReadVariableOp3conv3d_transpose_40/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_41/BiasAdd/ReadVariableOp*conv3d_transpose_41/BiasAdd/ReadVariableOp2j
3conv3d_transpose_41/conv3d_transpose/ReadVariableOp3conv3d_transpose_41/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_42/BiasAdd/ReadVariableOp*conv3d_transpose_42/BiasAdd/ReadVariableOp2j
3conv3d_transpose_42/conv3d_transpose/ReadVariableOp3conv3d_transpose_42/conv3d_transpose/ReadVariableOp2X
*conv3d_transpose_43/BiasAdd/ReadVariableOp*conv3d_transpose_43/BiasAdd/ReadVariableOp2j
3conv3d_transpose_43/conv3d_transpose/ReadVariableOp3conv3d_transpose_43/conv3d_transpose/ReadVariableOp:v r
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з

F__inference_conv3d_282_layer_call_and_return_conditional_losses_329957

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
ж"
 
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_329694

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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_330039

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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_333169

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
ђ
Є
+__inference_conv3d_286_layer_call_fn_333138

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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_330039
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
њ
ОS
__inference__traced_save_334083
file_prefix0
,savev2_conv3d_270_kernel_read_readvariableop.
*savev2_conv3d_270_bias_read_readvariableop0
,savev2_conv3d_271_kernel_read_readvariableop.
*savev2_conv3d_271_bias_read_readvariableop0
,savev2_conv3d_272_kernel_read_readvariableop.
*savev2_conv3d_272_bias_read_readvariableop0
,savev2_conv3d_273_kernel_read_readvariableop.
*savev2_conv3d_273_bias_read_readvariableop0
,savev2_conv3d_274_kernel_read_readvariableop.
*savev2_conv3d_274_bias_read_readvariableop0
,savev2_conv3d_275_kernel_read_readvariableop.
*savev2_conv3d_275_bias_read_readvariableop0
,savev2_conv3d_276_kernel_read_readvariableop.
*savev2_conv3d_276_bias_read_readvariableop0
,savev2_conv3d_277_kernel_read_readvariableop.
*savev2_conv3d_277_bias_read_readvariableop0
,savev2_conv3d_278_kernel_read_readvariableop.
*savev2_conv3d_278_bias_read_readvariableop0
,savev2_conv3d_279_kernel_read_readvariableop.
*savev2_conv3d_279_bias_read_readvariableop9
5savev2_conv3d_transpose_40_kernel_read_readvariableop7
3savev2_conv3d_transpose_40_bias_read_readvariableop0
,savev2_conv3d_280_kernel_read_readvariableop.
*savev2_conv3d_280_bias_read_readvariableop0
,savev2_conv3d_281_kernel_read_readvariableop.
*savev2_conv3d_281_bias_read_readvariableop0
,savev2_conv3d_282_kernel_read_readvariableop.
*savev2_conv3d_282_bias_read_readvariableop0
,savev2_conv3d_283_kernel_read_readvariableop.
*savev2_conv3d_283_bias_read_readvariableop9
5savev2_conv3d_transpose_41_kernel_read_readvariableop7
3savev2_conv3d_transpose_41_bias_read_readvariableop0
,savev2_conv3d_284_kernel_read_readvariableop.
*savev2_conv3d_284_bias_read_readvariableop0
,savev2_conv3d_285_kernel_read_readvariableop.
*savev2_conv3d_285_bias_read_readvariableop0
,savev2_conv3d_286_kernel_read_readvariableop.
*savev2_conv3d_286_bias_read_readvariableop0
,savev2_conv3d_287_kernel_read_readvariableop.
*savev2_conv3d_287_bias_read_readvariableop9
5savev2_conv3d_transpose_42_kernel_read_readvariableop7
3savev2_conv3d_transpose_42_bias_read_readvariableop0
,savev2_conv3d_288_kernel_read_readvariableop.
*savev2_conv3d_288_bias_read_readvariableop0
,savev2_conv3d_289_kernel_read_readvariableop.
*savev2_conv3d_289_bias_read_readvariableop0
,savev2_conv3d_290_kernel_read_readvariableop.
*savev2_conv3d_290_bias_read_readvariableop0
,savev2_conv3d_291_kernel_read_readvariableop.
*savev2_conv3d_291_bias_read_readvariableop9
5savev2_conv3d_transpose_43_kernel_read_readvariableop7
3savev2_conv3d_transpose_43_bias_read_readvariableop0
,savev2_conv3d_292_kernel_read_readvariableop.
*savev2_conv3d_292_bias_read_readvariableop0
,savev2_conv3d_293_kernel_read_readvariableop.
*savev2_conv3d_293_bias_read_readvariableop0
,savev2_conv3d_294_kernel_read_readvariableop.
*savev2_conv3d_294_bias_read_readvariableop0
,savev2_conv3d_295_kernel_read_readvariableop.
*savev2_conv3d_295_bias_read_readvariableop0
,savev2_conv3d_296_kernel_read_readvariableop.
*savev2_conv3d_296_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv3d_270_kernel_m_read_readvariableop5
1savev2_adam_conv3d_270_bias_m_read_readvariableop7
3savev2_adam_conv3d_271_kernel_m_read_readvariableop5
1savev2_adam_conv3d_271_bias_m_read_readvariableop7
3savev2_adam_conv3d_272_kernel_m_read_readvariableop5
1savev2_adam_conv3d_272_bias_m_read_readvariableop7
3savev2_adam_conv3d_273_kernel_m_read_readvariableop5
1savev2_adam_conv3d_273_bias_m_read_readvariableop7
3savev2_adam_conv3d_274_kernel_m_read_readvariableop5
1savev2_adam_conv3d_274_bias_m_read_readvariableop7
3savev2_adam_conv3d_275_kernel_m_read_readvariableop5
1savev2_adam_conv3d_275_bias_m_read_readvariableop7
3savev2_adam_conv3d_276_kernel_m_read_readvariableop5
1savev2_adam_conv3d_276_bias_m_read_readvariableop7
3savev2_adam_conv3d_277_kernel_m_read_readvariableop5
1savev2_adam_conv3d_277_bias_m_read_readvariableop7
3savev2_adam_conv3d_278_kernel_m_read_readvariableop5
1savev2_adam_conv3d_278_bias_m_read_readvariableop7
3savev2_adam_conv3d_279_kernel_m_read_readvariableop5
1savev2_adam_conv3d_279_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_40_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_40_bias_m_read_readvariableop7
3savev2_adam_conv3d_280_kernel_m_read_readvariableop5
1savev2_adam_conv3d_280_bias_m_read_readvariableop7
3savev2_adam_conv3d_281_kernel_m_read_readvariableop5
1savev2_adam_conv3d_281_bias_m_read_readvariableop7
3savev2_adam_conv3d_282_kernel_m_read_readvariableop5
1savev2_adam_conv3d_282_bias_m_read_readvariableop7
3savev2_adam_conv3d_283_kernel_m_read_readvariableop5
1savev2_adam_conv3d_283_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_41_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_41_bias_m_read_readvariableop7
3savev2_adam_conv3d_284_kernel_m_read_readvariableop5
1savev2_adam_conv3d_284_bias_m_read_readvariableop7
3savev2_adam_conv3d_285_kernel_m_read_readvariableop5
1savev2_adam_conv3d_285_bias_m_read_readvariableop7
3savev2_adam_conv3d_286_kernel_m_read_readvariableop5
1savev2_adam_conv3d_286_bias_m_read_readvariableop7
3savev2_adam_conv3d_287_kernel_m_read_readvariableop5
1savev2_adam_conv3d_287_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_42_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_42_bias_m_read_readvariableop7
3savev2_adam_conv3d_288_kernel_m_read_readvariableop5
1savev2_adam_conv3d_288_bias_m_read_readvariableop7
3savev2_adam_conv3d_289_kernel_m_read_readvariableop5
1savev2_adam_conv3d_289_bias_m_read_readvariableop7
3savev2_adam_conv3d_290_kernel_m_read_readvariableop5
1savev2_adam_conv3d_290_bias_m_read_readvariableop7
3savev2_adam_conv3d_291_kernel_m_read_readvariableop5
1savev2_adam_conv3d_291_bias_m_read_readvariableop@
<savev2_adam_conv3d_transpose_43_kernel_m_read_readvariableop>
:savev2_adam_conv3d_transpose_43_bias_m_read_readvariableop7
3savev2_adam_conv3d_292_kernel_m_read_readvariableop5
1savev2_adam_conv3d_292_bias_m_read_readvariableop7
3savev2_adam_conv3d_293_kernel_m_read_readvariableop5
1savev2_adam_conv3d_293_bias_m_read_readvariableop7
3savev2_adam_conv3d_294_kernel_m_read_readvariableop5
1savev2_adam_conv3d_294_bias_m_read_readvariableop7
3savev2_adam_conv3d_295_kernel_m_read_readvariableop5
1savev2_adam_conv3d_295_bias_m_read_readvariableop7
3savev2_adam_conv3d_296_kernel_m_read_readvariableop5
1savev2_adam_conv3d_296_bias_m_read_readvariableop7
3savev2_adam_conv3d_270_kernel_v_read_readvariableop5
1savev2_adam_conv3d_270_bias_v_read_readvariableop7
3savev2_adam_conv3d_271_kernel_v_read_readvariableop5
1savev2_adam_conv3d_271_bias_v_read_readvariableop7
3savev2_adam_conv3d_272_kernel_v_read_readvariableop5
1savev2_adam_conv3d_272_bias_v_read_readvariableop7
3savev2_adam_conv3d_273_kernel_v_read_readvariableop5
1savev2_adam_conv3d_273_bias_v_read_readvariableop7
3savev2_adam_conv3d_274_kernel_v_read_readvariableop5
1savev2_adam_conv3d_274_bias_v_read_readvariableop7
3savev2_adam_conv3d_275_kernel_v_read_readvariableop5
1savev2_adam_conv3d_275_bias_v_read_readvariableop7
3savev2_adam_conv3d_276_kernel_v_read_readvariableop5
1savev2_adam_conv3d_276_bias_v_read_readvariableop7
3savev2_adam_conv3d_277_kernel_v_read_readvariableop5
1savev2_adam_conv3d_277_bias_v_read_readvariableop7
3savev2_adam_conv3d_278_kernel_v_read_readvariableop5
1savev2_adam_conv3d_278_bias_v_read_readvariableop7
3savev2_adam_conv3d_279_kernel_v_read_readvariableop5
1savev2_adam_conv3d_279_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_40_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_40_bias_v_read_readvariableop7
3savev2_adam_conv3d_280_kernel_v_read_readvariableop5
1savev2_adam_conv3d_280_bias_v_read_readvariableop7
3savev2_adam_conv3d_281_kernel_v_read_readvariableop5
1savev2_adam_conv3d_281_bias_v_read_readvariableop7
3savev2_adam_conv3d_282_kernel_v_read_readvariableop5
1savev2_adam_conv3d_282_bias_v_read_readvariableop7
3savev2_adam_conv3d_283_kernel_v_read_readvariableop5
1savev2_adam_conv3d_283_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_41_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_41_bias_v_read_readvariableop7
3savev2_adam_conv3d_284_kernel_v_read_readvariableop5
1savev2_adam_conv3d_284_bias_v_read_readvariableop7
3savev2_adam_conv3d_285_kernel_v_read_readvariableop5
1savev2_adam_conv3d_285_bias_v_read_readvariableop7
3savev2_adam_conv3d_286_kernel_v_read_readvariableop5
1savev2_adam_conv3d_286_bias_v_read_readvariableop7
3savev2_adam_conv3d_287_kernel_v_read_readvariableop5
1savev2_adam_conv3d_287_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_42_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_42_bias_v_read_readvariableop7
3savev2_adam_conv3d_288_kernel_v_read_readvariableop5
1savev2_adam_conv3d_288_bias_v_read_readvariableop7
3savev2_adam_conv3d_289_kernel_v_read_readvariableop5
1savev2_adam_conv3d_289_bias_v_read_readvariableop7
3savev2_adam_conv3d_290_kernel_v_read_readvariableop5
1savev2_adam_conv3d_290_bias_v_read_readvariableop7
3savev2_adam_conv3d_291_kernel_v_read_readvariableop5
1savev2_adam_conv3d_291_bias_v_read_readvariableop@
<savev2_adam_conv3d_transpose_43_kernel_v_read_readvariableop>
:savev2_adam_conv3d_transpose_43_bias_v_read_readvariableop7
3savev2_adam_conv3d_292_kernel_v_read_readvariableop5
1savev2_adam_conv3d_292_bias_v_read_readvariableop7
3savev2_adam_conv3d_293_kernel_v_read_readvariableop5
1savev2_adam_conv3d_293_bias_v_read_readvariableop7
3savev2_adam_conv3d_294_kernel_v_read_readvariableop5
1savev2_adam_conv3d_294_bias_v_read_readvariableop7
3savev2_adam_conv3d_295_kernel_v_read_readvariableop5
1savev2_adam_conv3d_295_bias_v_read_readvariableop7
3savev2_adam_conv3d_296_kernel_v_read_readvariableop5
1savev2_adam_conv3d_296_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_270_kernel_read_readvariableop*savev2_conv3d_270_bias_read_readvariableop,savev2_conv3d_271_kernel_read_readvariableop*savev2_conv3d_271_bias_read_readvariableop,savev2_conv3d_272_kernel_read_readvariableop*savev2_conv3d_272_bias_read_readvariableop,savev2_conv3d_273_kernel_read_readvariableop*savev2_conv3d_273_bias_read_readvariableop,savev2_conv3d_274_kernel_read_readvariableop*savev2_conv3d_274_bias_read_readvariableop,savev2_conv3d_275_kernel_read_readvariableop*savev2_conv3d_275_bias_read_readvariableop,savev2_conv3d_276_kernel_read_readvariableop*savev2_conv3d_276_bias_read_readvariableop,savev2_conv3d_277_kernel_read_readvariableop*savev2_conv3d_277_bias_read_readvariableop,savev2_conv3d_278_kernel_read_readvariableop*savev2_conv3d_278_bias_read_readvariableop,savev2_conv3d_279_kernel_read_readvariableop*savev2_conv3d_279_bias_read_readvariableop5savev2_conv3d_transpose_40_kernel_read_readvariableop3savev2_conv3d_transpose_40_bias_read_readvariableop,savev2_conv3d_280_kernel_read_readvariableop*savev2_conv3d_280_bias_read_readvariableop,savev2_conv3d_281_kernel_read_readvariableop*savev2_conv3d_281_bias_read_readvariableop,savev2_conv3d_282_kernel_read_readvariableop*savev2_conv3d_282_bias_read_readvariableop,savev2_conv3d_283_kernel_read_readvariableop*savev2_conv3d_283_bias_read_readvariableop5savev2_conv3d_transpose_41_kernel_read_readvariableop3savev2_conv3d_transpose_41_bias_read_readvariableop,savev2_conv3d_284_kernel_read_readvariableop*savev2_conv3d_284_bias_read_readvariableop,savev2_conv3d_285_kernel_read_readvariableop*savev2_conv3d_285_bias_read_readvariableop,savev2_conv3d_286_kernel_read_readvariableop*savev2_conv3d_286_bias_read_readvariableop,savev2_conv3d_287_kernel_read_readvariableop*savev2_conv3d_287_bias_read_readvariableop5savev2_conv3d_transpose_42_kernel_read_readvariableop3savev2_conv3d_transpose_42_bias_read_readvariableop,savev2_conv3d_288_kernel_read_readvariableop*savev2_conv3d_288_bias_read_readvariableop,savev2_conv3d_289_kernel_read_readvariableop*savev2_conv3d_289_bias_read_readvariableop,savev2_conv3d_290_kernel_read_readvariableop*savev2_conv3d_290_bias_read_readvariableop,savev2_conv3d_291_kernel_read_readvariableop*savev2_conv3d_291_bias_read_readvariableop5savev2_conv3d_transpose_43_kernel_read_readvariableop3savev2_conv3d_transpose_43_bias_read_readvariableop,savev2_conv3d_292_kernel_read_readvariableop*savev2_conv3d_292_bias_read_readvariableop,savev2_conv3d_293_kernel_read_readvariableop*savev2_conv3d_293_bias_read_readvariableop,savev2_conv3d_294_kernel_read_readvariableop*savev2_conv3d_294_bias_read_readvariableop,savev2_conv3d_295_kernel_read_readvariableop*savev2_conv3d_295_bias_read_readvariableop,savev2_conv3d_296_kernel_read_readvariableop*savev2_conv3d_296_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv3d_270_kernel_m_read_readvariableop1savev2_adam_conv3d_270_bias_m_read_readvariableop3savev2_adam_conv3d_271_kernel_m_read_readvariableop1savev2_adam_conv3d_271_bias_m_read_readvariableop3savev2_adam_conv3d_272_kernel_m_read_readvariableop1savev2_adam_conv3d_272_bias_m_read_readvariableop3savev2_adam_conv3d_273_kernel_m_read_readvariableop1savev2_adam_conv3d_273_bias_m_read_readvariableop3savev2_adam_conv3d_274_kernel_m_read_readvariableop1savev2_adam_conv3d_274_bias_m_read_readvariableop3savev2_adam_conv3d_275_kernel_m_read_readvariableop1savev2_adam_conv3d_275_bias_m_read_readvariableop3savev2_adam_conv3d_276_kernel_m_read_readvariableop1savev2_adam_conv3d_276_bias_m_read_readvariableop3savev2_adam_conv3d_277_kernel_m_read_readvariableop1savev2_adam_conv3d_277_bias_m_read_readvariableop3savev2_adam_conv3d_278_kernel_m_read_readvariableop1savev2_adam_conv3d_278_bias_m_read_readvariableop3savev2_adam_conv3d_279_kernel_m_read_readvariableop1savev2_adam_conv3d_279_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_40_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_40_bias_m_read_readvariableop3savev2_adam_conv3d_280_kernel_m_read_readvariableop1savev2_adam_conv3d_280_bias_m_read_readvariableop3savev2_adam_conv3d_281_kernel_m_read_readvariableop1savev2_adam_conv3d_281_bias_m_read_readvariableop3savev2_adam_conv3d_282_kernel_m_read_readvariableop1savev2_adam_conv3d_282_bias_m_read_readvariableop3savev2_adam_conv3d_283_kernel_m_read_readvariableop1savev2_adam_conv3d_283_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_41_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_41_bias_m_read_readvariableop3savev2_adam_conv3d_284_kernel_m_read_readvariableop1savev2_adam_conv3d_284_bias_m_read_readvariableop3savev2_adam_conv3d_285_kernel_m_read_readvariableop1savev2_adam_conv3d_285_bias_m_read_readvariableop3savev2_adam_conv3d_286_kernel_m_read_readvariableop1savev2_adam_conv3d_286_bias_m_read_readvariableop3savev2_adam_conv3d_287_kernel_m_read_readvariableop1savev2_adam_conv3d_287_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_42_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_42_bias_m_read_readvariableop3savev2_adam_conv3d_288_kernel_m_read_readvariableop1savev2_adam_conv3d_288_bias_m_read_readvariableop3savev2_adam_conv3d_289_kernel_m_read_readvariableop1savev2_adam_conv3d_289_bias_m_read_readvariableop3savev2_adam_conv3d_290_kernel_m_read_readvariableop1savev2_adam_conv3d_290_bias_m_read_readvariableop3savev2_adam_conv3d_291_kernel_m_read_readvariableop1savev2_adam_conv3d_291_bias_m_read_readvariableop<savev2_adam_conv3d_transpose_43_kernel_m_read_readvariableop:savev2_adam_conv3d_transpose_43_bias_m_read_readvariableop3savev2_adam_conv3d_292_kernel_m_read_readvariableop1savev2_adam_conv3d_292_bias_m_read_readvariableop3savev2_adam_conv3d_293_kernel_m_read_readvariableop1savev2_adam_conv3d_293_bias_m_read_readvariableop3savev2_adam_conv3d_294_kernel_m_read_readvariableop1savev2_adam_conv3d_294_bias_m_read_readvariableop3savev2_adam_conv3d_295_kernel_m_read_readvariableop1savev2_adam_conv3d_295_bias_m_read_readvariableop3savev2_adam_conv3d_296_kernel_m_read_readvariableop1savev2_adam_conv3d_296_bias_m_read_readvariableop3savev2_adam_conv3d_270_kernel_v_read_readvariableop1savev2_adam_conv3d_270_bias_v_read_readvariableop3savev2_adam_conv3d_271_kernel_v_read_readvariableop1savev2_adam_conv3d_271_bias_v_read_readvariableop3savev2_adam_conv3d_272_kernel_v_read_readvariableop1savev2_adam_conv3d_272_bias_v_read_readvariableop3savev2_adam_conv3d_273_kernel_v_read_readvariableop1savev2_adam_conv3d_273_bias_v_read_readvariableop3savev2_adam_conv3d_274_kernel_v_read_readvariableop1savev2_adam_conv3d_274_bias_v_read_readvariableop3savev2_adam_conv3d_275_kernel_v_read_readvariableop1savev2_adam_conv3d_275_bias_v_read_readvariableop3savev2_adam_conv3d_276_kernel_v_read_readvariableop1savev2_adam_conv3d_276_bias_v_read_readvariableop3savev2_adam_conv3d_277_kernel_v_read_readvariableop1savev2_adam_conv3d_277_bias_v_read_readvariableop3savev2_adam_conv3d_278_kernel_v_read_readvariableop1savev2_adam_conv3d_278_bias_v_read_readvariableop3savev2_adam_conv3d_279_kernel_v_read_readvariableop1savev2_adam_conv3d_279_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_40_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_40_bias_v_read_readvariableop3savev2_adam_conv3d_280_kernel_v_read_readvariableop1savev2_adam_conv3d_280_bias_v_read_readvariableop3savev2_adam_conv3d_281_kernel_v_read_readvariableop1savev2_adam_conv3d_281_bias_v_read_readvariableop3savev2_adam_conv3d_282_kernel_v_read_readvariableop1savev2_adam_conv3d_282_bias_v_read_readvariableop3savev2_adam_conv3d_283_kernel_v_read_readvariableop1savev2_adam_conv3d_283_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_41_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_41_bias_v_read_readvariableop3savev2_adam_conv3d_284_kernel_v_read_readvariableop1savev2_adam_conv3d_284_bias_v_read_readvariableop3savev2_adam_conv3d_285_kernel_v_read_readvariableop1savev2_adam_conv3d_285_bias_v_read_readvariableop3savev2_adam_conv3d_286_kernel_v_read_readvariableop1savev2_adam_conv3d_286_bias_v_read_readvariableop3savev2_adam_conv3d_287_kernel_v_read_readvariableop1savev2_adam_conv3d_287_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_42_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_42_bias_v_read_readvariableop3savev2_adam_conv3d_288_kernel_v_read_readvariableop1savev2_adam_conv3d_288_bias_v_read_readvariableop3savev2_adam_conv3d_289_kernel_v_read_readvariableop1savev2_adam_conv3d_289_bias_v_read_readvariableop3savev2_adam_conv3d_290_kernel_v_read_readvariableop1savev2_adam_conv3d_290_bias_v_read_readvariableop3savev2_adam_conv3d_291_kernel_v_read_readvariableop1savev2_adam_conv3d_291_bias_v_read_readvariableop<savev2_adam_conv3d_transpose_43_kernel_v_read_readvariableop:savev2_adam_conv3d_transpose_43_bias_v_read_readvariableop3savev2_adam_conv3d_292_kernel_v_read_readvariableop1savev2_adam_conv3d_292_bias_v_read_readvariableop3savev2_adam_conv3d_293_kernel_v_read_readvariableop1savev2_adam_conv3d_293_bias_v_read_readvariableop3savev2_adam_conv3d_294_kernel_v_read_readvariableop1savev2_adam_conv3d_294_bias_v_read_readvariableop3savev2_adam_conv3d_295_kernel_v_read_readvariableop1savev2_adam_conv3d_295_bias_v_read_readvariableop3savev2_adam_conv3d_296_kernel_v_read_readvariableop1savev2_adam_conv3d_296_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ы

F__inference_conv3d_288_layer_call_and_return_conditional_losses_330078

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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_333423

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
Џ
v
J__inference_concatenate_42_layer_call_and_return_conditional_losses_333246
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
	
Ў
4__inference_conv3d_transpose_41_layer_call_fn_333041

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
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_329602
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
ђ
Є
+__inference_conv3d_292_layer_call_fn_333359

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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_330160
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
ы
J
.__inference_cropping3d_10_layer_call_fn_333448

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
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_329713
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
J__inference_concatenate_43_layer_call_and_return_conditional_losses_333383
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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_333370

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
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_329508

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

Э
"__inference__traced_restore_334678
file_prefix@
"assignvariableop_conv3d_270_kernel:0
"assignvariableop_1_conv3d_270_bias:B
$assignvariableop_2_conv3d_271_kernel:0
"assignvariableop_3_conv3d_271_bias:B
$assignvariableop_4_conv3d_272_kernel: 0
"assignvariableop_5_conv3d_272_bias: B
$assignvariableop_6_conv3d_273_kernel:  0
"assignvariableop_7_conv3d_273_bias: B
$assignvariableop_8_conv3d_274_kernel: @0
"assignvariableop_9_conv3d_274_bias:@C
%assignvariableop_10_conv3d_275_kernel:@@1
#assignvariableop_11_conv3d_275_bias:@D
%assignvariableop_12_conv3d_276_kernel:@2
#assignvariableop_13_conv3d_276_bias:	E
%assignvariableop_14_conv3d_277_kernel:2
#assignvariableop_15_conv3d_277_bias:	E
%assignvariableop_16_conv3d_278_kernel:2
#assignvariableop_17_conv3d_278_bias:	E
%assignvariableop_18_conv3d_279_kernel:2
#assignvariableop_19_conv3d_279_bias:	N
.assignvariableop_20_conv3d_transpose_40_kernel:;
,assignvariableop_21_conv3d_transpose_40_bias:	E
%assignvariableop_22_conv3d_280_kernel:2
#assignvariableop_23_conv3d_280_bias:	E
%assignvariableop_24_conv3d_281_kernel:2
#assignvariableop_25_conv3d_281_bias:	E
%assignvariableop_26_conv3d_282_kernel:2
#assignvariableop_27_conv3d_282_bias:	E
%assignvariableop_28_conv3d_283_kernel:2
#assignvariableop_29_conv3d_283_bias:	M
.assignvariableop_30_conv3d_transpose_41_kernel:@:
,assignvariableop_31_conv3d_transpose_41_bias:@C
%assignvariableop_32_conv3d_284_kernel:@@1
#assignvariableop_33_conv3d_284_bias:@D
%assignvariableop_34_conv3d_285_kernel:@1
#assignvariableop_35_conv3d_285_bias:@C
%assignvariableop_36_conv3d_286_kernel:@@1
#assignvariableop_37_conv3d_286_bias:@C
%assignvariableop_38_conv3d_287_kernel:@@1
#assignvariableop_39_conv3d_287_bias:@L
.assignvariableop_40_conv3d_transpose_42_kernel: @:
,assignvariableop_41_conv3d_transpose_42_bias: C
%assignvariableop_42_conv3d_288_kernel:  1
#assignvariableop_43_conv3d_288_bias: C
%assignvariableop_44_conv3d_289_kernel:@ 1
#assignvariableop_45_conv3d_289_bias: C
%assignvariableop_46_conv3d_290_kernel:  1
#assignvariableop_47_conv3d_290_bias: C
%assignvariableop_48_conv3d_291_kernel:  1
#assignvariableop_49_conv3d_291_bias: L
.assignvariableop_50_conv3d_transpose_43_kernel: :
,assignvariableop_51_conv3d_transpose_43_bias:C
%assignvariableop_52_conv3d_292_kernel:1
#assignvariableop_53_conv3d_292_bias:C
%assignvariableop_54_conv3d_293_kernel: 1
#assignvariableop_55_conv3d_293_bias:C
%assignvariableop_56_conv3d_294_kernel:1
#assignvariableop_57_conv3d_294_bias:C
%assignvariableop_58_conv3d_295_kernel:1
#assignvariableop_59_conv3d_295_bias:C
%assignvariableop_60_conv3d_296_kernel:1
#assignvariableop_61_conv3d_296_bias:'
assignvariableop_62_adam_iter:	 )
assignvariableop_63_adam_beta_1: )
assignvariableop_64_adam_beta_2: (
assignvariableop_65_adam_decay: 0
&assignvariableop_66_adam_learning_rate: #
assignvariableop_67_total: #
assignvariableop_68_count: %
assignvariableop_69_total_1: %
assignvariableop_70_count_1: J
,assignvariableop_71_adam_conv3d_270_kernel_m:8
*assignvariableop_72_adam_conv3d_270_bias_m:J
,assignvariableop_73_adam_conv3d_271_kernel_m:8
*assignvariableop_74_adam_conv3d_271_bias_m:J
,assignvariableop_75_adam_conv3d_272_kernel_m: 8
*assignvariableop_76_adam_conv3d_272_bias_m: J
,assignvariableop_77_adam_conv3d_273_kernel_m:  8
*assignvariableop_78_adam_conv3d_273_bias_m: J
,assignvariableop_79_adam_conv3d_274_kernel_m: @8
*assignvariableop_80_adam_conv3d_274_bias_m:@J
,assignvariableop_81_adam_conv3d_275_kernel_m:@@8
*assignvariableop_82_adam_conv3d_275_bias_m:@K
,assignvariableop_83_adam_conv3d_276_kernel_m:@9
*assignvariableop_84_adam_conv3d_276_bias_m:	L
,assignvariableop_85_adam_conv3d_277_kernel_m:9
*assignvariableop_86_adam_conv3d_277_bias_m:	L
,assignvariableop_87_adam_conv3d_278_kernel_m:9
*assignvariableop_88_adam_conv3d_278_bias_m:	L
,assignvariableop_89_adam_conv3d_279_kernel_m:9
*assignvariableop_90_adam_conv3d_279_bias_m:	U
5assignvariableop_91_adam_conv3d_transpose_40_kernel_m:B
3assignvariableop_92_adam_conv3d_transpose_40_bias_m:	L
,assignvariableop_93_adam_conv3d_280_kernel_m:9
*assignvariableop_94_adam_conv3d_280_bias_m:	L
,assignvariableop_95_adam_conv3d_281_kernel_m:9
*assignvariableop_96_adam_conv3d_281_bias_m:	L
,assignvariableop_97_adam_conv3d_282_kernel_m:9
*assignvariableop_98_adam_conv3d_282_bias_m:	L
,assignvariableop_99_adam_conv3d_283_kernel_m::
+assignvariableop_100_adam_conv3d_283_bias_m:	U
6assignvariableop_101_adam_conv3d_transpose_41_kernel_m:@B
4assignvariableop_102_adam_conv3d_transpose_41_bias_m:@K
-assignvariableop_103_adam_conv3d_284_kernel_m:@@9
+assignvariableop_104_adam_conv3d_284_bias_m:@L
-assignvariableop_105_adam_conv3d_285_kernel_m:@9
+assignvariableop_106_adam_conv3d_285_bias_m:@K
-assignvariableop_107_adam_conv3d_286_kernel_m:@@9
+assignvariableop_108_adam_conv3d_286_bias_m:@K
-assignvariableop_109_adam_conv3d_287_kernel_m:@@9
+assignvariableop_110_adam_conv3d_287_bias_m:@T
6assignvariableop_111_adam_conv3d_transpose_42_kernel_m: @B
4assignvariableop_112_adam_conv3d_transpose_42_bias_m: K
-assignvariableop_113_adam_conv3d_288_kernel_m:  9
+assignvariableop_114_adam_conv3d_288_bias_m: K
-assignvariableop_115_adam_conv3d_289_kernel_m:@ 9
+assignvariableop_116_adam_conv3d_289_bias_m: K
-assignvariableop_117_adam_conv3d_290_kernel_m:  9
+assignvariableop_118_adam_conv3d_290_bias_m: K
-assignvariableop_119_adam_conv3d_291_kernel_m:  9
+assignvariableop_120_adam_conv3d_291_bias_m: T
6assignvariableop_121_adam_conv3d_transpose_43_kernel_m: B
4assignvariableop_122_adam_conv3d_transpose_43_bias_m:K
-assignvariableop_123_adam_conv3d_292_kernel_m:9
+assignvariableop_124_adam_conv3d_292_bias_m:K
-assignvariableop_125_adam_conv3d_293_kernel_m: 9
+assignvariableop_126_adam_conv3d_293_bias_m:K
-assignvariableop_127_adam_conv3d_294_kernel_m:9
+assignvariableop_128_adam_conv3d_294_bias_m:K
-assignvariableop_129_adam_conv3d_295_kernel_m:9
+assignvariableop_130_adam_conv3d_295_bias_m:K
-assignvariableop_131_adam_conv3d_296_kernel_m:9
+assignvariableop_132_adam_conv3d_296_bias_m:K
-assignvariableop_133_adam_conv3d_270_kernel_v:9
+assignvariableop_134_adam_conv3d_270_bias_v:K
-assignvariableop_135_adam_conv3d_271_kernel_v:9
+assignvariableop_136_adam_conv3d_271_bias_v:K
-assignvariableop_137_adam_conv3d_272_kernel_v: 9
+assignvariableop_138_adam_conv3d_272_bias_v: K
-assignvariableop_139_adam_conv3d_273_kernel_v:  9
+assignvariableop_140_adam_conv3d_273_bias_v: K
-assignvariableop_141_adam_conv3d_274_kernel_v: @9
+assignvariableop_142_adam_conv3d_274_bias_v:@K
-assignvariableop_143_adam_conv3d_275_kernel_v:@@9
+assignvariableop_144_adam_conv3d_275_bias_v:@L
-assignvariableop_145_adam_conv3d_276_kernel_v:@:
+assignvariableop_146_adam_conv3d_276_bias_v:	M
-assignvariableop_147_adam_conv3d_277_kernel_v::
+assignvariableop_148_adam_conv3d_277_bias_v:	M
-assignvariableop_149_adam_conv3d_278_kernel_v::
+assignvariableop_150_adam_conv3d_278_bias_v:	M
-assignvariableop_151_adam_conv3d_279_kernel_v::
+assignvariableop_152_adam_conv3d_279_bias_v:	V
6assignvariableop_153_adam_conv3d_transpose_40_kernel_v:C
4assignvariableop_154_adam_conv3d_transpose_40_bias_v:	M
-assignvariableop_155_adam_conv3d_280_kernel_v::
+assignvariableop_156_adam_conv3d_280_bias_v:	M
-assignvariableop_157_adam_conv3d_281_kernel_v::
+assignvariableop_158_adam_conv3d_281_bias_v:	M
-assignvariableop_159_adam_conv3d_282_kernel_v::
+assignvariableop_160_adam_conv3d_282_bias_v:	M
-assignvariableop_161_adam_conv3d_283_kernel_v::
+assignvariableop_162_adam_conv3d_283_bias_v:	U
6assignvariableop_163_adam_conv3d_transpose_41_kernel_v:@B
4assignvariableop_164_adam_conv3d_transpose_41_bias_v:@K
-assignvariableop_165_adam_conv3d_284_kernel_v:@@9
+assignvariableop_166_adam_conv3d_284_bias_v:@L
-assignvariableop_167_adam_conv3d_285_kernel_v:@9
+assignvariableop_168_adam_conv3d_285_bias_v:@K
-assignvariableop_169_adam_conv3d_286_kernel_v:@@9
+assignvariableop_170_adam_conv3d_286_bias_v:@K
-assignvariableop_171_adam_conv3d_287_kernel_v:@@9
+assignvariableop_172_adam_conv3d_287_bias_v:@T
6assignvariableop_173_adam_conv3d_transpose_42_kernel_v: @B
4assignvariableop_174_adam_conv3d_transpose_42_bias_v: K
-assignvariableop_175_adam_conv3d_288_kernel_v:  9
+assignvariableop_176_adam_conv3d_288_bias_v: K
-assignvariableop_177_adam_conv3d_289_kernel_v:@ 9
+assignvariableop_178_adam_conv3d_289_bias_v: K
-assignvariableop_179_adam_conv3d_290_kernel_v:  9
+assignvariableop_180_adam_conv3d_290_bias_v: K
-assignvariableop_181_adam_conv3d_291_kernel_v:  9
+assignvariableop_182_adam_conv3d_291_bias_v: T
6assignvariableop_183_adam_conv3d_transpose_43_kernel_v: B
4assignvariableop_184_adam_conv3d_transpose_43_bias_v:K
-assignvariableop_185_adam_conv3d_292_kernel_v:9
+assignvariableop_186_adam_conv3d_292_bias_v:K
-assignvariableop_187_adam_conv3d_293_kernel_v: 9
+assignvariableop_188_adam_conv3d_293_bias_v:K
-assignvariableop_189_adam_conv3d_294_kernel_v:9
+assignvariableop_190_adam_conv3d_294_bias_v:K
-assignvariableop_191_adam_conv3d_295_kernel_v:9
+assignvariableop_192_adam_conv3d_295_bias_v:K
-assignvariableop_193_adam_conv3d_296_kernel_v:9
+assignvariableop_194_adam_conv3d_296_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_270_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_270_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_271_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_271_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_272_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_272_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_273_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_273_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_274_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_274_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_275_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_275_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_276_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_276_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_277_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_277_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_278_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_278_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_279_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_279_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp.assignvariableop_20_conv3d_transpose_40_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_conv3d_transpose_40_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp%assignvariableop_22_conv3d_280_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv3d_280_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv3d_281_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv3d_281_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_conv3d_282_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv3d_282_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv3d_283_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv3d_283_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp.assignvariableop_30_conv3d_transpose_41_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp,assignvariableop_31_conv3d_transpose_41_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv3d_284_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp#assignvariableop_33_conv3d_284_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp%assignvariableop_34_conv3d_285_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp#assignvariableop_35_conv3d_285_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv3d_286_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv3d_286_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp%assignvariableop_38_conv3d_287_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv3d_287_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp.assignvariableop_40_conv3d_transpose_42_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp,assignvariableop_41_conv3d_transpose_42_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp%assignvariableop_42_conv3d_288_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv3d_288_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp%assignvariableop_44_conv3d_289_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp#assignvariableop_45_conv3d_289_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp%assignvariableop_46_conv3d_290_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp#assignvariableop_47_conv3d_290_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp%assignvariableop_48_conv3d_291_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp#assignvariableop_49_conv3d_291_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp.assignvariableop_50_conv3d_transpose_43_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp,assignvariableop_51_conv3d_transpose_43_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp%assignvariableop_52_conv3d_292_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp#assignvariableop_53_conv3d_292_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp%assignvariableop_54_conv3d_293_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp#assignvariableop_55_conv3d_293_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp%assignvariableop_56_conv3d_294_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp#assignvariableop_57_conv3d_294_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp%assignvariableop_58_conv3d_295_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp#assignvariableop_59_conv3d_295_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp%assignvariableop_60_conv3d_296_kernelIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp#assignvariableop_61_conv3d_296_biasIdentity_61:output:0"/device:CPU:0*
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
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv3d_270_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv3d_270_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_conv3d_271_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_conv3d_271_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_conv3d_272_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_conv3d_272_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv3d_273_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv3d_273_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_conv3d_274_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_conv3d_274_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_conv3d_275_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv3d_275_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv3d_276_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv3d_276_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp,assignvariableop_85_adam_conv3d_277_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp*assignvariableop_86_adam_conv3d_277_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_conv3d_278_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_conv3d_278_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv3d_279_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_conv3d_279_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_conv3d_transpose_40_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_conv3d_transpose_40_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_conv3d_280_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv3d_280_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_95AssignVariableOp,assignvariableop_95_adam_conv3d_281_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_96AssignVariableOp*assignvariableop_96_adam_conv3d_281_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adam_conv3d_282_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_conv3d_282_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_99AssignVariableOp,assignvariableop_99_adam_conv3d_283_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_conv3d_283_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_101AssignVariableOp6assignvariableop_101_adam_conv3d_transpose_41_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_102AssignVariableOp4assignvariableop_102_adam_conv3d_transpose_41_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_103AssignVariableOp-assignvariableop_103_adam_conv3d_284_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_104AssignVariableOp+assignvariableop_104_adam_conv3d_284_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_105AssignVariableOp-assignvariableop_105_adam_conv3d_285_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_conv3d_285_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_107AssignVariableOp-assignvariableop_107_adam_conv3d_286_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_108AssignVariableOp+assignvariableop_108_adam_conv3d_286_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_109AssignVariableOp-assignvariableop_109_adam_conv3d_287_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_conv3d_287_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_111AssignVariableOp6assignvariableop_111_adam_conv3d_transpose_42_kernel_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_112AssignVariableOp4assignvariableop_112_adam_conv3d_transpose_42_bias_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_113AssignVariableOp-assignvariableop_113_adam_conv3d_288_kernel_mIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_114AssignVariableOp+assignvariableop_114_adam_conv3d_288_bias_mIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_115AssignVariableOp-assignvariableop_115_adam_conv3d_289_kernel_mIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_conv3d_289_bias_mIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_117AssignVariableOp-assignvariableop_117_adam_conv3d_290_kernel_mIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_conv3d_290_bias_mIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_119AssignVariableOp-assignvariableop_119_adam_conv3d_291_kernel_mIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_120AssignVariableOp+assignvariableop_120_adam_conv3d_291_bias_mIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_121AssignVariableOp6assignvariableop_121_adam_conv3d_transpose_43_kernel_mIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_122AssignVariableOp4assignvariableop_122_adam_conv3d_transpose_43_bias_mIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_123AssignVariableOp-assignvariableop_123_adam_conv3d_292_kernel_mIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_conv3d_292_bias_mIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_125AssignVariableOp-assignvariableop_125_adam_conv3d_293_kernel_mIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_126AssignVariableOp+assignvariableop_126_adam_conv3d_293_bias_mIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_127AssignVariableOp-assignvariableop_127_adam_conv3d_294_kernel_mIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_128AssignVariableOp+assignvariableop_128_adam_conv3d_294_bias_mIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_129AssignVariableOp-assignvariableop_129_adam_conv3d_295_kernel_mIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_130AssignVariableOp+assignvariableop_130_adam_conv3d_295_bias_mIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_131AssignVariableOp-assignvariableop_131_adam_conv3d_296_kernel_mIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adam_conv3d_296_bias_mIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_133AssignVariableOp-assignvariableop_133_adam_conv3d_270_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_134AssignVariableOp+assignvariableop_134_adam_conv3d_270_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_135AssignVariableOp-assignvariableop_135_adam_conv3d_271_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_136AssignVariableOp+assignvariableop_136_adam_conv3d_271_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_137AssignVariableOp-assignvariableop_137_adam_conv3d_272_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_138AssignVariableOp+assignvariableop_138_adam_conv3d_272_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_139AssignVariableOp-assignvariableop_139_adam_conv3d_273_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_140AssignVariableOp+assignvariableop_140_adam_conv3d_273_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_141AssignVariableOp-assignvariableop_141_adam_conv3d_274_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_142AssignVariableOp+assignvariableop_142_adam_conv3d_274_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_143AssignVariableOp-assignvariableop_143_adam_conv3d_275_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_144AssignVariableOp+assignvariableop_144_adam_conv3d_275_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_145AssignVariableOp-assignvariableop_145_adam_conv3d_276_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_146AssignVariableOp+assignvariableop_146_adam_conv3d_276_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_147AssignVariableOp-assignvariableop_147_adam_conv3d_277_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_148AssignVariableOp+assignvariableop_148_adam_conv3d_277_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_149AssignVariableOp-assignvariableop_149_adam_conv3d_278_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_150AssignVariableOp+assignvariableop_150_adam_conv3d_278_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_151AssignVariableOp-assignvariableop_151_adam_conv3d_279_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_152AssignVariableOp+assignvariableop_152_adam_conv3d_279_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_153AssignVariableOp6assignvariableop_153_adam_conv3d_transpose_40_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_154AssignVariableOp4assignvariableop_154_adam_conv3d_transpose_40_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_155AssignVariableOp-assignvariableop_155_adam_conv3d_280_kernel_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_156AssignVariableOp+assignvariableop_156_adam_conv3d_280_bias_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_157AssignVariableOp-assignvariableop_157_adam_conv3d_281_kernel_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_158AssignVariableOp+assignvariableop_158_adam_conv3d_281_bias_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_159AssignVariableOp-assignvariableop_159_adam_conv3d_282_kernel_vIdentity_159:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_160AssignVariableOp+assignvariableop_160_adam_conv3d_282_bias_vIdentity_160:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_161AssignVariableOp-assignvariableop_161_adam_conv3d_283_kernel_vIdentity_161:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_162AssignVariableOp+assignvariableop_162_adam_conv3d_283_bias_vIdentity_162:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_163AssignVariableOp6assignvariableop_163_adam_conv3d_transpose_41_kernel_vIdentity_163:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_164AssignVariableOp4assignvariableop_164_adam_conv3d_transpose_41_bias_vIdentity_164:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_165AssignVariableOp-assignvariableop_165_adam_conv3d_284_kernel_vIdentity_165:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_166AssignVariableOp+assignvariableop_166_adam_conv3d_284_bias_vIdentity_166:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_167AssignVariableOp-assignvariableop_167_adam_conv3d_285_kernel_vIdentity_167:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_168AssignVariableOp+assignvariableop_168_adam_conv3d_285_bias_vIdentity_168:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_169AssignVariableOp-assignvariableop_169_adam_conv3d_286_kernel_vIdentity_169:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_170AssignVariableOp+assignvariableop_170_adam_conv3d_286_bias_vIdentity_170:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_171AssignVariableOp-assignvariableop_171_adam_conv3d_287_kernel_vIdentity_171:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_172AssignVariableOp+assignvariableop_172_adam_conv3d_287_bias_vIdentity_172:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_173AssignVariableOp6assignvariableop_173_adam_conv3d_transpose_42_kernel_vIdentity_173:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_174AssignVariableOp4assignvariableop_174_adam_conv3d_transpose_42_bias_vIdentity_174:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_175AssignVariableOp-assignvariableop_175_adam_conv3d_288_kernel_vIdentity_175:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_176AssignVariableOp+assignvariableop_176_adam_conv3d_288_bias_vIdentity_176:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_177AssignVariableOp-assignvariableop_177_adam_conv3d_289_kernel_vIdentity_177:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_178AssignVariableOp+assignvariableop_178_adam_conv3d_289_bias_vIdentity_178:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_179AssignVariableOp-assignvariableop_179_adam_conv3d_290_kernel_vIdentity_179:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_180AssignVariableOp+assignvariableop_180_adam_conv3d_290_bias_vIdentity_180:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_181AssignVariableOp-assignvariableop_181_adam_conv3d_291_kernel_vIdentity_181:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_182AssignVariableOp+assignvariableop_182_adam_conv3d_291_bias_vIdentity_182:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_183IdentityRestoreV2:tensors:183"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_183AssignVariableOp6assignvariableop_183_adam_conv3d_transpose_43_kernel_vIdentity_183:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_184IdentityRestoreV2:tensors:184"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_184AssignVariableOp4assignvariableop_184_adam_conv3d_transpose_43_bias_vIdentity_184:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_185IdentityRestoreV2:tensors:185"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_185AssignVariableOp-assignvariableop_185_adam_conv3d_292_kernel_vIdentity_185:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_186IdentityRestoreV2:tensors:186"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_186AssignVariableOp+assignvariableop_186_adam_conv3d_292_bias_vIdentity_186:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_187IdentityRestoreV2:tensors:187"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_187AssignVariableOp-assignvariableop_187_adam_conv3d_293_kernel_vIdentity_187:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_188IdentityRestoreV2:tensors:188"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_188AssignVariableOp+assignvariableop_188_adam_conv3d_293_bias_vIdentity_188:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_189IdentityRestoreV2:tensors:189"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_189AssignVariableOp-assignvariableop_189_adam_conv3d_294_kernel_vIdentity_189:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_190IdentityRestoreV2:tensors:190"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_190AssignVariableOp+assignvariableop_190_adam_conv3d_294_bias_vIdentity_190:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_191IdentityRestoreV2:tensors:191"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_191AssignVariableOp-assignvariableop_191_adam_conv3d_295_kernel_vIdentity_191:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_192IdentityRestoreV2:tensors:192"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_192AssignVariableOp+assignvariableop_192_adam_conv3d_295_bias_vIdentity_192:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_193IdentityRestoreV2:tensors:193"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_193AssignVariableOp-assignvariableop_193_adam_conv3d_296_kernel_vIdentity_193:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_194IdentityRestoreV2:tensors:194"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_194AssignVariableOp+assignvariableop_194_adam_conv3d_296_bias_vIdentity_194:output:0"/device:CPU:0*
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
к
h
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_332849

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
)__inference_model_10_layer_call_fn_331698

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
D__inference_model_10_layer_call_and_return_conditional_losses_330244
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
з

F__inference_conv3d_280_layer_call_and_return_conditional_losses_332959

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
+__inference_conv3d_289_layer_call_fn_333255

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
F__inference_conv3d_289_layer_call_and_return_conditional_losses_330104
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
ђ
Є
+__inference_conv3d_274_layer_call_fn_332758

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
F__inference_conv3d_274_layer_call_and_return_conditional_losses_329805
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
љ
Ї
+__inference_conv3d_283_layer_call_fn_333021

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
F__inference_conv3d_283_layer_call_and_return_conditional_losses_329974
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
к"
Ё
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_329602

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
І&
Ѓ
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_332939

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
4__inference_conv3d_transpose_42_layer_call_fn_333178

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
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_329648
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
ђ
Є
+__inference_conv3d_291_layer_call_fn_333295

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
F__inference_conv3d_291_layer_call_and_return_conditional_losses_330138
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
Њ
i
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_329460

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
Ы

F__inference_conv3d_293_layer_call_and_return_conditional_losses_333403

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
з

F__inference_conv3d_281_layer_call_and_return_conditional_losses_332992

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
F__inference_conv3d_281_layer_call_and_return_conditional_losses_329940

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
ж"
 
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_329648

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
з

F__inference_conv3d_277_layer_call_and_return_conditional_losses_329857

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
ѕ
Ѕ
+__inference_conv3d_285_layer_call_fn_333118

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
F__inference_conv3d_285_layer_call_and_return_conditional_losses_330022
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
	
e
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_329713

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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_330056

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
F__inference_conv3d_293_layer_call_and_return_conditional_losses_330186

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
з

F__inference_conv3d_280_layer_call_and_return_conditional_losses_329914

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
ё
M
1__inference_max_pooling3d_43_layer_call_fn_332844

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
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_329508
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
+__inference_conv3d_273_layer_call_fn_332728

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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_329787
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
+__inference_conv3d_294_layer_call_fn_333412

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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_330203
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
к"
Ё
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_333076

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
з

F__inference_conv3d_283_layer_call_and_return_conditional_losses_333032

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
а

F__inference_conv3d_296_layer_call_and_return_conditional_losses_333475

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
Ы

F__inference_conv3d_272_layer_call_and_return_conditional_losses_332719

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
г

F__inference_conv3d_276_layer_call_and_return_conditional_losses_332819

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

<
!__inference__wrapped_model_329450
input_11P
2model_10_conv3d_270_conv3d_readvariableop_resource:A
3model_10_conv3d_270_biasadd_readvariableop_resource:P
2model_10_conv3d_271_conv3d_readvariableop_resource:A
3model_10_conv3d_271_biasadd_readvariableop_resource:P
2model_10_conv3d_272_conv3d_readvariableop_resource: A
3model_10_conv3d_272_biasadd_readvariableop_resource: P
2model_10_conv3d_273_conv3d_readvariableop_resource:  A
3model_10_conv3d_273_biasadd_readvariableop_resource: P
2model_10_conv3d_274_conv3d_readvariableop_resource: @A
3model_10_conv3d_274_biasadd_readvariableop_resource:@P
2model_10_conv3d_275_conv3d_readvariableop_resource:@@A
3model_10_conv3d_275_biasadd_readvariableop_resource:@Q
2model_10_conv3d_276_conv3d_readvariableop_resource:@B
3model_10_conv3d_276_biasadd_readvariableop_resource:	R
2model_10_conv3d_277_conv3d_readvariableop_resource:B
3model_10_conv3d_277_biasadd_readvariableop_resource:	R
2model_10_conv3d_278_conv3d_readvariableop_resource:B
3model_10_conv3d_278_biasadd_readvariableop_resource:	R
2model_10_conv3d_279_conv3d_readvariableop_resource:B
3model_10_conv3d_279_biasadd_readvariableop_resource:	e
Emodel_10_conv3d_transpose_40_conv3d_transpose_readvariableop_resource:K
<model_10_conv3d_transpose_40_biasadd_readvariableop_resource:	R
2model_10_conv3d_280_conv3d_readvariableop_resource:B
3model_10_conv3d_280_biasadd_readvariableop_resource:	R
2model_10_conv3d_281_conv3d_readvariableop_resource:B
3model_10_conv3d_281_biasadd_readvariableop_resource:	R
2model_10_conv3d_282_conv3d_readvariableop_resource:B
3model_10_conv3d_282_biasadd_readvariableop_resource:	R
2model_10_conv3d_283_conv3d_readvariableop_resource:B
3model_10_conv3d_283_biasadd_readvariableop_resource:	d
Emodel_10_conv3d_transpose_41_conv3d_transpose_readvariableop_resource:@J
<model_10_conv3d_transpose_41_biasadd_readvariableop_resource:@P
2model_10_conv3d_284_conv3d_readvariableop_resource:@@A
3model_10_conv3d_284_biasadd_readvariableop_resource:@Q
2model_10_conv3d_285_conv3d_readvariableop_resource:@A
3model_10_conv3d_285_biasadd_readvariableop_resource:@P
2model_10_conv3d_286_conv3d_readvariableop_resource:@@A
3model_10_conv3d_286_biasadd_readvariableop_resource:@P
2model_10_conv3d_287_conv3d_readvariableop_resource:@@A
3model_10_conv3d_287_biasadd_readvariableop_resource:@c
Emodel_10_conv3d_transpose_42_conv3d_transpose_readvariableop_resource: @J
<model_10_conv3d_transpose_42_biasadd_readvariableop_resource: P
2model_10_conv3d_288_conv3d_readvariableop_resource:  A
3model_10_conv3d_288_biasadd_readvariableop_resource: P
2model_10_conv3d_289_conv3d_readvariableop_resource:@ A
3model_10_conv3d_289_biasadd_readvariableop_resource: P
2model_10_conv3d_290_conv3d_readvariableop_resource:  A
3model_10_conv3d_290_biasadd_readvariableop_resource: P
2model_10_conv3d_291_conv3d_readvariableop_resource:  A
3model_10_conv3d_291_biasadd_readvariableop_resource: c
Emodel_10_conv3d_transpose_43_conv3d_transpose_readvariableop_resource: J
<model_10_conv3d_transpose_43_biasadd_readvariableop_resource:P
2model_10_conv3d_292_conv3d_readvariableop_resource:A
3model_10_conv3d_292_biasadd_readvariableop_resource:P
2model_10_conv3d_293_conv3d_readvariableop_resource: A
3model_10_conv3d_293_biasadd_readvariableop_resource:P
2model_10_conv3d_294_conv3d_readvariableop_resource:A
3model_10_conv3d_294_biasadd_readvariableop_resource:P
2model_10_conv3d_295_conv3d_readvariableop_resource:A
3model_10_conv3d_295_biasadd_readvariableop_resource:P
2model_10_conv3d_296_conv3d_readvariableop_resource:A
3model_10_conv3d_296_biasadd_readvariableop_resource:
identityЂ*model_10/conv3d_270/BiasAdd/ReadVariableOpЂ)model_10/conv3d_270/Conv3D/ReadVariableOpЂ*model_10/conv3d_271/BiasAdd/ReadVariableOpЂ)model_10/conv3d_271/Conv3D/ReadVariableOpЂ*model_10/conv3d_272/BiasAdd/ReadVariableOpЂ)model_10/conv3d_272/Conv3D/ReadVariableOpЂ*model_10/conv3d_273/BiasAdd/ReadVariableOpЂ)model_10/conv3d_273/Conv3D/ReadVariableOpЂ*model_10/conv3d_274/BiasAdd/ReadVariableOpЂ)model_10/conv3d_274/Conv3D/ReadVariableOpЂ*model_10/conv3d_275/BiasAdd/ReadVariableOpЂ)model_10/conv3d_275/Conv3D/ReadVariableOpЂ*model_10/conv3d_276/BiasAdd/ReadVariableOpЂ)model_10/conv3d_276/Conv3D/ReadVariableOpЂ*model_10/conv3d_277/BiasAdd/ReadVariableOpЂ)model_10/conv3d_277/Conv3D/ReadVariableOpЂ*model_10/conv3d_278/BiasAdd/ReadVariableOpЂ)model_10/conv3d_278/Conv3D/ReadVariableOpЂ*model_10/conv3d_279/BiasAdd/ReadVariableOpЂ)model_10/conv3d_279/Conv3D/ReadVariableOpЂ*model_10/conv3d_280/BiasAdd/ReadVariableOpЂ)model_10/conv3d_280/Conv3D/ReadVariableOpЂ*model_10/conv3d_281/BiasAdd/ReadVariableOpЂ)model_10/conv3d_281/Conv3D/ReadVariableOpЂ*model_10/conv3d_282/BiasAdd/ReadVariableOpЂ)model_10/conv3d_282/Conv3D/ReadVariableOpЂ*model_10/conv3d_283/BiasAdd/ReadVariableOpЂ)model_10/conv3d_283/Conv3D/ReadVariableOpЂ*model_10/conv3d_284/BiasAdd/ReadVariableOpЂ)model_10/conv3d_284/Conv3D/ReadVariableOpЂ*model_10/conv3d_285/BiasAdd/ReadVariableOpЂ)model_10/conv3d_285/Conv3D/ReadVariableOpЂ*model_10/conv3d_286/BiasAdd/ReadVariableOpЂ)model_10/conv3d_286/Conv3D/ReadVariableOpЂ*model_10/conv3d_287/BiasAdd/ReadVariableOpЂ)model_10/conv3d_287/Conv3D/ReadVariableOpЂ*model_10/conv3d_288/BiasAdd/ReadVariableOpЂ)model_10/conv3d_288/Conv3D/ReadVariableOpЂ*model_10/conv3d_289/BiasAdd/ReadVariableOpЂ)model_10/conv3d_289/Conv3D/ReadVariableOpЂ*model_10/conv3d_290/BiasAdd/ReadVariableOpЂ)model_10/conv3d_290/Conv3D/ReadVariableOpЂ*model_10/conv3d_291/BiasAdd/ReadVariableOpЂ)model_10/conv3d_291/Conv3D/ReadVariableOpЂ*model_10/conv3d_292/BiasAdd/ReadVariableOpЂ)model_10/conv3d_292/Conv3D/ReadVariableOpЂ*model_10/conv3d_293/BiasAdd/ReadVariableOpЂ)model_10/conv3d_293/Conv3D/ReadVariableOpЂ*model_10/conv3d_294/BiasAdd/ReadVariableOpЂ)model_10/conv3d_294/Conv3D/ReadVariableOpЂ*model_10/conv3d_295/BiasAdd/ReadVariableOpЂ)model_10/conv3d_295/Conv3D/ReadVariableOpЂ*model_10/conv3d_296/BiasAdd/ReadVariableOpЂ)model_10/conv3d_296/Conv3D/ReadVariableOpЂ3model_10/conv3d_transpose_40/BiasAdd/ReadVariableOpЂ<model_10/conv3d_transpose_40/conv3d_transpose/ReadVariableOpЂ3model_10/conv3d_transpose_41/BiasAdd/ReadVariableOpЂ<model_10/conv3d_transpose_41/conv3d_transpose/ReadVariableOpЂ3model_10/conv3d_transpose_42/BiasAdd/ReadVariableOpЂ<model_10/conv3d_transpose_42/conv3d_transpose/ReadVariableOpЂ3model_10/conv3d_transpose_43/BiasAdd/ReadVariableOpЂ<model_10/conv3d_transpose_43/conv3d_transpose/ReadVariableOp 
'model_10/zero_padding3d_10/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     К
model_10/zero_padding3d_10/PadPadinput_110model_10/zero_padding3d_10/Pad/paddings:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_10/conv3d_270/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_270_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_10/conv3d_270/Conv3DConv3D'model_10/zero_padding3d_10/Pad:output:01model_10/conv3d_270/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_270/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_270_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_10/conv3d_270/BiasAddBiasAdd#model_10/conv3d_270/Conv3D:output:02model_10/conv3d_270/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_10/conv3d_270/ReluRelu$model_10/conv3d_270/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_10/conv3d_271/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_271_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_10/conv3d_271/Conv3DConv3D&model_10/conv3d_270/Relu:activations:01model_10/conv3d_271/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_271/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_271_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_10/conv3d_271/BiasAddBiasAdd#model_10/conv3d_271/Conv3D:output:02model_10/conv3d_271/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_10/conv3d_271/ReluRelu$model_10/conv3d_271/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџя
#model_10/max_pooling3d_40/MaxPool3D	MaxPool3D&model_10/conv3d_271/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
Ј
)model_10/conv3d_272/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_272_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0
model_10/conv3d_272/Conv3DConv3D,model_10/max_pooling3d_40/MaxPool3D:output:01model_10/conv3d_272/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_10/conv3d_272/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_272_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_10/conv3d_272/BiasAddBiasAdd#model_10/conv3d_272/Conv3D:output:02model_10/conv3d_272/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_272/ReluRelu$model_10/conv3d_272/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_10/conv3d_273/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_273_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_10/conv3d_273/Conv3DConv3D&model_10/conv3d_272/Relu:activations:01model_10/conv3d_273/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_10/conv3d_273/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_273_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_10/conv3d_273/BiasAddBiasAdd#model_10/conv3d_273/Conv3D:output:02model_10/conv3d_273/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_273/ReluRelu$model_10/conv3d_273/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ я
#model_10/max_pooling3d_41/MaxPool3D	MaxPool3D&model_10/conv3d_273/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize	
*
paddingVALID*
strides	
Ј
)model_10/conv3d_274/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_274_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype0
model_10/conv3d_274/Conv3DConv3D,model_10/max_pooling3d_41/MaxPool3D:output:01model_10/conv3d_274/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_10/conv3d_274/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_274_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_10/conv3d_274/BiasAddBiasAdd#model_10/conv3d_274/Conv3D:output:02model_10/conv3d_274/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_10/conv3d_274/ReluRelu$model_10/conv3d_274/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_10/conv3d_275/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_275_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_10/conv3d_275/Conv3DConv3D&model_10/conv3d_274/Relu:activations:01model_10/conv3d_275/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_10/conv3d_275/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_275_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_10/conv3d_275/BiasAddBiasAdd#model_10/conv3d_275/Conv3D:output:02model_10/conv3d_275/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_10/conv3d_275/ReluRelu$model_10/conv3d_275/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@я
#model_10/max_pooling3d_42/MaxPool3D	MaxPool3D&model_10/conv3d_275/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize	
*
paddingVALID*
strides	
Љ
)model_10/conv3d_276/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_276_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0
model_10/conv3d_276/Conv3DConv3D,model_10/max_pooling3d_42/MaxPool3D:output:01model_10/conv3d_276/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_276/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_276_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_276/BiasAddBiasAdd#model_10/conv3d_276/Conv3D:output:02model_10/conv3d_276/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_276/ReluRelu$model_10/conv3d_276/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_10/conv3d_277/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_277_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_10/conv3d_277/Conv3DConv3D&model_10/conv3d_276/Relu:activations:01model_10/conv3d_277/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_277/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_277_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_277/BiasAddBiasAdd#model_10/conv3d_277/Conv3D:output:02model_10/conv3d_277/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_277/ReluRelu$model_10/conv3d_277/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
#model_10/max_pooling3d_43/MaxPool3D	MaxPool3D&model_10/conv3d_277/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
Њ
)model_10/conv3d_278/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_278_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_10/conv3d_278/Conv3DConv3D,model_10/max_pooling3d_43/MaxPool3D:output:01model_10/conv3d_278/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_278/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_278_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_278/BiasAddBiasAdd#model_10/conv3d_278/Conv3D:output:02model_10/conv3d_278/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_278/ReluRelu$model_10/conv3d_278/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_10/conv3d_279/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_279_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_10/conv3d_279/Conv3DConv3D&model_10/conv3d_278/Relu:activations:01model_10/conv3d_279/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_279/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_279_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_279/BiasAddBiasAdd#model_10/conv3d_279/Conv3D:output:02model_10/conv3d_279/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_279/ReluRelu$model_10/conv3d_279/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
"model_10/conv3d_transpose_40/ShapeShape&model_10/conv3d_279/Relu:activations:0*
T0*
_output_shapes
:z
0model_10/conv3d_transpose_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_10/conv3d_transpose_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_10/conv3d_transpose_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_10/conv3d_transpose_40/strided_sliceStridedSlice+model_10/conv3d_transpose_40/Shape:output:09model_10/conv3d_transpose_40/strided_slice/stack:output:0;model_10/conv3d_transpose_40/strided_slice/stack_1:output:0;model_10/conv3d_transpose_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_40/strided_slice_1StridedSlice+model_10/conv3d_transpose_40/Shape:output:0;model_10/conv3d_transpose_40/strided_slice_1/stack:output:0=model_10/conv3d_transpose_40/strided_slice_1/stack_1:output:0=model_10/conv3d_transpose_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_40/strided_slice_2StridedSlice+model_10/conv3d_transpose_40/Shape:output:0;model_10/conv3d_transpose_40/strided_slice_2/stack:output:0=model_10/conv3d_transpose_40/strided_slice_2/stack_1:output:0=model_10/conv3d_transpose_40/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_40/strided_slice_3StridedSlice+model_10/conv3d_transpose_40/Shape:output:0;model_10/conv3d_transpose_40/strided_slice_3/stack:output:0=model_10/conv3d_transpose_40/strided_slice_3/stack_1:output:0=model_10/conv3d_transpose_40/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_10/conv3d_transpose_40/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_10/conv3d_transpose_40/mulMul5model_10/conv3d_transpose_40/strided_slice_1:output:0+model_10/conv3d_transpose_40/mul/y:output:0*
T0*
_output_shapes
: d
"model_10/conv3d_transpose_40/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
 model_10/conv3d_transpose_40/addAddV2$model_10/conv3d_transpose_40/mul:z:0+model_10/conv3d_transpose_40/add/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_40/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_40/mul_1Mul5model_10/conv3d_transpose_40/strided_slice_2:output:0-model_10/conv3d_transpose_40/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_40/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
"model_10/conv3d_transpose_40/add_1AddV2&model_10/conv3d_transpose_40/mul_1:z:0-model_10/conv3d_transpose_40/add_1/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_40/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_40/mul_2Mul5model_10/conv3d_transpose_40/strided_slice_3:output:0-model_10/conv3d_transpose_40/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_40/add_2/yConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
"model_10/conv3d_transpose_40/add_2AddV2&model_10/conv3d_transpose_40/mul_2:z:0-model_10/conv3d_transpose_40/add_2/y:output:0*
T0*
_output_shapes
: g
$model_10/conv3d_transpose_40/stack/4Const*
_output_shapes
: *
dtype0*
value
B :В
"model_10/conv3d_transpose_40/stackPack3model_10/conv3d_transpose_40/strided_slice:output:0$model_10/conv3d_transpose_40/add:z:0&model_10/conv3d_transpose_40/add_1:z:0&model_10/conv3d_transpose_40/add_2:z:0-model_10/conv3d_transpose_40/stack/4:output:0*
N*
T0*
_output_shapes
:а
<model_10/conv3d_transpose_40/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_10_conv3d_transpose_40_conv3d_transpose_readvariableop_resource*,
_output_shapes
:*
dtype0х
-model_10/conv3d_transpose_40/conv3d_transposeConv3DBackpropInputV2+model_10/conv3d_transpose_40/stack:output:0Dmodel_10/conv3d_transpose_40/conv3d_transpose/ReadVariableOp:value:0&model_10/conv3d_279/Relu:activations:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides	
­
3model_10/conv3d_transpose_40/BiasAdd/ReadVariableOpReadVariableOp<model_10_conv3d_transpose_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ў
$model_10/conv3d_transpose_40/BiasAddBiasAdd6model_10/conv3d_transpose_40/conv3d_transpose:output:0;model_10/conv3d_transpose_40/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_10/conv3d_280/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_280_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_10/conv3d_280/Conv3DConv3D-model_10/conv3d_transpose_40/BiasAdd:output:01model_10/conv3d_280/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_280/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_280_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_280/BiasAddBiasAdd#model_10/conv3d_280/Conv3D:output:02model_10/conv3d_280/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_280/ReluRelu$model_10/conv3d_280/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe
#model_10/concatenate_40/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_10/concatenate_40/concatConcatV2&model_10/conv3d_277/Relu:activations:0&model_10/conv3d_280/Relu:activations:0,model_10/concatenate_40/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_10/conv3d_281/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_281_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_10/conv3d_281/Conv3DConv3D'model_10/concatenate_40/concat:output:01model_10/conv3d_281/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_281/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_281_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_281/BiasAddBiasAdd#model_10/conv3d_281/Conv3D:output:02model_10/conv3d_281/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_281/ReluRelu$model_10/conv3d_281/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_10/conv3d_282/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_282_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_10/conv3d_282/Conv3DConv3D&model_10/conv3d_281/Relu:activations:01model_10/conv3d_282/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_282/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_282_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_282/BiasAddBiasAdd#model_10/conv3d_282/Conv3D:output:02model_10/conv3d_282/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_282/ReluRelu$model_10/conv3d_282/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЊ
)model_10/conv3d_283/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_283_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
model_10/conv3d_283/Conv3DConv3D&model_10/conv3d_282/Relu:activations:01model_10/conv3d_283/Conv3D/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_283/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_283_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0й
model_10/conv3d_283/BiasAddBiasAdd#model_10/conv3d_283/Conv3D:output:02model_10/conv3d_283/BiasAdd/ReadVariableOp:value:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_283/ReluRelu$model_10/conv3d_283/BiasAdd:output:0*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџx
"model_10/conv3d_transpose_41/ShapeShape&model_10/conv3d_283/Relu:activations:0*
T0*
_output_shapes
:z
0model_10/conv3d_transpose_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_10/conv3d_transpose_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_10/conv3d_transpose_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_10/conv3d_transpose_41/strided_sliceStridedSlice+model_10/conv3d_transpose_41/Shape:output:09model_10/conv3d_transpose_41/strided_slice/stack:output:0;model_10/conv3d_transpose_41/strided_slice/stack_1:output:0;model_10/conv3d_transpose_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_41/strided_slice_1StridedSlice+model_10/conv3d_transpose_41/Shape:output:0;model_10/conv3d_transpose_41/strided_slice_1/stack:output:0=model_10/conv3d_transpose_41/strided_slice_1/stack_1:output:0=model_10/conv3d_transpose_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_41/strided_slice_2StridedSlice+model_10/conv3d_transpose_41/Shape:output:0;model_10/conv3d_transpose_41/strided_slice_2/stack:output:0=model_10/conv3d_transpose_41/strided_slice_2/stack_1:output:0=model_10/conv3d_transpose_41/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_41/strided_slice_3StridedSlice+model_10/conv3d_transpose_41/Shape:output:0;model_10/conv3d_transpose_41/strided_slice_3/stack:output:0=model_10/conv3d_transpose_41/strided_slice_3/stack_1:output:0=model_10/conv3d_transpose_41/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_10/conv3d_transpose_41/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_10/conv3d_transpose_41/mulMul5model_10/conv3d_transpose_41/strided_slice_1:output:0+model_10/conv3d_transpose_41/mul/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_41/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_41/mul_1Mul5model_10/conv3d_transpose_41/strided_slice_2:output:0-model_10/conv3d_transpose_41/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_41/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_41/mul_2Mul5model_10/conv3d_transpose_41/strided_slice_3:output:0-model_10/conv3d_transpose_41/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_41/stack/4Const*
_output_shapes
: *
dtype0*
value	B :@В
"model_10/conv3d_transpose_41/stackPack3model_10/conv3d_transpose_41/strided_slice:output:0$model_10/conv3d_transpose_41/mul:z:0&model_10/conv3d_transpose_41/mul_1:z:0&model_10/conv3d_transpose_41/mul_2:z:0-model_10/conv3d_transpose_41/stack/4:output:0*
N*
T0*
_output_shapes
:Я
<model_10/conv3d_transpose_41/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_10_conv3d_transpose_41_conv3d_transpose_readvariableop_resource*+
_output_shapes
:@*
dtype0у
-model_10/conv3d_transpose_41/conv3d_transposeConv3DBackpropInputV2+model_10/conv3d_transpose_41/stack:output:0Dmodel_10/conv3d_transpose_41/conv3d_transpose/ReadVariableOp:value:0&model_10/conv3d_283/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	
Ќ
3model_10/conv3d_transpose_41/BiasAdd/ReadVariableOpReadVariableOp<model_10_conv3d_transpose_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0§
$model_10/conv3d_transpose_41/BiasAddBiasAdd6model_10/conv3d_transpose_41/conv3d_transpose:output:0;model_10/conv3d_transpose_41/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_10/conv3d_284/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_284_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_10/conv3d_284/Conv3DConv3D-model_10/conv3d_transpose_41/BiasAdd:output:01model_10/conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_10/conv3d_284/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_10/conv3d_284/BiasAddBiasAdd#model_10/conv3d_284/Conv3D:output:02model_10/conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_10/conv3d_284/ReluRelu$model_10/conv3d_284/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@e
#model_10/concatenate_41/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_10/concatenate_41/concatConcatV2&model_10/conv3d_275/Relu:activations:0&model_10/conv3d_284/Relu:activations:0,model_10/concatenate_41/concat/axis:output:0*
N*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЉ
)model_10/conv3d_285/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_285_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0
model_10/conv3d_285/Conv3DConv3D'model_10/concatenate_41/concat:output:01model_10/conv3d_285/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_10/conv3d_285/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_285_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_10/conv3d_285/BiasAddBiasAdd#model_10/conv3d_285/Conv3D:output:02model_10/conv3d_285/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_10/conv3d_285/ReluRelu$model_10/conv3d_285/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_10/conv3d_286/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_286_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_10/conv3d_286/Conv3DConv3D&model_10/conv3d_285/Relu:activations:01model_10/conv3d_286/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_10/conv3d_286/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_286_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_10/conv3d_286/BiasAddBiasAdd#model_10/conv3d_286/Conv3D:output:02model_10/conv3d_286/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_10/conv3d_286/ReluRelu$model_10/conv3d_286/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_10/conv3d_287/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_287_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
model_10/conv3d_287/Conv3DConv3D&model_10/conv3d_286/Relu:activations:01model_10/conv3d_287/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides	

*model_10/conv3d_287/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_287_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0и
model_10/conv3d_287/BiasAddBiasAdd#model_10/conv3d_287/Conv3D:output:02model_10/conv3d_287/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model_10/conv3d_287/ReluRelu$model_10/conv3d_287/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@x
"model_10/conv3d_transpose_42/ShapeShape&model_10/conv3d_287/Relu:activations:0*
T0*
_output_shapes
:z
0model_10/conv3d_transpose_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_10/conv3d_transpose_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_10/conv3d_transpose_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_10/conv3d_transpose_42/strided_sliceStridedSlice+model_10/conv3d_transpose_42/Shape:output:09model_10/conv3d_transpose_42/strided_slice/stack:output:0;model_10/conv3d_transpose_42/strided_slice/stack_1:output:0;model_10/conv3d_transpose_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_42/strided_slice_1StridedSlice+model_10/conv3d_transpose_42/Shape:output:0;model_10/conv3d_transpose_42/strided_slice_1/stack:output:0=model_10/conv3d_transpose_42/strided_slice_1/stack_1:output:0=model_10/conv3d_transpose_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_42/strided_slice_2StridedSlice+model_10/conv3d_transpose_42/Shape:output:0;model_10/conv3d_transpose_42/strided_slice_2/stack:output:0=model_10/conv3d_transpose_42/strided_slice_2/stack_1:output:0=model_10/conv3d_transpose_42/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_42/strided_slice_3StridedSlice+model_10/conv3d_transpose_42/Shape:output:0;model_10/conv3d_transpose_42/strided_slice_3/stack:output:0=model_10/conv3d_transpose_42/strided_slice_3/stack_1:output:0=model_10/conv3d_transpose_42/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_10/conv3d_transpose_42/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_10/conv3d_transpose_42/mulMul5model_10/conv3d_transpose_42/strided_slice_1:output:0+model_10/conv3d_transpose_42/mul/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_42/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_42/mul_1Mul5model_10/conv3d_transpose_42/strided_slice_2:output:0-model_10/conv3d_transpose_42/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_42/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_42/mul_2Mul5model_10/conv3d_transpose_42/strided_slice_3:output:0-model_10/conv3d_transpose_42/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_42/stack/4Const*
_output_shapes
: *
dtype0*
value	B : В
"model_10/conv3d_transpose_42/stackPack3model_10/conv3d_transpose_42/strided_slice:output:0$model_10/conv3d_transpose_42/mul:z:0&model_10/conv3d_transpose_42/mul_1:z:0&model_10/conv3d_transpose_42/mul_2:z:0-model_10/conv3d_transpose_42/stack/4:output:0*
N*
T0*
_output_shapes
:Ю
<model_10/conv3d_transpose_42/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_10_conv3d_transpose_42_conv3d_transpose_readvariableop_resource**
_output_shapes
: @*
dtype0у
-model_10/conv3d_transpose_42/conv3d_transposeConv3DBackpropInputV2+model_10/conv3d_transpose_42/stack:output:0Dmodel_10/conv3d_transpose_42/conv3d_transpose/ReadVariableOp:value:0&model_10/conv3d_287/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	
Ќ
3model_10/conv3d_transpose_42/BiasAdd/ReadVariableOpReadVariableOp<model_10_conv3d_transpose_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0§
$model_10/conv3d_transpose_42/BiasAddBiasAdd6model_10/conv3d_transpose_42/conv3d_transpose:output:0;model_10/conv3d_transpose_42/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_10/conv3d_288/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_288_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_10/conv3d_288/Conv3DConv3D-model_10/conv3d_transpose_42/BiasAdd:output:01model_10/conv3d_288/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_10/conv3d_288/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_288_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_10/conv3d_288/BiasAddBiasAdd#model_10/conv3d_288/Conv3D:output:02model_10/conv3d_288/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_288/ReluRelu$model_10/conv3d_288/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ e
#model_10/concatenate_42/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_10/concatenate_42/concatConcatV2&model_10/conv3d_273/Relu:activations:0&model_10/conv3d_288/Relu:activations:0,model_10/concatenate_42/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ј
)model_10/conv3d_289/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_289_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype0
model_10/conv3d_289/Conv3DConv3D'model_10/concatenate_42/concat:output:01model_10/conv3d_289/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_10/conv3d_289/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_289_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_10/conv3d_289/BiasAddBiasAdd#model_10/conv3d_289/Conv3D:output:02model_10/conv3d_289/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_289/ReluRelu$model_10/conv3d_289/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_10/conv3d_290/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_290_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_10/conv3d_290/Conv3DConv3D&model_10/conv3d_289/Relu:activations:01model_10/conv3d_290/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_10/conv3d_290/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_290_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_10/conv3d_290/BiasAddBiasAdd#model_10/conv3d_290/Conv3D:output:02model_10/conv3d_290/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_290/ReluRelu$model_10/conv3d_290/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_10/conv3d_291/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_291_conv3d_readvariableop_resource**
_output_shapes
:  *
dtype0
model_10/conv3d_291/Conv3DConv3D&model_10/conv3d_290/Relu:activations:01model_10/conv3d_291/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides	

*model_10/conv3d_291/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_291_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0и
model_10/conv3d_291/BiasAddBiasAdd#model_10/conv3d_291/Conv3D:output:02model_10/conv3d_291/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
model_10/conv3d_291/ReluRelu$model_10/conv3d_291/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ x
"model_10/conv3d_transpose_43/ShapeShape&model_10/conv3d_291/Relu:activations:0*
T0*
_output_shapes
:z
0model_10/conv3d_transpose_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_10/conv3d_transpose_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_10/conv3d_transpose_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_10/conv3d_transpose_43/strided_sliceStridedSlice+model_10/conv3d_transpose_43/Shape:output:09model_10/conv3d_transpose_43/strided_slice/stack:output:0;model_10/conv3d_transpose_43/strided_slice/stack_1:output:0;model_10/conv3d_transpose_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_43/strided_slice_1StridedSlice+model_10/conv3d_transpose_43/Shape:output:0;model_10/conv3d_transpose_43/strided_slice_1/stack:output:0=model_10/conv3d_transpose_43/strided_slice_1/stack_1:output:0=model_10/conv3d_transpose_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_43/strided_slice_2StridedSlice+model_10/conv3d_transpose_43/Shape:output:0;model_10/conv3d_transpose_43/strided_slice_2/stack:output:0=model_10/conv3d_transpose_43/strided_slice_2/stack_1:output:0=model_10/conv3d_transpose_43/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model_10/conv3d_transpose_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_10/conv3d_transpose_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
,model_10/conv3d_transpose_43/strided_slice_3StridedSlice+model_10/conv3d_transpose_43/Shape:output:0;model_10/conv3d_transpose_43/strided_slice_3/stack:output:0=model_10/conv3d_transpose_43/strided_slice_3/stack_1:output:0=model_10/conv3d_transpose_43/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_10/conv3d_transpose_43/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ќ
 model_10/conv3d_transpose_43/mulMul5model_10/conv3d_transpose_43/strided_slice_1:output:0+model_10/conv3d_transpose_43/mul/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_43/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_43/mul_1Mul5model_10/conv3d_transpose_43/strided_slice_2:output:0-model_10/conv3d_transpose_43/mul_1/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_43/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :А
"model_10/conv3d_transpose_43/mul_2Mul5model_10/conv3d_transpose_43/strided_slice_3:output:0-model_10/conv3d_transpose_43/mul_2/y:output:0*
T0*
_output_shapes
: f
$model_10/conv3d_transpose_43/stack/4Const*
_output_shapes
: *
dtype0*
value	B :В
"model_10/conv3d_transpose_43/stackPack3model_10/conv3d_transpose_43/strided_slice:output:0$model_10/conv3d_transpose_43/mul:z:0&model_10/conv3d_transpose_43/mul_1:z:0&model_10/conv3d_transpose_43/mul_2:z:0-model_10/conv3d_transpose_43/stack/4:output:0*
N*
T0*
_output_shapes
:Ю
<model_10/conv3d_transpose_43/conv3d_transpose/ReadVariableOpReadVariableOpEmodel_10_conv3d_transpose_43_conv3d_transpose_readvariableop_resource**
_output_shapes
: *
dtype0у
-model_10/conv3d_transpose_43/conv3d_transposeConv3DBackpropInputV2+model_10/conv3d_transpose_43/stack:output:0Dmodel_10/conv3d_transpose_43/conv3d_transpose/ReadVariableOp:value:0&model_10/conv3d_291/Relu:activations:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	
Ќ
3model_10/conv3d_transpose_43/BiasAdd/ReadVariableOpReadVariableOp<model_10_conv3d_transpose_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0§
$model_10/conv3d_transpose_43/BiasAddBiasAdd6model_10/conv3d_transpose_43/conv3d_transpose:output:0;model_10/conv3d_transpose_43/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_10/conv3d_292/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_292_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_10/conv3d_292/Conv3DConv3D-model_10/conv3d_transpose_43/BiasAdd:output:01model_10/conv3d_292/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_292/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_10/conv3d_292/BiasAddBiasAdd#model_10/conv3d_292/Conv3D:output:02model_10/conv3d_292/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_10/conv3d_292/ReluRelu$model_10/conv3d_292/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe
#model_10/concatenate_43/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_10/concatenate_43/concatConcatV2&model_10/conv3d_271/Relu:activations:0&model_10/conv3d_292/Relu:activations:0,model_10/concatenate_43/concat/axis:output:0*
N*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
)model_10/conv3d_293/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_293_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0
model_10/conv3d_293/Conv3DConv3D'model_10/concatenate_43/concat:output:01model_10/conv3d_293/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_293/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_293_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_10/conv3d_293/BiasAddBiasAdd#model_10/conv3d_293/Conv3D:output:02model_10/conv3d_293/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_10/conv3d_293/ReluRelu$model_10/conv3d_293/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_10/conv3d_294/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_294_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_10/conv3d_294/Conv3DConv3D&model_10/conv3d_293/Relu:activations:01model_10/conv3d_294/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_294/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_10/conv3d_294/BiasAddBiasAdd#model_10/conv3d_294/Conv3D:output:02model_10/conv3d_294/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_10/conv3d_294/ReluRelu$model_10/conv3d_294/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
)model_10/conv3d_295/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_295_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_10/conv3d_295/Conv3DConv3D&model_10/conv3d_294/Relu:activations:01model_10/conv3d_295/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_295/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_10/conv3d_295/BiasAddBiasAdd#model_10/conv3d_295/Conv3D:output:02model_10/conv3d_295/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
model_10/conv3d_295/ReluRelu$model_10/conv3d_295/BiasAdd:output:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
*model_10/cropping3d_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                 
,model_10/cropping3d_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    
,model_10/cropping3d_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               
$model_10/cropping3d_10/strided_sliceStridedSlice&model_10/conv3d_295/Relu:activations:03model_10/cropping3d_10/strided_slice/stack:output:05model_10/cropping3d_10/strided_slice/stack_1:output:05model_10/cropping3d_10/strided_slice/stack_2:output:0*
Index0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_maskЈ
)model_10/conv3d_296/Conv3D/ReadVariableOpReadVariableOp2model_10_conv3d_296_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0
model_10/conv3d_296/Conv3DConv3D-model_10/cropping3d_10/strided_slice:output:01model_10/conv3d_296/Conv3D/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides	

*model_10/conv3d_296/BiasAdd/ReadVariableOpReadVariableOp3model_10_conv3d_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0и
model_10/conv3d_296/BiasAddBiasAdd#model_10/conv3d_296/Conv3D:output:02model_10/conv3d_296/BiasAdd/ReadVariableOp:value:0*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentity$model_10/conv3d_296/BiasAdd:output:0^NoOp*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ§
NoOpNoOp+^model_10/conv3d_270/BiasAdd/ReadVariableOp*^model_10/conv3d_270/Conv3D/ReadVariableOp+^model_10/conv3d_271/BiasAdd/ReadVariableOp*^model_10/conv3d_271/Conv3D/ReadVariableOp+^model_10/conv3d_272/BiasAdd/ReadVariableOp*^model_10/conv3d_272/Conv3D/ReadVariableOp+^model_10/conv3d_273/BiasAdd/ReadVariableOp*^model_10/conv3d_273/Conv3D/ReadVariableOp+^model_10/conv3d_274/BiasAdd/ReadVariableOp*^model_10/conv3d_274/Conv3D/ReadVariableOp+^model_10/conv3d_275/BiasAdd/ReadVariableOp*^model_10/conv3d_275/Conv3D/ReadVariableOp+^model_10/conv3d_276/BiasAdd/ReadVariableOp*^model_10/conv3d_276/Conv3D/ReadVariableOp+^model_10/conv3d_277/BiasAdd/ReadVariableOp*^model_10/conv3d_277/Conv3D/ReadVariableOp+^model_10/conv3d_278/BiasAdd/ReadVariableOp*^model_10/conv3d_278/Conv3D/ReadVariableOp+^model_10/conv3d_279/BiasAdd/ReadVariableOp*^model_10/conv3d_279/Conv3D/ReadVariableOp+^model_10/conv3d_280/BiasAdd/ReadVariableOp*^model_10/conv3d_280/Conv3D/ReadVariableOp+^model_10/conv3d_281/BiasAdd/ReadVariableOp*^model_10/conv3d_281/Conv3D/ReadVariableOp+^model_10/conv3d_282/BiasAdd/ReadVariableOp*^model_10/conv3d_282/Conv3D/ReadVariableOp+^model_10/conv3d_283/BiasAdd/ReadVariableOp*^model_10/conv3d_283/Conv3D/ReadVariableOp+^model_10/conv3d_284/BiasAdd/ReadVariableOp*^model_10/conv3d_284/Conv3D/ReadVariableOp+^model_10/conv3d_285/BiasAdd/ReadVariableOp*^model_10/conv3d_285/Conv3D/ReadVariableOp+^model_10/conv3d_286/BiasAdd/ReadVariableOp*^model_10/conv3d_286/Conv3D/ReadVariableOp+^model_10/conv3d_287/BiasAdd/ReadVariableOp*^model_10/conv3d_287/Conv3D/ReadVariableOp+^model_10/conv3d_288/BiasAdd/ReadVariableOp*^model_10/conv3d_288/Conv3D/ReadVariableOp+^model_10/conv3d_289/BiasAdd/ReadVariableOp*^model_10/conv3d_289/Conv3D/ReadVariableOp+^model_10/conv3d_290/BiasAdd/ReadVariableOp*^model_10/conv3d_290/Conv3D/ReadVariableOp+^model_10/conv3d_291/BiasAdd/ReadVariableOp*^model_10/conv3d_291/Conv3D/ReadVariableOp+^model_10/conv3d_292/BiasAdd/ReadVariableOp*^model_10/conv3d_292/Conv3D/ReadVariableOp+^model_10/conv3d_293/BiasAdd/ReadVariableOp*^model_10/conv3d_293/Conv3D/ReadVariableOp+^model_10/conv3d_294/BiasAdd/ReadVariableOp*^model_10/conv3d_294/Conv3D/ReadVariableOp+^model_10/conv3d_295/BiasAdd/ReadVariableOp*^model_10/conv3d_295/Conv3D/ReadVariableOp+^model_10/conv3d_296/BiasAdd/ReadVariableOp*^model_10/conv3d_296/Conv3D/ReadVariableOp4^model_10/conv3d_transpose_40/BiasAdd/ReadVariableOp=^model_10/conv3d_transpose_40/conv3d_transpose/ReadVariableOp4^model_10/conv3d_transpose_41/BiasAdd/ReadVariableOp=^model_10/conv3d_transpose_41/conv3d_transpose/ReadVariableOp4^model_10/conv3d_transpose_42/BiasAdd/ReadVariableOp=^model_10/conv3d_transpose_42/conv3d_transpose/ReadVariableOp4^model_10/conv3d_transpose_43/BiasAdd/ReadVariableOp=^model_10/conv3d_transpose_43/conv3d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*model_10/conv3d_270/BiasAdd/ReadVariableOp*model_10/conv3d_270/BiasAdd/ReadVariableOp2V
)model_10/conv3d_270/Conv3D/ReadVariableOp)model_10/conv3d_270/Conv3D/ReadVariableOp2X
*model_10/conv3d_271/BiasAdd/ReadVariableOp*model_10/conv3d_271/BiasAdd/ReadVariableOp2V
)model_10/conv3d_271/Conv3D/ReadVariableOp)model_10/conv3d_271/Conv3D/ReadVariableOp2X
*model_10/conv3d_272/BiasAdd/ReadVariableOp*model_10/conv3d_272/BiasAdd/ReadVariableOp2V
)model_10/conv3d_272/Conv3D/ReadVariableOp)model_10/conv3d_272/Conv3D/ReadVariableOp2X
*model_10/conv3d_273/BiasAdd/ReadVariableOp*model_10/conv3d_273/BiasAdd/ReadVariableOp2V
)model_10/conv3d_273/Conv3D/ReadVariableOp)model_10/conv3d_273/Conv3D/ReadVariableOp2X
*model_10/conv3d_274/BiasAdd/ReadVariableOp*model_10/conv3d_274/BiasAdd/ReadVariableOp2V
)model_10/conv3d_274/Conv3D/ReadVariableOp)model_10/conv3d_274/Conv3D/ReadVariableOp2X
*model_10/conv3d_275/BiasAdd/ReadVariableOp*model_10/conv3d_275/BiasAdd/ReadVariableOp2V
)model_10/conv3d_275/Conv3D/ReadVariableOp)model_10/conv3d_275/Conv3D/ReadVariableOp2X
*model_10/conv3d_276/BiasAdd/ReadVariableOp*model_10/conv3d_276/BiasAdd/ReadVariableOp2V
)model_10/conv3d_276/Conv3D/ReadVariableOp)model_10/conv3d_276/Conv3D/ReadVariableOp2X
*model_10/conv3d_277/BiasAdd/ReadVariableOp*model_10/conv3d_277/BiasAdd/ReadVariableOp2V
)model_10/conv3d_277/Conv3D/ReadVariableOp)model_10/conv3d_277/Conv3D/ReadVariableOp2X
*model_10/conv3d_278/BiasAdd/ReadVariableOp*model_10/conv3d_278/BiasAdd/ReadVariableOp2V
)model_10/conv3d_278/Conv3D/ReadVariableOp)model_10/conv3d_278/Conv3D/ReadVariableOp2X
*model_10/conv3d_279/BiasAdd/ReadVariableOp*model_10/conv3d_279/BiasAdd/ReadVariableOp2V
)model_10/conv3d_279/Conv3D/ReadVariableOp)model_10/conv3d_279/Conv3D/ReadVariableOp2X
*model_10/conv3d_280/BiasAdd/ReadVariableOp*model_10/conv3d_280/BiasAdd/ReadVariableOp2V
)model_10/conv3d_280/Conv3D/ReadVariableOp)model_10/conv3d_280/Conv3D/ReadVariableOp2X
*model_10/conv3d_281/BiasAdd/ReadVariableOp*model_10/conv3d_281/BiasAdd/ReadVariableOp2V
)model_10/conv3d_281/Conv3D/ReadVariableOp)model_10/conv3d_281/Conv3D/ReadVariableOp2X
*model_10/conv3d_282/BiasAdd/ReadVariableOp*model_10/conv3d_282/BiasAdd/ReadVariableOp2V
)model_10/conv3d_282/Conv3D/ReadVariableOp)model_10/conv3d_282/Conv3D/ReadVariableOp2X
*model_10/conv3d_283/BiasAdd/ReadVariableOp*model_10/conv3d_283/BiasAdd/ReadVariableOp2V
)model_10/conv3d_283/Conv3D/ReadVariableOp)model_10/conv3d_283/Conv3D/ReadVariableOp2X
*model_10/conv3d_284/BiasAdd/ReadVariableOp*model_10/conv3d_284/BiasAdd/ReadVariableOp2V
)model_10/conv3d_284/Conv3D/ReadVariableOp)model_10/conv3d_284/Conv3D/ReadVariableOp2X
*model_10/conv3d_285/BiasAdd/ReadVariableOp*model_10/conv3d_285/BiasAdd/ReadVariableOp2V
)model_10/conv3d_285/Conv3D/ReadVariableOp)model_10/conv3d_285/Conv3D/ReadVariableOp2X
*model_10/conv3d_286/BiasAdd/ReadVariableOp*model_10/conv3d_286/BiasAdd/ReadVariableOp2V
)model_10/conv3d_286/Conv3D/ReadVariableOp)model_10/conv3d_286/Conv3D/ReadVariableOp2X
*model_10/conv3d_287/BiasAdd/ReadVariableOp*model_10/conv3d_287/BiasAdd/ReadVariableOp2V
)model_10/conv3d_287/Conv3D/ReadVariableOp)model_10/conv3d_287/Conv3D/ReadVariableOp2X
*model_10/conv3d_288/BiasAdd/ReadVariableOp*model_10/conv3d_288/BiasAdd/ReadVariableOp2V
)model_10/conv3d_288/Conv3D/ReadVariableOp)model_10/conv3d_288/Conv3D/ReadVariableOp2X
*model_10/conv3d_289/BiasAdd/ReadVariableOp*model_10/conv3d_289/BiasAdd/ReadVariableOp2V
)model_10/conv3d_289/Conv3D/ReadVariableOp)model_10/conv3d_289/Conv3D/ReadVariableOp2X
*model_10/conv3d_290/BiasAdd/ReadVariableOp*model_10/conv3d_290/BiasAdd/ReadVariableOp2V
)model_10/conv3d_290/Conv3D/ReadVariableOp)model_10/conv3d_290/Conv3D/ReadVariableOp2X
*model_10/conv3d_291/BiasAdd/ReadVariableOp*model_10/conv3d_291/BiasAdd/ReadVariableOp2V
)model_10/conv3d_291/Conv3D/ReadVariableOp)model_10/conv3d_291/Conv3D/ReadVariableOp2X
*model_10/conv3d_292/BiasAdd/ReadVariableOp*model_10/conv3d_292/BiasAdd/ReadVariableOp2V
)model_10/conv3d_292/Conv3D/ReadVariableOp)model_10/conv3d_292/Conv3D/ReadVariableOp2X
*model_10/conv3d_293/BiasAdd/ReadVariableOp*model_10/conv3d_293/BiasAdd/ReadVariableOp2V
)model_10/conv3d_293/Conv3D/ReadVariableOp)model_10/conv3d_293/Conv3D/ReadVariableOp2X
*model_10/conv3d_294/BiasAdd/ReadVariableOp*model_10/conv3d_294/BiasAdd/ReadVariableOp2V
)model_10/conv3d_294/Conv3D/ReadVariableOp)model_10/conv3d_294/Conv3D/ReadVariableOp2X
*model_10/conv3d_295/BiasAdd/ReadVariableOp*model_10/conv3d_295/BiasAdd/ReadVariableOp2V
)model_10/conv3d_295/Conv3D/ReadVariableOp)model_10/conv3d_295/Conv3D/ReadVariableOp2X
*model_10/conv3d_296/BiasAdd/ReadVariableOp*model_10/conv3d_296/BiasAdd/ReadVariableOp2V
)model_10/conv3d_296/Conv3D/ReadVariableOp)model_10/conv3d_296/Conv3D/ReadVariableOp2j
3model_10/conv3d_transpose_40/BiasAdd/ReadVariableOp3model_10/conv3d_transpose_40/BiasAdd/ReadVariableOp2|
<model_10/conv3d_transpose_40/conv3d_transpose/ReadVariableOp<model_10/conv3d_transpose_40/conv3d_transpose/ReadVariableOp2j
3model_10/conv3d_transpose_41/BiasAdd/ReadVariableOp3model_10/conv3d_transpose_41/BiasAdd/ReadVariableOp2|
<model_10/conv3d_transpose_41/conv3d_transpose/ReadVariableOp<model_10/conv3d_transpose_41/conv3d_transpose/ReadVariableOp2j
3model_10/conv3d_transpose_42/BiasAdd/ReadVariableOp3model_10/conv3d_transpose_42/BiasAdd/ReadVariableOp2|
<model_10/conv3d_transpose_42/conv3d_transpose/ReadVariableOp<model_10/conv3d_transpose_42/conv3d_transpose/ReadVariableOp2j
3model_10/conv3d_transpose_43/BiasAdd/ReadVariableOp3model_10/conv3d_transpose_43/BiasAdd/ReadVariableOp2|
<model_10/conv3d_transpose_43/conv3d_transpose/ReadVariableOp<model_10/conv3d_transpose_43/conv3d_transpose/ReadVariableOp:x t
N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
input_11
Ы

F__inference_conv3d_271_layer_call_and_return_conditional_losses_329752

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
F__inference_conv3d_270_layer_call_and_return_conditional_losses_332669

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
Я

F__inference_conv3d_285_layer_call_and_return_conditional_losses_330022

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
Ы

F__inference_conv3d_290_layer_call_and_return_conditional_losses_333286

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
ё
M
1__inference_max_pooling3d_41_layer_call_fn_332744

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
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_329484
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
F__inference_conv3d_282_layer_call_and_return_conditional_losses_333012

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
F__inference_conv3d_274_layer_call_and_return_conditional_losses_329805

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
к
h
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_332699

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

[
/__inference_concatenate_41_layer_call_fn_333102
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
J__inference_concatenate_41_layer_call_and_return_conditional_losses_330009
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
Ы

F__inference_conv3d_272_layer_call_and_return_conditional_losses_329770

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
Й 
Џ
)__inference_model_10_layer_call_fn_331225
input_11%
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
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_10_layer_call_and_return_conditional_losses_330969
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
input_11
ђ
Є
+__inference_conv3d_287_layer_call_fn_333158

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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_330056
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
input_11X
serving_default_input_11:08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџe

conv3d_296W
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
)__inference_model_10_layer_call_fn_330371
)__inference_model_10_layer_call_fn_331698
)__inference_model_10_layer_call_fn_331827
)__inference_model_10_layer_call_fn_331225Р
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
D__inference_model_10_layer_call_and_return_conditional_losses_332167
D__inference_model_10_layer_call_and_return_conditional_losses_332507
D__inference_model_10_layer_call_and_return_conditional_losses_331394
D__inference_model_10_layer_call_and_return_conditional_losses_331563Р
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
!__inference__wrapped_model_329450input_11"
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
2__inference_zero_padding3d_10_layer_call_fn_332643Ђ
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
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_332649Ђ
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
/:-2conv3d_270/kernel
:2conv3d_270/bias
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
+__inference_conv3d_270_layer_call_fn_332658Ђ
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
F__inference_conv3d_270_layer_call_and_return_conditional_losses_332669Ђ
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
/:-2conv3d_271/kernel
:2conv3d_271/bias
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
+__inference_conv3d_271_layer_call_fn_332678Ђ
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
F__inference_conv3d_271_layer_call_and_return_conditional_losses_332689Ђ
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
1__inference_max_pooling3d_40_layer_call_fn_332694Ђ
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
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_332699Ђ
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
/:- 2conv3d_272/kernel
: 2conv3d_272/bias
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
+__inference_conv3d_272_layer_call_fn_332708Ђ
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
F__inference_conv3d_272_layer_call_and_return_conditional_losses_332719Ђ
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
/:-  2conv3d_273/kernel
: 2conv3d_273/bias
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
+__inference_conv3d_273_layer_call_fn_332728Ђ
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
F__inference_conv3d_273_layer_call_and_return_conditional_losses_332739Ђ
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
1__inference_max_pooling3d_41_layer_call_fn_332744Ђ
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
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_332749Ђ
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
/:- @2conv3d_274/kernel
:@2conv3d_274/bias
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
+__inference_conv3d_274_layer_call_fn_332758Ђ
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
F__inference_conv3d_274_layer_call_and_return_conditional_losses_332769Ђ
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
/:-@@2conv3d_275/kernel
:@2conv3d_275/bias
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
+__inference_conv3d_275_layer_call_fn_332778Ђ
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
F__inference_conv3d_275_layer_call_and_return_conditional_losses_332789Ђ
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
1__inference_max_pooling3d_42_layer_call_fn_332794Ђ
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
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_332799Ђ
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
0:.@2conv3d_276/kernel
:2conv3d_276/bias
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
+__inference_conv3d_276_layer_call_fn_332808Ђ
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
F__inference_conv3d_276_layer_call_and_return_conditional_losses_332819Ђ
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
1:/2conv3d_277/kernel
:2conv3d_277/bias
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
+__inference_conv3d_277_layer_call_fn_332828Ђ
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
F__inference_conv3d_277_layer_call_and_return_conditional_losses_332839Ђ
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
1__inference_max_pooling3d_43_layer_call_fn_332844Ђ
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
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_332849Ђ
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
1:/2conv3d_278/kernel
:2conv3d_278/bias
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
+__inference_conv3d_278_layer_call_fn_332858Ђ
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
F__inference_conv3d_278_layer_call_and_return_conditional_losses_332869Ђ
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
1:/2conv3d_279/kernel
:2conv3d_279/bias
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
+__inference_conv3d_279_layer_call_fn_332878Ђ
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
F__inference_conv3d_279_layer_call_and_return_conditional_losses_332889Ђ
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
::82conv3d_transpose_40/kernel
':%2conv3d_transpose_40/bias
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
4__inference_conv3d_transpose_40_layer_call_fn_332898Ђ
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
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_332939Ђ
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
1:/2conv3d_280/kernel
:2conv3d_280/bias
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
+__inference_conv3d_280_layer_call_fn_332948Ђ
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
F__inference_conv3d_280_layer_call_and_return_conditional_losses_332959Ђ
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
/__inference_concatenate_40_layer_call_fn_332965Ђ
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
J__inference_concatenate_40_layer_call_and_return_conditional_losses_332972Ђ
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
1:/2conv3d_281/kernel
:2conv3d_281/bias
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
+__inference_conv3d_281_layer_call_fn_332981Ђ
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
F__inference_conv3d_281_layer_call_and_return_conditional_losses_332992Ђ
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
1:/2conv3d_282/kernel
:2conv3d_282/bias
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
+__inference_conv3d_282_layer_call_fn_333001Ђ
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
F__inference_conv3d_282_layer_call_and_return_conditional_losses_333012Ђ
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
1:/2conv3d_283/kernel
:2conv3d_283/bias
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
+__inference_conv3d_283_layer_call_fn_333021Ђ
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
F__inference_conv3d_283_layer_call_and_return_conditional_losses_333032Ђ
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
9:7@2conv3d_transpose_41/kernel
&:$@2conv3d_transpose_41/bias
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
4__inference_conv3d_transpose_41_layer_call_fn_333041Ђ
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
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_333076Ђ
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
/:-@@2conv3d_284/kernel
:@2conv3d_284/bias
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
+__inference_conv3d_284_layer_call_fn_333085Ђ
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
F__inference_conv3d_284_layer_call_and_return_conditional_losses_333096Ђ
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
/__inference_concatenate_41_layer_call_fn_333102Ђ
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
J__inference_concatenate_41_layer_call_and_return_conditional_losses_333109Ђ
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
0:.@2conv3d_285/kernel
:@2conv3d_285/bias
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
+__inference_conv3d_285_layer_call_fn_333118Ђ
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
F__inference_conv3d_285_layer_call_and_return_conditional_losses_333129Ђ
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
/:-@@2conv3d_286/kernel
:@2conv3d_286/bias
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
+__inference_conv3d_286_layer_call_fn_333138Ђ
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
F__inference_conv3d_286_layer_call_and_return_conditional_losses_333149Ђ
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
/:-@@2conv3d_287/kernel
:@2conv3d_287/bias
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
+__inference_conv3d_287_layer_call_fn_333158Ђ
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
F__inference_conv3d_287_layer_call_and_return_conditional_losses_333169Ђ
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
8:6 @2conv3d_transpose_42/kernel
&:$ 2conv3d_transpose_42/bias
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
4__inference_conv3d_transpose_42_layer_call_fn_333178Ђ
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
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_333213Ђ
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
/:-  2conv3d_288/kernel
: 2conv3d_288/bias
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
+__inference_conv3d_288_layer_call_fn_333222Ђ
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
F__inference_conv3d_288_layer_call_and_return_conditional_losses_333233Ђ
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
/__inference_concatenate_42_layer_call_fn_333239Ђ
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
J__inference_concatenate_42_layer_call_and_return_conditional_losses_333246Ђ
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
/:-@ 2conv3d_289/kernel
: 2conv3d_289/bias
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
+__inference_conv3d_289_layer_call_fn_333255Ђ
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
F__inference_conv3d_289_layer_call_and_return_conditional_losses_333266Ђ
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
/:-  2conv3d_290/kernel
: 2conv3d_290/bias
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
+__inference_conv3d_290_layer_call_fn_333275Ђ
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
F__inference_conv3d_290_layer_call_and_return_conditional_losses_333286Ђ
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
/:-  2conv3d_291/kernel
: 2conv3d_291/bias
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
+__inference_conv3d_291_layer_call_fn_333295Ђ
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
F__inference_conv3d_291_layer_call_and_return_conditional_losses_333306Ђ
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
8:6 2conv3d_transpose_43/kernel
&:$2conv3d_transpose_43/bias
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
4__inference_conv3d_transpose_43_layer_call_fn_333315Ђ
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
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_333350Ђ
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
/:-2conv3d_292/kernel
:2conv3d_292/bias
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
+__inference_conv3d_292_layer_call_fn_333359Ђ
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
F__inference_conv3d_292_layer_call_and_return_conditional_losses_333370Ђ
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
/__inference_concatenate_43_layer_call_fn_333376Ђ
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
J__inference_concatenate_43_layer_call_and_return_conditional_losses_333383Ђ
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
/:- 2conv3d_293/kernel
:2conv3d_293/bias
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
+__inference_conv3d_293_layer_call_fn_333392Ђ
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
F__inference_conv3d_293_layer_call_and_return_conditional_losses_333403Ђ
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
/:-2conv3d_294/kernel
:2conv3d_294/bias
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
+__inference_conv3d_294_layer_call_fn_333412Ђ
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
F__inference_conv3d_294_layer_call_and_return_conditional_losses_333423Ђ
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
/:-2conv3d_295/kernel
:2conv3d_295/bias
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
+__inference_conv3d_295_layer_call_fn_333432Ђ
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
F__inference_conv3d_295_layer_call_and_return_conditional_losses_333443Ђ
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
.__inference_cropping3d_10_layer_call_fn_333448Ђ
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
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_333456Ђ
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
/:-2conv3d_296/kernel
:2conv3d_296/bias
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
+__inference_conv3d_296_layer_call_fn_333465Ђ
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
F__inference_conv3d_296_layer_call_and_return_conditional_losses_333475Ђ
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
$__inference_signature_wrapper_332638input_11"
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
4:22Adam/conv3d_270/kernel/m
": 2Adam/conv3d_270/bias/m
4:22Adam/conv3d_271/kernel/m
": 2Adam/conv3d_271/bias/m
4:2 2Adam/conv3d_272/kernel/m
":  2Adam/conv3d_272/bias/m
4:2  2Adam/conv3d_273/kernel/m
":  2Adam/conv3d_273/bias/m
4:2 @2Adam/conv3d_274/kernel/m
": @2Adam/conv3d_274/bias/m
4:2@@2Adam/conv3d_275/kernel/m
": @2Adam/conv3d_275/bias/m
5:3@2Adam/conv3d_276/kernel/m
#:!2Adam/conv3d_276/bias/m
6:42Adam/conv3d_277/kernel/m
#:!2Adam/conv3d_277/bias/m
6:42Adam/conv3d_278/kernel/m
#:!2Adam/conv3d_278/bias/m
6:42Adam/conv3d_279/kernel/m
#:!2Adam/conv3d_279/bias/m
?:=2!Adam/conv3d_transpose_40/kernel/m
,:*2Adam/conv3d_transpose_40/bias/m
6:42Adam/conv3d_280/kernel/m
#:!2Adam/conv3d_280/bias/m
6:42Adam/conv3d_281/kernel/m
#:!2Adam/conv3d_281/bias/m
6:42Adam/conv3d_282/kernel/m
#:!2Adam/conv3d_282/bias/m
6:42Adam/conv3d_283/kernel/m
#:!2Adam/conv3d_283/bias/m
>:<@2!Adam/conv3d_transpose_41/kernel/m
+:)@2Adam/conv3d_transpose_41/bias/m
4:2@@2Adam/conv3d_284/kernel/m
": @2Adam/conv3d_284/bias/m
5:3@2Adam/conv3d_285/kernel/m
": @2Adam/conv3d_285/bias/m
4:2@@2Adam/conv3d_286/kernel/m
": @2Adam/conv3d_286/bias/m
4:2@@2Adam/conv3d_287/kernel/m
": @2Adam/conv3d_287/bias/m
=:; @2!Adam/conv3d_transpose_42/kernel/m
+:) 2Adam/conv3d_transpose_42/bias/m
4:2  2Adam/conv3d_288/kernel/m
":  2Adam/conv3d_288/bias/m
4:2@ 2Adam/conv3d_289/kernel/m
":  2Adam/conv3d_289/bias/m
4:2  2Adam/conv3d_290/kernel/m
":  2Adam/conv3d_290/bias/m
4:2  2Adam/conv3d_291/kernel/m
":  2Adam/conv3d_291/bias/m
=:; 2!Adam/conv3d_transpose_43/kernel/m
+:)2Adam/conv3d_transpose_43/bias/m
4:22Adam/conv3d_292/kernel/m
": 2Adam/conv3d_292/bias/m
4:2 2Adam/conv3d_293/kernel/m
": 2Adam/conv3d_293/bias/m
4:22Adam/conv3d_294/kernel/m
": 2Adam/conv3d_294/bias/m
4:22Adam/conv3d_295/kernel/m
": 2Adam/conv3d_295/bias/m
4:22Adam/conv3d_296/kernel/m
": 2Adam/conv3d_296/bias/m
4:22Adam/conv3d_270/kernel/v
": 2Adam/conv3d_270/bias/v
4:22Adam/conv3d_271/kernel/v
": 2Adam/conv3d_271/bias/v
4:2 2Adam/conv3d_272/kernel/v
":  2Adam/conv3d_272/bias/v
4:2  2Adam/conv3d_273/kernel/v
":  2Adam/conv3d_273/bias/v
4:2 @2Adam/conv3d_274/kernel/v
": @2Adam/conv3d_274/bias/v
4:2@@2Adam/conv3d_275/kernel/v
": @2Adam/conv3d_275/bias/v
5:3@2Adam/conv3d_276/kernel/v
#:!2Adam/conv3d_276/bias/v
6:42Adam/conv3d_277/kernel/v
#:!2Adam/conv3d_277/bias/v
6:42Adam/conv3d_278/kernel/v
#:!2Adam/conv3d_278/bias/v
6:42Adam/conv3d_279/kernel/v
#:!2Adam/conv3d_279/bias/v
?:=2!Adam/conv3d_transpose_40/kernel/v
,:*2Adam/conv3d_transpose_40/bias/v
6:42Adam/conv3d_280/kernel/v
#:!2Adam/conv3d_280/bias/v
6:42Adam/conv3d_281/kernel/v
#:!2Adam/conv3d_281/bias/v
6:42Adam/conv3d_282/kernel/v
#:!2Adam/conv3d_282/bias/v
6:42Adam/conv3d_283/kernel/v
#:!2Adam/conv3d_283/bias/v
>:<@2!Adam/conv3d_transpose_41/kernel/v
+:)@2Adam/conv3d_transpose_41/bias/v
4:2@@2Adam/conv3d_284/kernel/v
": @2Adam/conv3d_284/bias/v
5:3@2Adam/conv3d_285/kernel/v
": @2Adam/conv3d_285/bias/v
4:2@@2Adam/conv3d_286/kernel/v
": @2Adam/conv3d_286/bias/v
4:2@@2Adam/conv3d_287/kernel/v
": @2Adam/conv3d_287/bias/v
=:; @2!Adam/conv3d_transpose_42/kernel/v
+:) 2Adam/conv3d_transpose_42/bias/v
4:2  2Adam/conv3d_288/kernel/v
":  2Adam/conv3d_288/bias/v
4:2@ 2Adam/conv3d_289/kernel/v
":  2Adam/conv3d_289/bias/v
4:2  2Adam/conv3d_290/kernel/v
":  2Adam/conv3d_290/bias/v
4:2  2Adam/conv3d_291/kernel/v
":  2Adam/conv3d_291/bias/v
=:; 2!Adam/conv3d_transpose_43/kernel/v
+:)2Adam/conv3d_transpose_43/bias/v
4:22Adam/conv3d_292/kernel/v
": 2Adam/conv3d_292/bias/v
4:2 2Adam/conv3d_293/kernel/v
": 2Adam/conv3d_293/bias/v
4:22Adam/conv3d_294/kernel/v
": 2Adam/conv3d_294/bias/v
4:22Adam/conv3d_295/kernel/v
": 2Adam/conv3d_295/bias/v
4:22Adam/conv3d_296/kernel/v
": 2Adam/conv3d_296/bias/vа
!__inference__wrapped_model_329450Њn;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдстXЂU
NЂK
IF
input_118џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "^Њ[
Y

conv3d_296KH

conv3d_2968џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџа
J__inference_concatenate_40_layer_call_and_return_conditional_losses_332972ЏЂЋ
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
/__inference_concatenate_40_layer_call_fn_332965єЏЂЋ
ЃЂ

JG
inputs/09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
JG
inputs/19џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЮ
J__inference_concatenate_41_layer_call_and_return_conditional_losses_333109џ­ЂЉ
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
/__inference_concatenate_41_layer_call_fn_333102ђ­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЭ
J__inference_concatenate_42_layer_call_and_return_conditional_losses_333246ў­ЂЉ
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
/__inference_concatenate_42_layer_call_fn_333239ё­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@Э
J__inference_concatenate_43_layer_call_and_return_conditional_losses_333383ў­ЂЉ
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
/__inference_concatenate_43_layer_call_fn_333376ё­ЂЉ
ЁЂ

IF
inputs/08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IF
inputs/18џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_270_layer_call_and_return_conditional_losses_332669Њ;<VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
+__inference_conv3d_270_layer_call_fn_332658;<VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
F__inference_conv3d_271_layer_call_and_return_conditional_losses_332689ЊCDVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
+__inference_conv3d_271_layer_call_fn_332678CDVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџѕ
F__inference_conv3d_272_layer_call_and_return_conditional_losses_332719ЊQRVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Э
+__inference_conv3d_272_layer_call_fn_332708QRVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_273_layer_call_and_return_conditional_losses_332739ЊYZVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Э
+__inference_conv3d_273_layer_call_fn_332728YZVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ѕ
F__inference_conv3d_274_layer_call_and_return_conditional_losses_332769ЊghVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Э
+__inference_conv3d_274_layer_call_fn_332758ghVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ѕ
F__inference_conv3d_275_layer_call_and_return_conditional_losses_332789ЊopVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Э
+__inference_conv3d_275_layer_call_fn_332778opVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@і
F__inference_conv3d_276_layer_call_and_return_conditional_losses_332819Ћ}~VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
+__inference_conv3d_276_layer_call_fn_332808}~VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_277_layer_call_and_return_conditional_losses_332839ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_277_layer_call_fn_332828ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_278_layer_call_and_return_conditional_losses_332869ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_278_layer_call_fn_332858ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_279_layer_call_and_return_conditional_losses_332889ЎWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_279_layer_call_fn_332878ЁWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_280_layer_call_and_return_conditional_losses_332959ЎЋЌWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_280_layer_call_fn_332948ЁЋЌWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_281_layer_call_and_return_conditional_losses_332992ЎЙКWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_281_layer_call_fn_332981ЁЙКWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_282_layer_call_and_return_conditional_losses_333012ЎСТWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_282_layer_call_fn_333001ЁСТWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџљ
F__inference_conv3d_283_layer_call_and_return_conditional_losses_333032ЎЩЪWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
+__inference_conv3d_283_layer_call_fn_333021ЁЩЪWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_284_layer_call_and_return_conditional_losses_333096ЌйкVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_284_layer_call_fn_333085йкVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ј
F__inference_conv3d_285_layer_call_and_return_conditional_losses_333129­чшWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 а
+__inference_conv3d_285_layer_call_fn_333118 чшWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_286_layer_call_and_return_conditional_losses_333149Ќя№VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_286_layer_call_fn_333138я№VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_287_layer_call_and_return_conditional_losses_333169ЌїјVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Я
+__inference_conv3d_287_layer_call_fn_333158їјVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@ї
F__inference_conv3d_288_layer_call_and_return_conditional_losses_333233ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_288_layer_call_fn_333222VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_289_layer_call_and_return_conditional_losses_333266ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_289_layer_call_fn_333255VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_290_layer_call_and_return_conditional_losses_333286ЌVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_290_layer_call_fn_333275VЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_291_layer_call_and_return_conditional_losses_333306ЌЅІVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Я
+__inference_conv3d_291_layer_call_fn_333295ЅІVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
F__inference_conv3d_292_layer_call_and_return_conditional_losses_333370ЌЕЖVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_292_layer_call_fn_333359ЕЖVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_293_layer_call_and_return_conditional_losses_333403ЌУФVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_293_layer_call_fn_333392УФVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_294_layer_call_and_return_conditional_losses_333423ЌЫЬVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_294_layer_call_fn_333412ЫЬVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_295_layer_call_and_return_conditional_losses_333443ЌгдVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_295_layer_call_fn_333432гдVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
F__inference_conv3d_296_layer_call_and_return_conditional_losses_333475ЌстVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Я
+__inference_conv3d_296_layer_call_fn_333465стVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
O__inference_conv3d_transpose_40_layer_call_and_return_conditional_losses_332939ЎЃЄWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "MЂJ
C@
09џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 к
4__inference_conv3d_transpose_40_layer_call_fn_332898ЁЃЄWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@=9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
O__inference_conv3d_transpose_41_layer_call_and_return_conditional_losses_333076­бвWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 й
4__inference_conv3d_transpose_41_layer_call_fn_333041 бвWЂT
MЂJ
HE
inputs9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
O__inference_conv3d_transpose_42_layer_call_and_return_conditional_losses_333213ЌџVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 и
4__inference_conv3d_transpose_42_layer_call_fn_333178џVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
O__inference_conv3d_transpose_43_layer_call_and_return_conditional_losses_333350Ќ­ЎVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 и
4__inference_conv3d_transpose_43_layer_call_fn_333315­ЎVЂS
LЂI
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
I__inference_cropping3d_10_layer_call_and_return_conditional_losses_333456И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 о
.__inference_cropping3d_10_layer_call_fn_333448Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_40_layer_call_and_return_conditional_losses_332699И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_40_layer_call_fn_332694Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_41_layer_call_and_return_conditional_losses_332749И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_41_layer_call_fn_332744Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_42_layer_call_and_return_conditional_losses_332799И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_42_layer_call_fn_332794Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
L__inference_max_pooling3d_43_layer_call_and_return_conditional_losses_332849И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
1__inference_max_pooling3d_43_layer_call_fn_332844Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџщ
D__inference_model_10_layer_call_and_return_conditional_losses_331394 n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_118џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 щ
D__inference_model_10_layer_call_and_return_conditional_losses_331563 n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_118џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "LЂI
B?
08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ч
D__inference_model_10_layer_call_and_return_conditional_losses_332167n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
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
D__inference_model_10_layer_call_and_return_conditional_losses_332507n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
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
)__inference_model_10_layer_call_fn_330371n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_118џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџС
)__inference_model_10_layer_call_fn_331225n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст`Ђ]
VЂS
IF
input_118џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџП
)__inference_model_10_layer_call_fn_331698n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџП
)__inference_model_10_layer_call_fn_331827n;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдст^Ђ[
TЂQ
GD
inputs8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?<8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџп
$__inference_signature_wrapper_332638Жn;<CDQRYZghop}~ЃЄЋЌЙКСТЩЪбвйкчшя№їјџЅІ­ЎЕЖУФЫЬгдстdЂa
Ђ 
ZЊW
U
input_11IF
input_118џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"^Њ[
Y

conv3d_296KH

conv3d_2968џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
M__inference_zero_padding3d_10_layer_call_and_return_conditional_losses_332649И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 т
2__inference_zero_padding3d_10_layer_call_fn_332643Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ