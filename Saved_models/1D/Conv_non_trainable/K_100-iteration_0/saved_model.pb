ޤ
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02unknown8??
?
:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*K
shared_name<:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel
?
NConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel/Read/ReadVariableOpReadVariableOp:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel*
_output_shapes

:d*
dtype0
?
8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*I
shared_name:8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias
?
LConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias/Read/ReadVariableOpReadVariableOp8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias*
_output_shapes
:d*
dtype0
?
8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel
?
LConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/Read/ReadVariableOpReadVariableOp8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel*"
_output_shapes
:*
dtype0
?
6Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias
?
JConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/Read/ReadVariableOpReadVariableOp6Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias*
_output_shapes
:*
dtype0
?
:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*K
shared_name<:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel
?
NConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/Read/ReadVariableOpReadVariableOp:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel*
_output_shapes

:d*
dtype0
?
8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias
?
LConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/Read/ReadVariableOpReadVariableOp8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias*
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
?
?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/m
?
SAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/m/Read/ReadVariableOpReadVariableOp?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/m*"
_output_shapes
:*
dtype0
?
=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*N
shared_name?=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/m
?
QAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/m/Read/ReadVariableOpReadVariableOp=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/m*
_output_shapes
:*
dtype0
?
AAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*R
shared_nameCAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/m
?
UAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/m*
_output_shapes

:d*
dtype0
?
?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/m
?
SAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/m/Read/ReadVariableOpReadVariableOp?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/m*
_output_shapes
:*
dtype0
?
?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/v
?
SAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/v/Read/ReadVariableOpReadVariableOp?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/v*"
_output_shapes
:*
dtype0
?
=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*N
shared_name?=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/v
?
QAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/v/Read/ReadVariableOpReadVariableOp=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/v*
_output_shapes
:*
dtype0
?
AAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*R
shared_nameCAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/v
?
UAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/v*
_output_shapes

:d*
dtype0
?
?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/v
?
SAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/v/Read/ReadVariableOpReadVariableOp?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value? B?  B? 
?

dense1
conv

dense2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
h


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?
iter

beta_1

beta_2
	decay
 learning_ratem:m;m<m=v>v?v@vA

0
1
2
3
 
*

0
1
2
3
4
5
?

!layers
"layer_regularization_losses
trainable_variables
#non_trainable_variables
$metrics
%layer_metrics
regularization_losses
	variables
 
xv
VARIABLE_VALUE:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 


0
1
?

&layers
'layer_regularization_losses
trainable_variables
(non_trainable_variables
)metrics
*layer_metrics
regularization_losses
	variables
tr
VARIABLE_VALUE8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel&conv/kernel/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE6Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias$conv/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

+layers
,layer_regularization_losses
trainable_variables
-non_trainable_variables
.metrics
/layer_metrics
regularization_losses
	variables
xv
VARIABLE_VALUE:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

0layers
1layer_regularization_losses
trainable_variables
2non_trainable_variables
3metrics
4layer_metrics
regularization_losses
	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 


0
1

50
 
 
 


0
1
 
 
 
 
 
 
 
 
 
 
 
 
4
	6total
	7count
8	variables
9	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

60
71

8	variables
??
VARIABLE_VALUE?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/mBconv/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/m@conv/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/mDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/mBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/vBconv/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/v@conv/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/vDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/vBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel6Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_149499
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameNConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel/Read/ReadVariableOpLConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias/Read/ReadVariableOpLConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/Read/ReadVariableOpJConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/Read/ReadVariableOpNConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/Read/ReadVariableOpLConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpSAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/m/Read/ReadVariableOpQAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/m/Read/ReadVariableOpUAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/m/Read/ReadVariableOpSAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/m/Read/ReadVariableOpSAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/v/Read/ReadVariableOpQAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/v/Read/ReadVariableOpUAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/v/Read/ReadVariableOpSAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_149744
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel6Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/m=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/mAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/m?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/m?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/v=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/vAAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/v?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_149817??
?
?
@__inference_conv_layer_call_and_return_conditional_losses_149630

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????d*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?d
?
"__inference__traced_restore_149817
file_prefix]
Kassignvariableop_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_kernel:dY
Kassignvariableop_1_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_bias:da
Kassignvariableop_2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel:W
Iassignvariableop_3_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias:_
Massignvariableop_4_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel:dY
Kassignvariableop_5_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: i
Sassignvariableop_13_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_m:_
Qassignvariableop_14_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_m:g
Uassignvariableop_15_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_m:da
Sassignvariableop_16_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_m:i
Sassignvariableop_17_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_v:_
Qassignvariableop_18_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_v:g
Uassignvariableop_19_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_v:da
Sassignvariableop_20_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_v:
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB&conv/kernel/.ATTRIBUTES/VARIABLE_VALUEB$conv/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBconv/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@conv/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBconv/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB@conv/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpKassignvariableop_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpKassignvariableop_1_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpKassignvariableop_2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpIassignvariableop_3_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpMassignvariableop_4_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpKassignvariableop_5_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpSassignvariableop_13_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpQassignvariableop_14_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpUassignvariableop_15_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpSassignvariableop_16_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpSassignvariableop_17_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpQassignvariableop_18_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpUassignvariableop_19_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpSassignvariableop_20_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
'__inference_dense1_layer_call_fn_149615

inputs
unknown:d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_1493432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
B__inference_dense2_layer_call_and_return_conditional_losses_149383

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
B__inference_dense2_layer_call_and_return_conditional_losses_149649

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?I
?
!__inference__wrapped_model_149325
input_1d
Rconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_matmul_readvariableop_resource:da
Sconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_biasadd_readvariableop_resource:ds
]conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_conv1d_expanddims_1_readvariableop_resource:_
Qconv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_biasadd_readvariableop_resource:d
Rconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_matmul_readvariableop_resource:da
Sconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_biasadd_readvariableop_resource:
identity??HConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd/ReadVariableOp?TConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/ReadVariableOp?JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd/ReadVariableOp?IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul/ReadVariableOp?JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd/ReadVariableOp?IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul/ReadVariableOp?
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul/ReadVariableOpReadVariableOpRconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02K
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul/ReadVariableOp?
:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMulMatMulinput_1QConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2<
:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul?
JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd/ReadVariableOpReadVariableOpSconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02L
JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd/ReadVariableOp?
;Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAddBiasAddDConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul:product:0RConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2=
;Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd?
8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/ReluReluDConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2:
8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/Relu?
;Conv_non_trainable_K_100-batch_32-lr_1.0e-02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2=
;Conv_non_trainable_K_100-batch_32-lr_1.0e-02/ExpandDims/dim?
7Conv_non_trainable_K_100-batch_32-lr_1.0e-02/ExpandDims
ExpandDimsFConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/Relu:activations:0DConv_non_trainable_K_100-batch_32-lr_1.0e-02/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????d29
7Conv_non_trainable_K_100-batch_32-lr_1.0e-02/ExpandDims?
GConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2I
GConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims/dim?
CConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims
ExpandDims@Conv_non_trainable_K_100-batch_32-lr_1.0e-02/ExpandDims:output:0PConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d2E
CConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims?
TConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp]conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02V
TConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/ReadVariableOp?
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/dim?
EConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1
ExpandDims\Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/ReadVariableOp:value:0RConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2G
EConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1?
8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1dConv2DLConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims:output:0NConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????d*
paddingSAME*
strides
2:
8Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d?
@Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/SqueezeSqueezeAConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims

?????????2B
@Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/Squeeze?
HConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd/ReadVariableOpReadVariableOpQconv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02J
HConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd/ReadVariableOp?
9Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAddBiasAddIConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/Squeeze:output:0PConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2;
9Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd?
4Conv_non_trainable_K_100-batch_32-lr_1.0e-02/SqueezeSqueezeBConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims

?????????26
4Conv_non_trainable_K_100-batch_32-lr_1.0e-02/Squeeze?
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul/ReadVariableOpReadVariableOpRconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02K
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul/ReadVariableOp?
:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMulMatMul=Conv_non_trainable_K_100-batch_32-lr_1.0e-02/Squeeze:output:0QConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2<
:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul?
JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd/ReadVariableOpReadVariableOpSconv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02L
JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd/ReadVariableOp?
;Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAddBiasAddDConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul:product:0RConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2=
;Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd?
IdentityIdentityDConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpI^Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd/ReadVariableOpU^Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/ReadVariableOpK^Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd/ReadVariableOpJ^Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul/ReadVariableOpK^Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd/ReadVariableOpJ^Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2?
HConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd/ReadVariableOpHConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/BiasAdd/ReadVariableOp2?
TConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/ReadVariableOpTConv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/conv1d/ExpandDims_1/ReadVariableOp2?
JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd/ReadVariableOpJConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/BiasAdd/ReadVariableOp2?
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul/ReadVariableOpIConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/MatMul/ReadVariableOp2?
JConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd/ReadVariableOpJConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/BiasAdd/ReadVariableOp2?
IConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul/ReadVariableOpIConv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
%__inference_conv_layer_call_fn_149639

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv_layer_call_and_return_conditional_losses_1493662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?;
?
__inference__traced_save_149744
file_prefixY
Usavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_kernel_read_readvariableopW
Ssavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_bias_read_readvariableopW
Ssavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_read_readvariableopU
Qsavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_read_readvariableopY
Usavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_read_readvariableopW
Ssavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop^
Zsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_m_read_readvariableop\
Xsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_m_read_readvariableop`
\savev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_m_read_readvariableop^
Zsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_m_read_readvariableop^
Zsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_v_read_readvariableop\
Xsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_v_read_readvariableop`
\savev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_v_read_readvariableop^
Zsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB&conv/kernel/.ATTRIBUTES/VARIABLE_VALUEB$conv/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBconv/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@conv/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBconv/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB@conv/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Usavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_kernel_read_readvariableopSsavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense1_bias_read_readvariableopSsavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_read_readvariableopQsavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_read_readvariableopUsavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_read_readvariableopSsavev2_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopZsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_m_read_readvariableopXsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_m_read_readvariableop\savev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_m_read_readvariableopZsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_m_read_readvariableopZsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_kernel_v_read_readvariableopXsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_conv_bias_v_read_readvariableop\savev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_kernel_v_read_readvariableopZsavev2_adam_conv_non_trainable_k_100_batch_32_lr_1_0e_02_dense2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :d:d:::d:: : : : : : : :::d::::d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 

_output_shapes
:d:($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: 
?'
?
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_149561
input_17
%dense1_matmul_readvariableop_resource:d4
&dense1_biasadd_readvariableop_resource:dF
0conv_conv1d_expanddims_1_readvariableop_resource:2
$conv_biasadd_readvariableop_resource:7
%dense2_matmul_readvariableop_resource:d4
&dense2_biasadd_readvariableop_resource:
identity??conv/BiasAdd/ReadVariableOp?'conv/conv1d/ExpandDims_1/ReadVariableOp?dense1/BiasAdd/ReadVariableOp?dense1/MatMul/ReadVariableOp?dense2/BiasAdd/ReadVariableOp?dense2/MatMul/ReadVariableOp?
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense1/MatMul/ReadVariableOp?
dense1/MatMulMatMulinput_1$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense1/MatMul?
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense1/BiasAdd/ReadVariableOp?
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense1/BiasAddm
dense1/ReluReludense1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense1/Reluk
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDimsdense1/Relu:activations:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????d2

ExpandDims?
conv/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv/conv1d/ExpandDims/dim?
conv/conv1d/ExpandDims
ExpandDimsExpandDims:output:0#conv/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d2
conv/conv1d/ExpandDims?
'conv/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0conv_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02)
'conv/conv1d/ExpandDims_1/ReadVariableOp~
conv/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv/conv1d/ExpandDims_1/dim?
conv/conv1d/ExpandDims_1
ExpandDims/conv/conv1d/ExpandDims_1/ReadVariableOp:value:0%conv/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv/conv1d/ExpandDims_1?
conv/conv1dConv2Dconv/conv1d/ExpandDims:output:0!conv/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????d*
paddingSAME*
strides
2
conv/conv1d?
conv/conv1d/SqueezeSqueezeconv/conv1d:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims

?????????2
conv/conv1d/Squeeze?
conv/BiasAdd/ReadVariableOpReadVariableOp$conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv/BiasAdd/ReadVariableOp?
conv/BiasAddBiasAddconv/conv1d/Squeeze:output:0#conv/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2
conv/BiasAdd?
SqueezeSqueezeconv/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims

?????????2	
Squeeze?
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense2/MatMul/ReadVariableOp?
dense2/MatMulMatMulSqueeze:output:0$dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense2/MatMul?
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense2/BiasAdd/ReadVariableOp?
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense2/BiasAddr
IdentityIdentitydense2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv/BiasAdd/ReadVariableOp(^conv/conv1d/ExpandDims_1/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2:
conv/BiasAdd/ReadVariableOpconv/BiasAdd/ReadVariableOp2R
'conv/conv1d/ExpandDims_1/ReadVariableOp'conv/conv1d/ExpandDims_1/ReadVariableOp2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?&
?
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_149530

inputs7
%dense1_matmul_readvariableop_resource:d4
&dense1_biasadd_readvariableop_resource:dF
0conv_conv1d_expanddims_1_readvariableop_resource:2
$conv_biasadd_readvariableop_resource:7
%dense2_matmul_readvariableop_resource:d4
&dense2_biasadd_readvariableop_resource:
identity??conv/BiasAdd/ReadVariableOp?'conv/conv1d/ExpandDims_1/ReadVariableOp?dense1/BiasAdd/ReadVariableOp?dense1/MatMul/ReadVariableOp?dense2/BiasAdd/ReadVariableOp?dense2/MatMul/ReadVariableOp?
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense1/MatMul/ReadVariableOp?
dense1/MatMulMatMulinputs$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense1/MatMul?
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense1/BiasAdd/ReadVariableOp?
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense1/BiasAddm
dense1/ReluReludense1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense1/Reluk
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDimsdense1/Relu:activations:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????d2

ExpandDims?
conv/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv/conv1d/ExpandDims/dim?
conv/conv1d/ExpandDims
ExpandDimsExpandDims:output:0#conv/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d2
conv/conv1d/ExpandDims?
'conv/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0conv_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02)
'conv/conv1d/ExpandDims_1/ReadVariableOp~
conv/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv/conv1d/ExpandDims_1/dim?
conv/conv1d/ExpandDims_1
ExpandDims/conv/conv1d/ExpandDims_1/ReadVariableOp:value:0%conv/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv/conv1d/ExpandDims_1?
conv/conv1dConv2Dconv/conv1d/ExpandDims:output:0!conv/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????d*
paddingSAME*
strides
2
conv/conv1d?
conv/conv1d/SqueezeSqueezeconv/conv1d:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims

?????????2
conv/conv1d/Squeeze?
conv/BiasAdd/ReadVariableOpReadVariableOp$conv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv/BiasAdd/ReadVariableOp?
conv/BiasAddBiasAddconv/conv1d/Squeeze:output:0#conv/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2
conv/BiasAdd?
SqueezeSqueezeconv/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims

?????????2	
Squeeze?
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense2/MatMul/ReadVariableOp?
dense2/MatMulMatMulSqueeze:output:0$dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense2/MatMul?
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense2/BiasAdd/ReadVariableOp?
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense2/BiasAddr
IdentityIdentitydense2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv/BiasAdd/ReadVariableOp(^conv/conv1d/ExpandDims_1/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2:
conv/BiasAdd/ReadVariableOpconv/BiasAdd/ReadVariableOp2R
'conv/conv1d/ExpandDims_1/ReadVariableOp'conv/conv1d/ExpandDims_1/ReadVariableOp2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
M__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_fn_149595

inputs
unknown:d
	unknown_0:d
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *q
flRj
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_1493902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_dense1_layer_call_and_return_conditional_losses_149343

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????d2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_149499
input_1
unknown:d
	unknown_0:d
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1493252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?	
?
M__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_fn_149578
input_1
unknown:d
	unknown_0:d
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *q
flRj
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_1493902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
'__inference_dense2_layer_call_fn_149658

inputs
unknown:d
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense2_layer_call_and_return_conditional_losses_1493832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
B__inference_dense1_layer_call_and_return_conditional_losses_149606

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????d2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_149390

inputs
dense1_149344:d
dense1_149346:d!
conv_149367:
conv_149369:
dense2_149384:d
dense2_149386:
identity??conv/StatefulPartitionedCall?dense1/StatefulPartitionedCall?dense2/StatefulPartitionedCall?
dense1/StatefulPartitionedCallStatefulPartitionedCallinputsdense1_149344dense1_149346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_1493432 
dense1/StatefulPartitionedCallk
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDims'dense1/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????d2

ExpandDims?
conv/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv_149367conv_149369*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv_layer_call_and_return_conditional_losses_1493662
conv/StatefulPartitionedCall?
SqueezeSqueeze%conv/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims

?????????2	
Squeeze?
dense2/StatefulPartitionedCallStatefulPartitionedCallSqueeze:output:0dense2_149384dense2_149386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense2_layer_call_and_return_conditional_losses_1493832 
dense2/StatefulPartitionedCall?
IdentityIdentity'dense2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2<
conv/StatefulPartitionedCallconv/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_conv_layer_call_and_return_conditional_losses_149366

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????d*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?I
?

dense1
conv

dense2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
*B&call_and_return_all_conditional_losses
C_default_save_signature
D__call__"
_tf_keras_model
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*E&call_and_return_all_conditional_losses
F__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*G&call_and_return_all_conditional_losses
H__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*I&call_and_return_all_conditional_losses
J__call__"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
 learning_ratem:m;m<m=v>v?v@vA"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
?

!layers
"layer_regularization_losses
trainable_variables
#non_trainable_variables
$metrics
%layer_metrics
regularization_losses
	variables
D__call__
C_default_save_signature
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
,
Kserving_default"
signature_map
L:Jd2:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/kernel
F:Dd28Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
?

&layers
'layer_regularization_losses
trainable_variables
(non_trainable_variables
)metrics
*layer_metrics
regularization_losses
	variables
F__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
N:L28Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel
D:B26Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

+layers
,layer_regularization_losses
trainable_variables
-non_trainable_variables
.metrics
/layer_metrics
regularization_losses
	variables
H__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
L:Jd2:Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel
F:D28Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

0layers
1layer_regularization_losses
trainable_variables
2non_trainable_variables
3metrics
4layer_metrics
regularization_losses
	variables
J__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
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
N
	6total
	7count
8	variables
9	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
60
71"
trackable_list_wrapper
-
8	variables"
_generic_user_object
S:Q2?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/m
I:G2=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/m
Q:Od2AAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/m
K:I2?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/m
S:Q2?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/kernel/v
I:G2=Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/conv/bias/v
Q:Od2AAdam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/kernel/v
K:I2?Adam/Conv_non_trainable_K_100-batch_32-lr_1.0e-02/dense2/bias/v
?2?
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_149530
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_149561?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
!__inference__wrapped_model_149325input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_fn_149578
M__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_fn_149595?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense1_layer_call_and_return_conditional_losses_149606?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense1_layer_call_fn_149615?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_conv_layer_call_and_return_conditional_losses_149630?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_conv_layer_call_fn_149639?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense2_layer_call_and_return_conditional_losses_149649?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense2_layer_call_fn_149658?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_149499input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_149530`
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
h__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_and_return_conditional_losses_149561a
0?-
&?#
!?
input_1?????????
? "%?"
?
0?????????
? ?
M__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_fn_149578T
0?-
&?#
!?
input_1?????????
? "???????????
M__inference_Conv_non_trainable_K_100-batch_32-lr_1.0e-02_layer_call_fn_149595S
/?,
%?"
 ?
inputs?????????
? "???????????
!__inference__wrapped_model_149325o
0?-
&?#
!?
input_1?????????
? "3?0
.
output_1"?
output_1??????????
@__inference_conv_layer_call_and_return_conditional_losses_149630d3?0
)?&
$?!
inputs?????????d
? ")?&
?
0?????????d
? ?
%__inference_conv_layer_call_fn_149639W3?0
)?&
$?!
inputs?????????d
? "??????????d?
B__inference_dense1_layer_call_and_return_conditional_losses_149606\
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????d
? z
'__inference_dense1_layer_call_fn_149615O
/?,
%?"
 ?
inputs?????????
? "??????????d?
B__inference_dense2_layer_call_and_return_conditional_losses_149649\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? z
'__inference_dense2_layer_call_fn_149658O/?,
%?"
 ?
inputs?????????d
? "???????????
$__inference_signature_wrapper_149499z
;?8
? 
1?.
,
input_1!?
input_1?????????"3?0
.
output_1"?
output_1?????????