��,
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
�
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0���������"
value_indexint(0���������"+

vocab_sizeint���������(0���������"
	delimiterstring	"
offsetint �
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8��+
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
z
Variable/AssignAssignVariableOpVariableasset_path_initializer*&
 _has_manual_control_dependencies(*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
Y
asset_path_initializer_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
�
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer_1*&
 _has_manual_control_dependencies(*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
R
Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 R
���������
Y
asset_path_initializer_2Placeholder*
_output_shapes
: *
dtype0*
shape: 
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
�
Variable_2/AssignAssignVariableOp
Variable_2asset_path_initializer_2*&
 _has_manual_control_dependencies(*
dtype0
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
R
Const_3Const*
_output_shapes
: *
dtype0	*
valueB	 R
���������
Y
asset_path_initializer_3Placeholder*
_output_shapes
: *
dtype0*
shape: 
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape: *
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
�
Variable_3/AssignAssignVariableOp
Variable_3asset_path_initializer_3*&
 _has_manual_control_dependencies(*
dtype0
a
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
�

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*.
shared_namehash_table_en_vocab.txt_-2_-1*
value_dtype0	
�
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*.
shared_namehash_table_mn_vocab.txt_-2_-1*
value_dtype0	
�

Variable_4VarHandleOp*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_5VarHandleOp*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:�*
shared_name
Variable_5
f
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes	
:�*
dtype0
e
ReadVariableOpReadVariableOp
Variable_1^Variable_1/Assign*
_output_shapes
: *
dtype0
�
StatefulPartitionedCallStatefulPartitionedCallReadVariableOphash_table_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__initializer_7219
c
ReadVariableOp_1ReadVariableOpVariable^Variable/Assign*
_output_shapes
: *
dtype0
�
StatefulPartitionedCall_1StatefulPartitionedCallReadVariableOp_1
hash_table*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__initializer_7233
�
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign
�
Const_4Const"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
$
mn
en

signatures*
�
	tokenizer
_reserved_tokens
_vocab_path
	vocab

detokenize
	get_reserved_tokens

get_vocab_path
get_vocab_size

lookup
tokenize*
�
	tokenizer
_reserved_tokens
_vocab_path
	vocab

detokenize
get_reserved_tokens
get_vocab_path
get_vocab_size

lookup
tokenize*
* 
2
_basic_tokenizer
_wordpiece_tokenizer* 
* 
* 
GA
VARIABLE_VALUE
Variable_5#mn/vocab/.ATTRIBUTES/VARIABLE_VALUE*

trace_0
trace_1* 

trace_0* 

trace_0* 

trace_0* 

trace_0
 trace_1* 

!trace_0* 
2
"_basic_tokenizer
#_wordpiece_tokenizer* 
* 
* 
GA
VARIABLE_VALUE
Variable_4#en/vocab/.ATTRIBUTES/VARIABLE_VALUE*

$trace_0
%trace_1* 

&trace_0* 

'trace_0* 

(trace_0* 

)trace_0
*trace_1* 

+trace_0* 
* 

,_vocab_lookup_table* 
* 
* 
* 

	capture_0* 
* 
* 
* 
/
-	capture_1
.	capture_2
/	capture_3* 
* 

0_vocab_lookup_table* 
* 
* 
* 

	capture_0* 
* 
* 
* 
/
1	capture_1
.	capture_2
/	capture_3* 
R
2_initializer
3_create_resource
4_initialize
5_destroy_resource* 
* 
* 
* 
R
6_initializer
7_create_resource
8_initialize
9_destroy_resource* 
* 

:	_filename* 

;trace_0* 

<trace_0* 

=trace_0* 

>	_filename* 

?trace_0* 

@trace_0* 

Atrace_0* 
* 
* 

:	capture_0* 
* 
* 
* 

>	capture_0* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
Variable_5
Variable_4Const_4*
Tin
2*
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
GPU2*0J 8� *&
f!R
__inference__traced_save_7295
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename
Variable_5
Variable_4*
Tin
2*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_restore_7310��*
�

�
ARaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_true_6954m
iraggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_assert_equal_1_all
G
Craggedfromrowsplits_3_assert_equal_1_assert_assertguard_placeholder	I
Eraggedfromrowsplits_3_assert_equal_1_assert_assertguard_placeholder_1	F
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1
�
<RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityIdentityiraggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_assert_equal_1_all=^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_3/assert_equal_1/All
�
�
[RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5230�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_all
a
]raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	c
_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	`
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
VRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All
�
b
__inference_lookup_6484
	token_ids	
gather_resource:	�
identity��Gather�
GatherResourceGathergather_resource	token_ids*
Tindices0	*0
_output_shapes
:������������������*
dtype0g
IdentityIdentityGather:output:0^NoOp*
T0*0
_output_shapes
:������������������+
NoOpNoOp^Gather*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2
GatherGather:($
"
_user_specified_name
resource:[ W
0
_output_shapes
:������������������
#
_user_specified_name	token_ids
�
+
__inference__destroyer_7223
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
BRaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_false_5431k
graggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_assert_equal_1_all
h
draggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice_1	f
braggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice	F
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1
��>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert�
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_3/strided_slice_1:0) = �
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_3/strided_slice:0) = �
>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/AssertAssertgraggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_assert_equal_1_allNRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0NRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0NRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0draggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice_1NRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0braggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityIdentitygraggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_assert_equal_1_all?^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity:output:0=^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
<RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOpNoOp?^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits_3/strided_slice:]Y

_output_shapes
: 
?
_user_specified_name'%RaggedFromRowSplits_3/strided_slice_1:` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_3/assert_equal_1/All
�"
�
sRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5154�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_sub	w
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��oRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
vRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
vRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
vRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:0) = �
oRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allp^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0n^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
mRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpp^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
oRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertoRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:xt
#
_output_shapes
:���������
M
_user_specified_name53RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
4
$__inference_get_reserved_tokens_4942
identityj
ConstConst*
_output_shapes
:*
dtype0*1
value(B&B[PAD]B[UNK]B[START]B[END]I
IdentityIdentityConst:output:0*
T0*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
BRaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_false_6715k
graggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_assert_equal_1_all
h
draggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice_1	f
braggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice	F
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1
��>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert�
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_1/strided_slice_1:0) = �
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_1/strided_slice:0) = �
>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/AssertAssertgraggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_assert_equal_1_allNRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0NRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0NRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0draggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice_1NRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0braggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityIdentitygraggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_assert_equal_1_all?^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity:output:0=^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
<RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOpNoOp?^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits_1/strided_slice:]Y

_output_shapes
: 
?
_user_specified_name'%RaggedFromRowSplits_1/strided_slice_1:` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_1/assert_equal_1/All
�	
�
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_7110[
Wraggedconcat_assert_equal_1_assert_assertguard_identity_raggedconcat_assert_equal_1_all
>
:raggedconcat_assert_equal_1_assert_assertguard_placeholder	@
<raggedconcat_assert_equal_1_assert_assertguard_placeholder_1	=
9raggedconcat_assert_equal_1_assert_assertguard_identity_1
y
3RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentityWraggedconcat_assert_equal_1_assert_assertguard_identity_raggedconcat_assert_equal_1_all4^RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "
9raggedconcat_assert_equal_1_assert_assertguard_identity_1BRaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_1/All
�
�
__inference__initializer_7219*
&text_file_id_table_init_asset_filepathF
Btext_file_id_table_init_initializetablefromtextfilev2_table_handle
identity��5text_file_id_table_init/InitializeTableFromTextFileV2�
5text_file_id_table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Btext_file_id_table_init_initializetablefromtextfilev2_table_handle&text_file_id_table_init_asset_filepath*
_output_shapes
 *
	key_index���������*
value_index���������G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: Z
NoOpNoOp6^text_file_id_table_init/InitializeTableFromTextFileV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2n
5text_file_id_table_init/InitializeTableFromTextFileV25text_file_id_table_init/InitializeTableFromTextFileV2:,(
&
_user_specified_nametable_handle: 

_output_shapes
: 
��
�
__inference_detokenize_4571
	tokenized	0
,none_export_lookuptableexportv2_table_handle
identity��Assert/Assert�None_Export/LookupTableExportV2�
None_Export/LookupTableExportV2LookupTableExportV2,none_export_lookuptableexportv2_table_handle*
Tkeys0*
Tvalues0	*
_output_shapes

::�
EnsureShapeEnsureShape&None_Export/LookupTableExportV2:keys:0*
T0*#
_output_shapes
:���������*
shape:����������
EnsureShape_1EnsureShape(None_Export/LookupTableExportV2:values:0*
T0	*#
_output_shapes
:���������*
shape:���������W
argsort/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������X
argsort/NegNegEnsureShape_1:output:0*
T0	*#
_output_shapes
:���������O
argsort/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Ri
argsort/subSubargsort/Neg:y:0argsort/sub/y:output:0*
T0	*#
_output_shapes
:���������Z
argsort/ShapeShapeargsort/sub:z:0*
T0	*
_output_shapes
::��n
argsort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������g
argsort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
argsort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
argsort/strided_sliceStridedSliceargsort/Shape:output:0$argsort/strided_slice/stack:output:0&argsort/strided_slice/stack_1:output:0&argsort/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
argsort/RankConst*
_output_shapes
: *
dtype0*
value	B :�
argsort/TopKV2TopKV2argsort/sub:z:0argsort/strided_slice:output:0*
T0	*2
_output_shapes 
:���������:���������O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2EnsureShape_1:output:0argsort/TopKV2:indices:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*#
_output_shapes
:���������Q
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �

GatherV2_1GatherV2EnsureShape:output:0argsort/TopKV2:indices:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:���������]
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
strided_sliceStridedSliceGatherV2:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskI
Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Y
EqualEqualstrided_slice:output:0Equal/y:output:0*
T0	*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceGatherV2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceGatherV2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_maskl
subSubstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:���������K
	Equal_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R[
Equal_1Equalsub:z:0Equal_1/y:output:0*
T0	*#
_output_shapes
:���������O
ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
AllAllEqual_1:z:0Const:output:0*
_output_shapes
: B
and
LogicalAnd	Equal:z:0All:output:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/AssertAssertand:z:0Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 R
SizeSizeGatherV2_1:output:0^Assert/Assert*
T0*
_output_shapes
: K
CastCastSize:output:0*

DstT0	*

SrcT0*
_output_shapes
: b
MinimumMinimum	tokenizedCast:y:0*
T0	*0
_output_shapes
:������������������]
concat/values_1Const*
_output_shapes
:*
dtype0*
valueBB[UNK]M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2GatherV2_1:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*#
_output_shapes
:���������Q
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �

GatherV2_2GatherV2concat:output:0Minimum:z:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*0
_output_shapes
:������������������w
RaggedFromTensor/ShapeShapeGatherV2_2:output:0*
T0*
_output_shapes
:*
out_type0	:��n
$RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedFromTensor/strided_sliceStridedSliceRaggedFromTensor/Shape:output:0-RaggedFromTensor/strided_slice/stack:output:0/RaggedFromTensor/strided_slice/stack_1:output:0/RaggedFromTensor/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskp
&RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_1StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_1/stack:output:01RaggedFromTensor/strided_slice_1/stack_1:output:01RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskp
&RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_2StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_2/stack:output:01RaggedFromTensor/strided_slice_2/stack_1:output:01RaggedFromTensor/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
RaggedFromTensor/mulMul)RaggedFromTensor/strided_slice_1:output:0)RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: p
&RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_3StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_3/stack:output:01RaggedFromTensor/strided_slice_3/stack_1:output:01RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_maskp
 RaggedFromTensor/concat/values_0PackRaggedFromTensor/mul:z:0*
N*
T0	*
_output_shapes
:^
RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedFromTensor/concatConcatV2)RaggedFromTensor/concat/values_0:output:0)RaggedFromTensor/strided_slice_3:output:0%RaggedFromTensor/concat/axis:output:0*
N*
T0	*
_output_shapes
:�
RaggedFromTensor/ReshapeReshapeGatherV2_2:output:0 RaggedFromTensor/concat:output:0*
Tshape0	*
T0*#
_output_shapes
:���������p
&RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_4StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_4/stack:output:01RaggedFromTensor/strided_slice_4/stack_1:output:01RaggedFromTensor/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskp
&RaggedFromTensor/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_5StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_5/stack:output:01RaggedFromTensor/strided_slice_5/stack_1:output:01RaggedFromTensor/strided_slice_5/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
1RaggedFromTensor/RaggedFromUniformRowLength/ShapeShape!RaggedFromTensor/Reshape:output:0*
T0*
_output_shapes
:*
out_type0	:���
?RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ARaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ARaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSlice:RaggedFromTensor/RaggedFromUniformRowLength/Shape:output:0HRaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack:output:0JRaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1:output:0JRaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
RRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
PRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV2)RaggedFromTensor/strided_slice_4:output:0[RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: �
XRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R �
XRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
RRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangeaRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0TRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0aRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

Tidx0	*#
_output_shapes
:����������
PRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMul[RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0)RaggedFromTensor/strided_slice_5:output:0*
T0	*#
_output_shapes
:����������
RaggedSegmentJoin/ShapeShapeTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0*
T0	*
_output_shapes
::��o
%RaggedSegmentJoin/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'RaggedSegmentJoin/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'RaggedSegmentJoin/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedSegmentJoin/strided_sliceStridedSlice RaggedSegmentJoin/Shape:output:0.RaggedSegmentJoin/strided_slice/stack:output:00RaggedSegmentJoin/strided_slice/stack_1:output:00RaggedSegmentJoin/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
RaggedSegmentJoin/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin/subSub(RaggedSegmentJoin/strided_slice:output:0 RaggedSegmentJoin/sub/y:output:0*
T0*
_output_shapes
: �
>RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_sliceStridedSliceTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0GRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
.RaggedSegmentJoin/RaggedSplitsToSegmentIds/subSubARaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice:output:0CRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/ShapeShapeTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0*
T0	*
_output_shapes
:*
out_type0	:���
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Shape:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskt
2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1SubCRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2:output:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/CastCast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1Cast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/rangeRange9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast:y:04RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1:z:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/CastCast2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ShapeShape9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSlice@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Shape:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackHRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo:RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Cast:y:0LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaxMaxFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaximumMaximum?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zero:output:0>RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
MRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastRRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
<RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackKRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/TileTileERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
RRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0[RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdURaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0^RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
JRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0SRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
HRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeGRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereQRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
%RaggedSegmentJoin/UnsortedSegmentJoinUnsortedSegmentJoin!RaggedFromTensor/Reshape:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator �
StaticRegexReplaceStaticRegexReplace.RaggedSegmentJoin/UnsortedSegmentJoin:output:0*#
_output_shapes
:���������*
pattern \#\#*
rewrite �
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*#
_output_shapes
:���������*
pattern	^ +| +$*
rewrite S
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
value	B B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace_1:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
StaticRegexFullMatchStaticRegexFullMatch"StringSplit/StringSplitV2:values:0*#
_output_shapes
:���������*&
pattern\[PAD\]|\[START\]|\[END\]\

LogicalNot
LogicalNotStaticRegexFullMatch:output:0*#
_output_shapes
:���������b
RaggedMask/assert_equal/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
RaggedMask/CastCastLogicalNot:y:0^RaggedMask/assert_equal/NoOp*

DstT0	*

SrcT0
*#
_output_shapes
:����������
 RaggedMask/RaggedReduceSum/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
::���
.RaggedMask/RaggedReduceSum/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
0RaggedMask/RaggedReduceSum/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedReduceSum/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
(RaggedMask/RaggedReduceSum/strided_sliceStridedSlice)RaggedMask/RaggedReduceSum/Shape:output:07RaggedMask/RaggedReduceSum/strided_slice/stack:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_1:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 RaggedMask/RaggedReduceSum/sub/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
RaggedMask/RaggedReduceSum/subSub1RaggedMask/RaggedReduceSum/strided_slice:output:0)RaggedMask/RaggedReduceSum/sub/y:output:0*
T0*
_output_shapes
: �
GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
ARaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_sliceStridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
7RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/subSubJRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice:output:0LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
:*
out_type0	:���
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2StridedSliceBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Shape:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0	*
value	B	 R�
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1SubLRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2:output:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/startConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/deltaConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/CastCastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1CastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/rangeRangeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast:y:0=RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1:z:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/CastCast;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ShapeShapeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
HRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceIRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Shape:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackQRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastToCRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Cast:y:0URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaxMaxORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zeroConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
BRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zero:output:0GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
VRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCast[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
ERaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDimsBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackTRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/TileTileNRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0dRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProd^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0gRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
SRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0\RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
QRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapePRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereZRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
-RaggedMask/RaggedReduceSum/UnsortedSegmentSumUnsortedSegmentSumRaggedMask/Cast:y:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0"RaggedMask/RaggedReduceSum/sub:z:0*
Tindices0	*
T0	*#
_output_shapes
:���������w
RaggedMask/Cumsum/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
RaggedMask/CumsumCumsum6RaggedMask/RaggedReduceSum/UnsortedSegmentSum:output:0RaggedMask/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
RaggedMask/concat/values_0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0	*
valueB	R �
RaggedMask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RaggedMask/concatConcatV2#RaggedMask/concat/values_0:output:0RaggedMask/Cumsum:out:0RaggedMask/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/ShapeShape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
6RaggedMask/RaggedMask/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedMask/boolean_mask/strided_sliceStridedSlice1RaggedMask/RaggedMask/boolean_mask/Shape:output:0?RaggedMask/RaggedMask/boolean_mask/strided_slice/stack:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
9RaggedMask/RaggedMask/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
'RaggedMask/RaggedMask/boolean_mask/ProdProd9RaggedMask/RaggedMask/boolean_mask/strided_slice:output:0BRaggedMask/RaggedMask/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
*RaggedMask/RaggedMask/boolean_mask/Shape_1Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_1StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
*RaggedMask/RaggedMask/boolean_mask/Shape_2Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_2StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_2:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
2RaggedMask/RaggedMask/boolean_mask/concat/values_1Pack0RaggedMask/RaggedMask/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
.RaggedMask/RaggedMask/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
)RaggedMask/RaggedMask/boolean_mask/concatConcatV2;RaggedMask/RaggedMask/boolean_mask/strided_slice_1:output:0;RaggedMask/RaggedMask/boolean_mask/concat/values_1:output:0;RaggedMask/RaggedMask/boolean_mask/strided_slice_2:output:07RaggedMask/RaggedMask/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*RaggedMask/RaggedMask/boolean_mask/ReshapeReshape"StringSplit/StringSplitV2:values:02RaggedMask/RaggedMask/boolean_mask/concat:output:0*
T0*#
_output_shapes
:����������
2RaggedMask/RaggedMask/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
,RaggedMask/RaggedMask/boolean_mask/Reshape_1ReshapeLogicalNot:y:0;RaggedMask/RaggedMask/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/WhereWhere5RaggedMask/RaggedMask/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
*RaggedMask/RaggedMask/boolean_mask/SqueezeSqueeze0RaggedMask/RaggedMask/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
0RaggedMask/RaggedMask/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
+RaggedMask/RaggedMask/boolean_mask/GatherV2GatherV23RaggedMask/RaggedMask/boolean_mask/Reshape:output:03RaggedMask/RaggedMask/boolean_mask/Squeeze:output:09RaggedMask/RaggedMask/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������q
RaggedSegmentJoin_1/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
::��q
'RaggedSegmentJoin_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)RaggedSegmentJoin_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)RaggedSegmentJoin_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedSegmentJoin_1/strided_sliceStridedSlice"RaggedSegmentJoin_1/Shape:output:00RaggedSegmentJoin_1/strided_slice/stack:output:02RaggedSegmentJoin_1/strided_slice/stack_1:output:02RaggedSegmentJoin_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
RaggedSegmentJoin_1/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin_1/subSub*RaggedSegmentJoin_1/strided_slice:output:0"RaggedSegmentJoin_1/sub/y:output:0*
T0*
_output_shapes
: �
@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_sliceStridedSliceRaggedMask/concat:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceRaggedMask/concat:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
0RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/subSubCRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice:output:0ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
:*
out_type0	:���
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Shape:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskv
4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1SubERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2:output:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/CastCastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1CastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/rangeRange;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast:y:06RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1:z:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/CastCast4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ShapeShape;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
ARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceBRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Shape:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackJRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Cast:y:0NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaxMaxHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zero:output:0@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
ORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastTRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
>RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackMRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/TileTileGRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0]RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdWRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0`RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
LRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0URaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
JRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeIRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereSRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
'RaggedSegmentJoin_1/UnsortedSegmentJoinUnsortedSegmentJoin4RaggedMask/RaggedMask/boolean_mask/GatherV2:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin_1/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator {
IdentityIdentity0RaggedSegmentJoin_1/UnsortedSegmentJoin:output:0^NoOp*
T0*#
_output_shapes
:���������T
NoOpNoOp^Assert/Assert ^None_Export/LookupTableExportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2
Assert/AssertAssert/Assert2B
None_Export/LookupTableExportV2None_Export/LookupTableExportV2:,(
&
_user_specified_nametable_handle:[ W
0
_output_shapes
:������������������
#
_user_specified_name	tokenized
�
4
$__inference_get_reserved_tokens_6463
identityj
ConstConst*
_output_shapes
:*
dtype0*1
value(B&B[PAD]B[UNK]B[START]B[END]I
IdentityIdentityConst:output:0*
T0*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�!
�
qRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6565�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_sub	u
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��mRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
tRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
tRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
tRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*K
valueBB@ B:x (RaggedFromRowSplits/RowPartitionFromRowSplits/sub:0) = �
mRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all}RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0}RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0}RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
oRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
qRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityxRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0l^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
kRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpn^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1zRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
mRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertmRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:vr
#
_output_shapes
:���������
K
_user_specified_name31RaggedFromRowSplits/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
q
_user_specified_nameYWRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
rRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6917�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
x
traggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	w
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
mRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
BRaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_false_6955k
graggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_assert_equal_1_all
h
draggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice_1	f
braggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice	F
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1
��>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert�
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_3/strided_slice_1:0) = �
ERaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_3/strided_slice:0) = �
>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/AssertAssertgraggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_assert_equal_1_allNRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0NRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0NRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0draggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice_1NRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0braggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityIdentitygraggedfromrowsplits_3_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_assert_equal_1_all?^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity:output:0=^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
<RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOpNoOp?^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert>RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Assert:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits_3/strided_slice:]Y

_output_shapes
: 
?
_user_specified_name'%RaggedFromRowSplits_3/strided_slice_1:` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_3/assert_equal_1/All
�"
�
ZRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5005�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_const	^
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��VRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:0) = �
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*M
valueDBB B<y (RaggedFromRowSplits/RowPartitionFromRowSplits/Const:0) = �
VRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_allfRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_strided_slicefRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
XRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
ZRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityaRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0U^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
TRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpW^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1cRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
VRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertVRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:kg

_output_shapes
: 
M
_user_specified_name53RaggedFromRowSplits/RowPartitionFromRowSplits/Const:so

_output_shapes
: 
U
_user_specified_name=;RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:x t

_output_shapes
: 
Z
_user_specified_nameB@RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All
�
�
@RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6602g
craggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_assert_equal_1_all
d
`raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice_1	b
^raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice	D
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (RaggedFromRowSplits/strided_slice_1:0) = �
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*;
value2B0 B*y (RaggedFromRowSplits/strided_slice:0) = �
<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssertcraggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_assert_equal_1_allLRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0LRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0LRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0`raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice_1LRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0^raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentitycraggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_assert_equal_1_all=^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
@RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityGRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0;^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
:RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp=^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1IRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2|
<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:YU

_output_shapes
: 
;
_user_specified_name#!RaggedFromRowSplits/strided_slice:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits/strided_slice_1:^ Z

_output_shapes
: 
@
_user_specified_name(&RaggedFromRowSplits/assert_equal_1/All
�"
�
\RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5231�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_const	`
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��XRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:0) = �
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:0) = �
XRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_allhRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_strided_slicehRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_allY^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0W^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
VRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpY^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
XRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertXRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:mi

_output_shapes
: 
O
_user_specified_name75RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:uq

_output_shapes
: 
W
_user_specified_name?=RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All
�"
�
sRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5267�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_sub	w
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��oRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
vRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
vRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
vRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:0) = �
oRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allp^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0n^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
mRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpp^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
oRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertoRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:xt
#
_output_shapes
:���������
M
_user_specified_name53RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_7141Y
Uraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_all
g
craggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4	i
eraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_1_strided_slice_4	=
9raggedconcat_assert_equal_3_assert_assertguard_identity_1
��5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert�
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 2 (=y) have incompatible shapes.�
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*I
value@B> B8y (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = �
5RaggedConcat/assert_equal_3/Assert/AssertGuard/AssertAssertUraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_allERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_0:output:0ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_1:output:0ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_2:output:0craggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_4:output:0eraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_1_strided_slice_4*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentityUraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_all6^RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity:output:04^RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
3RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOpNoOp6^RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert*
_output_shapes
 "
9raggedconcat_assert_equal_3_assert_assertguard_identity_1BRaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2n
5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert:gc

_output_shapes
: 
I
_user_specified_name1/RaggedConcat/RaggedFromTensor_1/strided_slice_4:ea

_output_shapes
: 
G
_user_specified_name/-RaggedConcat/RaggedFromTensor/strided_slice_4:W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_3/All
�
�
pRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5040�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
v
rraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	u
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
kRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
oRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alll^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
qRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityxRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1zRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
q
_user_specified_nameYWRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
9
__inference__creator_7227
identity��
hash_table�

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*.
shared_namehash_table_en_vocab.txt_-2_-1*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: /
NoOpNoOp^hash_table*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
rRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5153�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
x
traggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	w
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
mRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�"
�
sRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6791�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_sub	w
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��oRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
vRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
vRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
vRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:0) = �
oRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allp^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0n^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
mRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpp^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
oRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertoRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:xt
#
_output_shapes
:���������
M
_user_specified_name53RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
BRaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_false_5304k
graggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_assert_equal_1_all
h
draggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice_1	f
braggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice	F
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1
��>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert�
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_2/strided_slice_1:0) = �
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_2/strided_slice:0) = �
>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/AssertAssertgraggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_assert_equal_1_allNRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0NRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0NRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0draggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice_1NRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0braggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityIdentitygraggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_assert_equal_1_all?^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity:output:0=^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
<RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOpNoOp?^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits_2/strided_slice:]Y

_output_shapes
: 
?
_user_specified_name'%RaggedFromRowSplits_2/strided_slice_1:` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_2/assert_equal_1/All
�
�
rRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5266�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
x
traggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	w
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
mRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
__inference__initializer_7233*
&text_file_id_table_init_asset_filepathF
Btext_file_id_table_init_initializetablefromtextfilev2_table_handle
identity��5text_file_id_table_init/InitializeTableFromTextFileV2�
5text_file_id_table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Btext_file_id_table_init_initializetablefromtextfilev2_table_handle&text_file_id_table_init_asset_filepath*
_output_shapes
 *
	key_index���������*
value_index���������G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: Z
NoOpNoOp6^text_file_id_table_init/InitializeTableFromTextFileV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2n
5text_file_id_table_init/InitializeTableFromTextFileV25text_file_id_table_init/InitializeTableFromTextFileV2:,(
&
_user_specified_nametable_handle: 

_output_shapes
: 
�
�
BRaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_false_5191k
graggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_assert_equal_1_all
h
draggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice_1	f
braggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice	F
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1
��>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert�
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_1/strided_slice_1:0) = �
ERaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_1/strided_slice:0) = �
>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/AssertAssertgraggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_assert_equal_1_allNRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0NRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0NRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0draggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice_1NRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0braggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityIdentitygraggedfromrowsplits_1_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_assert_equal_1_all?^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity:output:0=^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
<RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOpNoOp?^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert>RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Assert:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits_1/strided_slice:]Y

_output_shapes
: 
?
_user_specified_name'%RaggedFromRowSplits_1/strided_slice_1:` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_1/assert_equal_1/All
��
�
__inference_detokenize_4938
	tokenized	
tokenized_1	0
,none_export_lookuptableexportv2_table_handle
identity��Assert/Assert�None_Export/LookupTableExportV2�
None_Export/LookupTableExportV2LookupTableExportV2,none_export_lookuptableexportv2_table_handle*
Tkeys0*
Tvalues0	*
_output_shapes

::�
EnsureShapeEnsureShape&None_Export/LookupTableExportV2:keys:0*
T0*#
_output_shapes
:���������*
shape:����������
EnsureShape_1EnsureShape(None_Export/LookupTableExportV2:values:0*
T0	*#
_output_shapes
:���������*
shape:���������W
argsort/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������X
argsort/NegNegEnsureShape_1:output:0*
T0	*#
_output_shapes
:���������O
argsort/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Ri
argsort/subSubargsort/Neg:y:0argsort/sub/y:output:0*
T0	*#
_output_shapes
:���������Z
argsort/ShapeShapeargsort/sub:z:0*
T0	*
_output_shapes
::��n
argsort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������g
argsort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
argsort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
argsort/strided_sliceStridedSliceargsort/Shape:output:0$argsort/strided_slice/stack:output:0&argsort/strided_slice/stack_1:output:0&argsort/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
argsort/RankConst*
_output_shapes
: *
dtype0*
value	B :�
argsort/TopKV2TopKV2argsort/sub:z:0argsort/strided_slice:output:0*
T0	*2
_output_shapes 
:���������:���������O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2EnsureShape_1:output:0argsort/TopKV2:indices:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*#
_output_shapes
:���������Q
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �

GatherV2_1GatherV2EnsureShape:output:0argsort/TopKV2:indices:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:���������]
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
strided_sliceStridedSliceGatherV2:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskI
Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Y
EqualEqualstrided_slice:output:0Equal/y:output:0*
T0	*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceGatherV2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceGatherV2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_maskl
subSubstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:���������K
	Equal_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R[
Equal_1Equalsub:z:0Equal_1/y:output:0*
T0	*#
_output_shapes
:���������O
ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
AllAllEqual_1:z:0Const:output:0*
_output_shapes
: B
and
LogicalAnd	Equal:z:0All:output:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/AssertAssertand:z:0Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 R
SizeSizeGatherV2_1:output:0^Assert/Assert*
T0*
_output_shapes
: K
CastCastSize:output:0*

DstT0	*

SrcT0*
_output_shapes
: U
MinimumMinimum	tokenizedCast:y:0*
T0	*#
_output_shapes
:���������]
concat/values_1Const*
_output_shapes
:*
dtype0*
valueBB[UNK]M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2GatherV2_1:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*#
_output_shapes
:���������\
RaggedGather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedGather/GatherV2GatherV2concat:output:0Minimum:z:0#RaggedGather/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������`
RaggedSegmentJoin/ShapeShapetokenized_1*
T0	*
_output_shapes
::��o
%RaggedSegmentJoin/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'RaggedSegmentJoin/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'RaggedSegmentJoin/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedSegmentJoin/strided_sliceStridedSlice RaggedSegmentJoin/Shape:output:0.RaggedSegmentJoin/strided_slice/stack:output:00RaggedSegmentJoin/strided_slice/stack_1:output:00RaggedSegmentJoin/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
RaggedSegmentJoin/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin/subSub(RaggedSegmentJoin/strided_slice:output:0 RaggedSegmentJoin/sub/y:output:0*
T0*
_output_shapes
: �
>RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_sliceStridedSlicetokenized_1GRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1StridedSlicetokenized_1IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
.RaggedSegmentJoin/RaggedSplitsToSegmentIds/subSubARaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice:output:0CRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/ShapeShapetokenized_1*
T0	*
_output_shapes
:*
out_type0	:���
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Shape:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskt
2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1SubCRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2:output:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/CastCast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1Cast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/rangeRange9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast:y:04RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1:z:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/CastCast2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ShapeShape9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSlice@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Shape:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackHRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo:RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Cast:y:0LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaxMaxFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaximumMaximum?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zero:output:0>RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
MRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastRRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
<RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackKRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/TileTileERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
RRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0[RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdURaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0^RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
JRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0SRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
HRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeGRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereQRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
%RaggedSegmentJoin/UnsortedSegmentJoinUnsortedSegmentJoinRaggedGather/GatherV2:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator �
StaticRegexReplaceStaticRegexReplace.RaggedSegmentJoin/UnsortedSegmentJoin:output:0*#
_output_shapes
:���������*
pattern \#\#*
rewrite �
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*#
_output_shapes
:���������*
pattern	^ +| +$*
rewrite S
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
value	B B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace_1:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
StaticRegexFullMatchStaticRegexFullMatch"StringSplit/StringSplitV2:values:0*#
_output_shapes
:���������*&
pattern\[PAD\]|\[START\]|\[END\]\

LogicalNot
LogicalNotStaticRegexFullMatch:output:0*#
_output_shapes
:���������b
RaggedMask/assert_equal/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
RaggedMask/CastCastLogicalNot:y:0^RaggedMask/assert_equal/NoOp*

DstT0	*

SrcT0
*#
_output_shapes
:����������
 RaggedMask/RaggedReduceSum/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
::���
.RaggedMask/RaggedReduceSum/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
0RaggedMask/RaggedReduceSum/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedReduceSum/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
(RaggedMask/RaggedReduceSum/strided_sliceStridedSlice)RaggedMask/RaggedReduceSum/Shape:output:07RaggedMask/RaggedReduceSum/strided_slice/stack:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_1:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 RaggedMask/RaggedReduceSum/sub/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
RaggedMask/RaggedReduceSum/subSub1RaggedMask/RaggedReduceSum/strided_slice:output:0)RaggedMask/RaggedReduceSum/sub/y:output:0*
T0*
_output_shapes
: �
GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
ARaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_sliceStridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
7RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/subSubJRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice:output:0LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
:*
out_type0	:���
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2StridedSliceBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Shape:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0	*
value	B	 R�
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1SubLRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2:output:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/startConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/deltaConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/CastCastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1CastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/rangeRangeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast:y:0=RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1:z:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/CastCast;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ShapeShapeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
HRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceIRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Shape:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackQRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastToCRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Cast:y:0URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaxMaxORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zeroConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
BRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zero:output:0GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
VRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCast[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
ERaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDimsBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackTRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/TileTileNRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0dRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProd^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0gRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
SRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0\RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
QRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapePRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereZRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
-RaggedMask/RaggedReduceSum/UnsortedSegmentSumUnsortedSegmentSumRaggedMask/Cast:y:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0"RaggedMask/RaggedReduceSum/sub:z:0*
Tindices0	*
T0	*#
_output_shapes
:���������w
RaggedMask/Cumsum/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
RaggedMask/CumsumCumsum6RaggedMask/RaggedReduceSum/UnsortedSegmentSum:output:0RaggedMask/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
RaggedMask/concat/values_0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0	*
valueB	R �
RaggedMask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RaggedMask/concatConcatV2#RaggedMask/concat/values_0:output:0RaggedMask/Cumsum:out:0RaggedMask/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/ShapeShape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
6RaggedMask/RaggedMask/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedMask/boolean_mask/strided_sliceStridedSlice1RaggedMask/RaggedMask/boolean_mask/Shape:output:0?RaggedMask/RaggedMask/boolean_mask/strided_slice/stack:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
9RaggedMask/RaggedMask/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
'RaggedMask/RaggedMask/boolean_mask/ProdProd9RaggedMask/RaggedMask/boolean_mask/strided_slice:output:0BRaggedMask/RaggedMask/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
*RaggedMask/RaggedMask/boolean_mask/Shape_1Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_1StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
*RaggedMask/RaggedMask/boolean_mask/Shape_2Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_2StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_2:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
2RaggedMask/RaggedMask/boolean_mask/concat/values_1Pack0RaggedMask/RaggedMask/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
.RaggedMask/RaggedMask/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
)RaggedMask/RaggedMask/boolean_mask/concatConcatV2;RaggedMask/RaggedMask/boolean_mask/strided_slice_1:output:0;RaggedMask/RaggedMask/boolean_mask/concat/values_1:output:0;RaggedMask/RaggedMask/boolean_mask/strided_slice_2:output:07RaggedMask/RaggedMask/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*RaggedMask/RaggedMask/boolean_mask/ReshapeReshape"StringSplit/StringSplitV2:values:02RaggedMask/RaggedMask/boolean_mask/concat:output:0*
T0*#
_output_shapes
:����������
2RaggedMask/RaggedMask/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
,RaggedMask/RaggedMask/boolean_mask/Reshape_1ReshapeLogicalNot:y:0;RaggedMask/RaggedMask/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/WhereWhere5RaggedMask/RaggedMask/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
*RaggedMask/RaggedMask/boolean_mask/SqueezeSqueeze0RaggedMask/RaggedMask/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
0RaggedMask/RaggedMask/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
+RaggedMask/RaggedMask/boolean_mask/GatherV2GatherV23RaggedMask/RaggedMask/boolean_mask/Reshape:output:03RaggedMask/RaggedMask/boolean_mask/Squeeze:output:09RaggedMask/RaggedMask/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������q
RaggedSegmentJoin_1/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
::��q
'RaggedSegmentJoin_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)RaggedSegmentJoin_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)RaggedSegmentJoin_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedSegmentJoin_1/strided_sliceStridedSlice"RaggedSegmentJoin_1/Shape:output:00RaggedSegmentJoin_1/strided_slice/stack:output:02RaggedSegmentJoin_1/strided_slice/stack_1:output:02RaggedSegmentJoin_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
RaggedSegmentJoin_1/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin_1/subSub*RaggedSegmentJoin_1/strided_slice:output:0"RaggedSegmentJoin_1/sub/y:output:0*
T0*
_output_shapes
: �
@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_sliceStridedSliceRaggedMask/concat:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceRaggedMask/concat:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
0RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/subSubCRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice:output:0ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
:*
out_type0	:���
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Shape:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskv
4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1SubERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2:output:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/CastCastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1CastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/rangeRange;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast:y:06RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1:z:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/CastCast4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ShapeShape;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
ARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceBRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Shape:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackJRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Cast:y:0NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaxMaxHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zero:output:0@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
ORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastTRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
>RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackMRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/TileTileGRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0]RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdWRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0`RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
LRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0URaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
JRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeIRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereSRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
'RaggedSegmentJoin_1/UnsortedSegmentJoinUnsortedSegmentJoin4RaggedMask/RaggedMask/boolean_mask/GatherV2:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin_1/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator {
IdentityIdentity0RaggedSegmentJoin_1/UnsortedSegmentJoin:output:0^NoOp*
T0*#
_output_shapes
:���������T
NoOpNoOp^Assert/Assert ^None_Export/LookupTableExportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2
Assert/AssertAssert/Assert2B
None_Export/LookupTableExportV2None_Export/LookupTableExportV2:,(
&
_user_specified_nametable_handle:NJ
#
_output_shapes
:���������
#
_user_specified_name	tokenized:N J
#
_output_shapes
:���������
#
_user_specified_name	tokenized
�
9
__inference__creator_7213
identity��
hash_table�

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*.
shared_namehash_table_mn_vocab.txt_-2_-1*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: /
NoOpNoOp^hash_table*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
rRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6790�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
x
traggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	w
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
mRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
sraggedfromrowsplits_2_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
[RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6754�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_all
a
]raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	c
_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	`
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
VRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All
�!
�
qRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5041�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_sub	u
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��mRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
tRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
tRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
tRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*K
valueBB@ B:x (RaggedFromRowSplits/RowPartitionFromRowSplits/sub:0) = �
mRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all}RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0}RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0}RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
oRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
qRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityxRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0l^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
kRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpn^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1zRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
mRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertmRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:vr
#
_output_shapes
:���������
K
_user_specified_name31RaggedFromRowSplits/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
q
_user_specified_nameYWRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�"
�
\RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6642�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_const	`
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��XRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:0) = �
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:0) = �
XRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_allhRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_strided_slicehRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_allY^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0W^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
VRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpY^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
XRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertXRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:mi

_output_shapes
: 
O
_user_specified_name75RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:uq

_output_shapes
: 
W
_user_specified_name?=RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All
�"
�
sRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6678�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_sub	w
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��oRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
vRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
vRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
vRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:0) = �
oRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allp^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0n^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
mRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpp^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
oRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertoRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:xt
#
_output_shapes
:���������
M
_user_specified_name53RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
YRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5004�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_all
_
[raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	a
]raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	^
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
TRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
XRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_allU^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
ZRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityaRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1cRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :x t

_output_shapes
: 
Z
_user_specified_nameB@RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All
�
�
YRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6528�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_all
_
[raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	a
]raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	^
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
TRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
XRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_allU^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
ZRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityaRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1cRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :x t

_output_shapes
: 
Z
_user_specified_nameB@RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All
�

�
ARaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_true_5190m
iraggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_assert_equal_1_all
G
Craggedfromrowsplits_1_assert_equal_1_assert_assertguard_placeholder	I
Eraggedfromrowsplits_1_assert_equal_1_assert_assertguard_placeholder_1	F
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1
�
<RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityIdentityiraggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_assert_equal_1_all=^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_1/assert_equal_1/All
�
b
__inference_lookup_4963
	token_ids	
gather_resource:	�
identity��Gather�
GatherResourceGathergather_resource	token_ids*
Tindices0	*0
_output_shapes
:������������������*
dtype0g
IdentityIdentityGather:output:0^NoOp*
T0*0
_output_shapes
:������������������+
NoOpNoOp^Gather*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2
GatherGather:($
"
_user_specified_name
resource:[ W
0
_output_shapes
:������������������
#
_user_specified_name	token_ids
��
�
__inference_detokenize_6092
	tokenized	0
,none_export_lookuptableexportv2_table_handle
identity��Assert/Assert�None_Export/LookupTableExportV2�
None_Export/LookupTableExportV2LookupTableExportV2,none_export_lookuptableexportv2_table_handle*
Tkeys0*
Tvalues0	*
_output_shapes

::�
EnsureShapeEnsureShape&None_Export/LookupTableExportV2:keys:0*
T0*#
_output_shapes
:���������*
shape:����������
EnsureShape_1EnsureShape(None_Export/LookupTableExportV2:values:0*
T0	*#
_output_shapes
:���������*
shape:���������W
argsort/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������X
argsort/NegNegEnsureShape_1:output:0*
T0	*#
_output_shapes
:���������O
argsort/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Ri
argsort/subSubargsort/Neg:y:0argsort/sub/y:output:0*
T0	*#
_output_shapes
:���������Z
argsort/ShapeShapeargsort/sub:z:0*
T0	*
_output_shapes
::��n
argsort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������g
argsort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
argsort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
argsort/strided_sliceStridedSliceargsort/Shape:output:0$argsort/strided_slice/stack:output:0&argsort/strided_slice/stack_1:output:0&argsort/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
argsort/RankConst*
_output_shapes
: *
dtype0*
value	B :�
argsort/TopKV2TopKV2argsort/sub:z:0argsort/strided_slice:output:0*
T0	*2
_output_shapes 
:���������:���������O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2EnsureShape_1:output:0argsort/TopKV2:indices:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*#
_output_shapes
:���������Q
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �

GatherV2_1GatherV2EnsureShape:output:0argsort/TopKV2:indices:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:���������]
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
strided_sliceStridedSliceGatherV2:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskI
Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Y
EqualEqualstrided_slice:output:0Equal/y:output:0*
T0	*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceGatherV2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceGatherV2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_maskl
subSubstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:���������K
	Equal_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R[
Equal_1Equalsub:z:0Equal_1/y:output:0*
T0	*#
_output_shapes
:���������O
ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
AllAllEqual_1:z:0Const:output:0*
_output_shapes
: B
and
LogicalAnd	Equal:z:0All:output:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/AssertAssertand:z:0Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 R
SizeSizeGatherV2_1:output:0^Assert/Assert*
T0*
_output_shapes
: K
CastCastSize:output:0*

DstT0	*

SrcT0*
_output_shapes
: b
MinimumMinimum	tokenizedCast:y:0*
T0	*0
_output_shapes
:������������������]
concat/values_1Const*
_output_shapes
:*
dtype0*
valueBB[UNK]M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2GatherV2_1:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*#
_output_shapes
:���������Q
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �

GatherV2_2GatherV2concat:output:0Minimum:z:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*0
_output_shapes
:������������������w
RaggedFromTensor/ShapeShapeGatherV2_2:output:0*
T0*
_output_shapes
:*
out_type0	:��n
$RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedFromTensor/strided_sliceStridedSliceRaggedFromTensor/Shape:output:0-RaggedFromTensor/strided_slice/stack:output:0/RaggedFromTensor/strided_slice/stack_1:output:0/RaggedFromTensor/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskp
&RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_1StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_1/stack:output:01RaggedFromTensor/strided_slice_1/stack_1:output:01RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskp
&RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_2StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_2/stack:output:01RaggedFromTensor/strided_slice_2/stack_1:output:01RaggedFromTensor/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
RaggedFromTensor/mulMul)RaggedFromTensor/strided_slice_1:output:0)RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: p
&RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_3StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_3/stack:output:01RaggedFromTensor/strided_slice_3/stack_1:output:01RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_maskp
 RaggedFromTensor/concat/values_0PackRaggedFromTensor/mul:z:0*
N*
T0	*
_output_shapes
:^
RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedFromTensor/concatConcatV2)RaggedFromTensor/concat/values_0:output:0)RaggedFromTensor/strided_slice_3:output:0%RaggedFromTensor/concat/axis:output:0*
N*
T0	*
_output_shapes
:�
RaggedFromTensor/ReshapeReshapeGatherV2_2:output:0 RaggedFromTensor/concat:output:0*
Tshape0	*
T0*#
_output_shapes
:���������p
&RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_4StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_4/stack:output:01RaggedFromTensor/strided_slice_4/stack_1:output:01RaggedFromTensor/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskp
&RaggedFromTensor/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(RaggedFromTensor/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 RaggedFromTensor/strided_slice_5StridedSliceRaggedFromTensor/Shape:output:0/RaggedFromTensor/strided_slice_5/stack:output:01RaggedFromTensor/strided_slice_5/stack_1:output:01RaggedFromTensor/strided_slice_5/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
1RaggedFromTensor/RaggedFromUniformRowLength/ShapeShape!RaggedFromTensor/Reshape:output:0*
T0*
_output_shapes
:*
out_type0	:���
?RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ARaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ARaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSlice:RaggedFromTensor/RaggedFromUniformRowLength/Shape:output:0HRaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack:output:0JRaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1:output:0JRaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
RRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
PRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV2)RaggedFromTensor/strided_slice_4:output:0[RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: �
XRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R �
XRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
RRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangeaRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0TRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0aRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

Tidx0	*#
_output_shapes
:����������
PRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMul[RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0)RaggedFromTensor/strided_slice_5:output:0*
T0	*#
_output_shapes
:����������
RaggedSegmentJoin/ShapeShapeTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0*
T0	*
_output_shapes
::��o
%RaggedSegmentJoin/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'RaggedSegmentJoin/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'RaggedSegmentJoin/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedSegmentJoin/strided_sliceStridedSlice RaggedSegmentJoin/Shape:output:0.RaggedSegmentJoin/strided_slice/stack:output:00RaggedSegmentJoin/strided_slice/stack_1:output:00RaggedSegmentJoin/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
RaggedSegmentJoin/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin/subSub(RaggedSegmentJoin/strided_slice:output:0 RaggedSegmentJoin/sub/y:output:0*
T0*
_output_shapes
: �
>RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_sliceStridedSliceTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0GRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
.RaggedSegmentJoin/RaggedSplitsToSegmentIds/subSubARaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice:output:0CRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/ShapeShapeTRaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0*
T0	*
_output_shapes
:*
out_type0	:���
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Shape:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskt
2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1SubCRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2:output:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/CastCast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1Cast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/rangeRange9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast:y:04RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1:z:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/CastCast2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ShapeShape9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSlice@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Shape:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackHRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo:RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Cast:y:0LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaxMaxFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaximumMaximum?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zero:output:0>RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
MRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastRRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
<RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackKRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/TileTileERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
RRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0[RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdURaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0^RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
JRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0SRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
HRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeGRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereQRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
%RaggedSegmentJoin/UnsortedSegmentJoinUnsortedSegmentJoin!RaggedFromTensor/Reshape:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator �
StaticRegexReplaceStaticRegexReplace.RaggedSegmentJoin/UnsortedSegmentJoin:output:0*#
_output_shapes
:���������*
pattern \#\#*
rewrite �
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*#
_output_shapes
:���������*
pattern	^ +| +$*
rewrite S
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
value	B B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace_1:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
StaticRegexFullMatchStaticRegexFullMatch"StringSplit/StringSplitV2:values:0*#
_output_shapes
:���������*&
pattern\[PAD\]|\[START\]|\[END\]\

LogicalNot
LogicalNotStaticRegexFullMatch:output:0*#
_output_shapes
:���������b
RaggedMask/assert_equal/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
RaggedMask/CastCastLogicalNot:y:0^RaggedMask/assert_equal/NoOp*

DstT0	*

SrcT0
*#
_output_shapes
:����������
 RaggedMask/RaggedReduceSum/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
::���
.RaggedMask/RaggedReduceSum/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
0RaggedMask/RaggedReduceSum/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedReduceSum/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
(RaggedMask/RaggedReduceSum/strided_sliceStridedSlice)RaggedMask/RaggedReduceSum/Shape:output:07RaggedMask/RaggedReduceSum/strided_slice/stack:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_1:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 RaggedMask/RaggedReduceSum/sub/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
RaggedMask/RaggedReduceSum/subSub1RaggedMask/RaggedReduceSum/strided_slice:output:0)RaggedMask/RaggedReduceSum/sub/y:output:0*
T0*
_output_shapes
: �
GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
ARaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_sliceStridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
7RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/subSubJRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice:output:0LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
:*
out_type0	:���
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2StridedSliceBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Shape:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0	*
value	B	 R�
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1SubLRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2:output:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/startConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/deltaConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/CastCastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1CastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/rangeRangeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast:y:0=RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1:z:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/CastCast;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ShapeShapeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
HRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceIRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Shape:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackQRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastToCRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Cast:y:0URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaxMaxORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zeroConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
BRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zero:output:0GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
VRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCast[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
ERaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDimsBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackTRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/TileTileNRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0dRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProd^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0gRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
SRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0\RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
QRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapePRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereZRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
-RaggedMask/RaggedReduceSum/UnsortedSegmentSumUnsortedSegmentSumRaggedMask/Cast:y:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0"RaggedMask/RaggedReduceSum/sub:z:0*
Tindices0	*
T0	*#
_output_shapes
:���������w
RaggedMask/Cumsum/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
RaggedMask/CumsumCumsum6RaggedMask/RaggedReduceSum/UnsortedSegmentSum:output:0RaggedMask/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
RaggedMask/concat/values_0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0	*
valueB	R �
RaggedMask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RaggedMask/concatConcatV2#RaggedMask/concat/values_0:output:0RaggedMask/Cumsum:out:0RaggedMask/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/ShapeShape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
6RaggedMask/RaggedMask/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedMask/boolean_mask/strided_sliceStridedSlice1RaggedMask/RaggedMask/boolean_mask/Shape:output:0?RaggedMask/RaggedMask/boolean_mask/strided_slice/stack:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
9RaggedMask/RaggedMask/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
'RaggedMask/RaggedMask/boolean_mask/ProdProd9RaggedMask/RaggedMask/boolean_mask/strided_slice:output:0BRaggedMask/RaggedMask/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
*RaggedMask/RaggedMask/boolean_mask/Shape_1Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_1StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
*RaggedMask/RaggedMask/boolean_mask/Shape_2Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_2StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_2:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
2RaggedMask/RaggedMask/boolean_mask/concat/values_1Pack0RaggedMask/RaggedMask/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
.RaggedMask/RaggedMask/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
)RaggedMask/RaggedMask/boolean_mask/concatConcatV2;RaggedMask/RaggedMask/boolean_mask/strided_slice_1:output:0;RaggedMask/RaggedMask/boolean_mask/concat/values_1:output:0;RaggedMask/RaggedMask/boolean_mask/strided_slice_2:output:07RaggedMask/RaggedMask/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*RaggedMask/RaggedMask/boolean_mask/ReshapeReshape"StringSplit/StringSplitV2:values:02RaggedMask/RaggedMask/boolean_mask/concat:output:0*
T0*#
_output_shapes
:����������
2RaggedMask/RaggedMask/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
,RaggedMask/RaggedMask/boolean_mask/Reshape_1ReshapeLogicalNot:y:0;RaggedMask/RaggedMask/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/WhereWhere5RaggedMask/RaggedMask/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
*RaggedMask/RaggedMask/boolean_mask/SqueezeSqueeze0RaggedMask/RaggedMask/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
0RaggedMask/RaggedMask/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
+RaggedMask/RaggedMask/boolean_mask/GatherV2GatherV23RaggedMask/RaggedMask/boolean_mask/Reshape:output:03RaggedMask/RaggedMask/boolean_mask/Squeeze:output:09RaggedMask/RaggedMask/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������q
RaggedSegmentJoin_1/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
::��q
'RaggedSegmentJoin_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)RaggedSegmentJoin_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)RaggedSegmentJoin_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedSegmentJoin_1/strided_sliceStridedSlice"RaggedSegmentJoin_1/Shape:output:00RaggedSegmentJoin_1/strided_slice/stack:output:02RaggedSegmentJoin_1/strided_slice/stack_1:output:02RaggedSegmentJoin_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
RaggedSegmentJoin_1/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin_1/subSub*RaggedSegmentJoin_1/strided_slice:output:0"RaggedSegmentJoin_1/sub/y:output:0*
T0*
_output_shapes
: �
@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_sliceStridedSliceRaggedMask/concat:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceRaggedMask/concat:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
0RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/subSubCRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice:output:0ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
:*
out_type0	:���
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Shape:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskv
4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1SubERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2:output:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/CastCastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1CastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/rangeRange;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast:y:06RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1:z:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/CastCast4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ShapeShape;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
ARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceBRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Shape:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackJRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Cast:y:0NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaxMaxHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zero:output:0@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
ORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastTRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
>RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackMRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/TileTileGRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0]RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdWRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0`RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
LRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0URaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
JRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeIRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereSRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
'RaggedSegmentJoin_1/UnsortedSegmentJoinUnsortedSegmentJoin4RaggedMask/RaggedMask/boolean_mask/GatherV2:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin_1/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator {
IdentityIdentity0RaggedSegmentJoin_1/UnsortedSegmentJoin:output:0^NoOp*
T0*#
_output_shapes
:���������T
NoOpNoOp^Assert/Assert ^None_Export/LookupTableExportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2
Assert/AssertAssert/Assert2B
None_Export/LookupTableExportV2None_Export/LookupTableExportV2:,(
&
_user_specified_nametable_handle:[ W
0
_output_shapes
:������������������
#
_user_specified_name	tokenized
�"
�
sRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5394�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_sub	w
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��oRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
vRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
vRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
vRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:0) = �
oRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allp^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0n^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
mRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpp^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
oRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertoRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:xt
#
_output_shapes
:���������
M
_user_specified_name53RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�
�
BRaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_false_6828k
graggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_assert_equal_1_all
h
draggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice_1	f
braggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice	F
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1
��>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert�
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_2/strided_slice_1:0) = �
ERaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_2/strided_slice:0) = �
>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/AssertAssertgraggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_assert_equal_1_allNRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0NRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0NRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0draggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice_1NRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0braggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityIdentitygraggedfromrowsplits_2_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_assert_equal_1_all?^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity:output:0=^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
<RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOpNoOp?^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert>RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Assert:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits_2/strided_slice:]Y

_output_shapes
: 
?
_user_specified_name'%RaggedFromRowSplits_2/strided_slice_1:` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_2/assert_equal_1/All
�

�
?RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6601i
eraggedfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_assert_equal_1_all
E
Araggedfromrowsplits_assert_equal_1_assert_assertguard_placeholder	G
Craggedfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	D
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
:RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityeraggedfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_assert_equal_1_all;^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
@RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityGRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1IRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :^ Z

_output_shapes
: 
@
_user_specified_name(&RaggedFromRowSplits/assert_equal_1/All
�
�
[RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6881�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_all
a
]raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	c
_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	`
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
VRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All
�"
�
\RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5358�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_const	`
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��XRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:0) = �
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:0) = �
XRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_allhRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_strided_slicehRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_allY^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0W^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
VRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpY^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
XRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertXRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:mi

_output_shapes
: 
O
_user_specified_name75RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:uq

_output_shapes
: 
W
_user_specified_name?=RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All
�
�
rRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6677�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
x
traggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	w
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
mRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
sraggedfromrowsplits_1_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�

�
ARaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_true_6714m
iraggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_assert_equal_1_all
G
Craggedfromrowsplits_1_assert_equal_1_assert_assertguard_placeholder	I
Eraggedfromrowsplits_1_assert_equal_1_assert_assertguard_placeholder_1	F
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1
�
<RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityIdentityiraggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_assert_equal_1_all=^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Braggedfromrowsplits_1_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_1/assert_equal_1/All
�
�
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_7111Y
Uraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_all
g
craggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4	X
Traggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggednrows_1_sub	=
9raggedconcat_assert_equal_1_assert_assertguard_identity_1
��5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert�
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 1 (=y) have incompatible shapes.�
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*8
value/B- B'y (RaggedConcat/RaggedNRows_1/sub:0) = �
5RaggedConcat/assert_equal_1/Assert/AssertGuard/AssertAssertUraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_allERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0craggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0Traggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggednrows_1_sub*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentityUraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_all6^RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity:output:04^RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
3RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOpNoOp6^RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "
9raggedconcat_assert_equal_1_assert_assertguard_identity_1BRaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2n
5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert:VR

_output_shapes
: 
8
_user_specified_name RaggedConcat/RaggedNRows_1/sub:ea

_output_shapes
: 
G
_user_specified_name/-RaggedConcat/RaggedFromTensor/strided_slice_4:W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_1/All
�
`
__inference_get_vocab_size_4957,
shape_readvariableop_resource:	�
identity�o
Shape/ReadVariableOpReadVariableOpshape_readvariableop_resource*
_output_shapes	
:�*
dtype0P
ShapeConst*
_output_shapes
:*
dtype0*
valueB:�]
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
shrink_axis_maskM
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :( $
"
_user_specified_name
resource
�
�
 __inference__traced_restore_7310
file_prefix*
assignvariableop_variable_5:	�,
assignvariableop_1_variable_4:	�

identity_3��AssignVariableOp�AssignVariableOp_1�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*{
valuerBpB#mn/vocab/.ATTRIBUTES/VARIABLE_VALUEB#en/vocab/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHv
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_5Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_4Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_3IdentityIdentity_2:output:0^NoOp_1*
T0*
_output_shapes
: L
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2(
AssignVariableOp_1AssignVariableOp_12$
AssignVariableOpAssignVariableOp:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
@RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5078g
craggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_assert_equal_1_all
d
`raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice_1	b
^raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice	D
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (RaggedFromRowSplits/strided_slice_1:0) = �
CRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*;
value2B0 B*y (RaggedFromRowSplits/strided_slice:0) = �
<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssertcraggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_assert_equal_1_allLRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0LRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0LRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0`raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice_1LRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0^raggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_strided_slice*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentitycraggedfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_assert_equal_1_all=^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
@RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityGRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0;^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
:RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp=^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1IRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2|
<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert<RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:YU

_output_shapes
: 
;
_user_specified_name#!RaggedFromRowSplits/strided_slice:[W

_output_shapes
: 
=
_user_specified_name%#RaggedFromRowSplits/strided_slice_1:^ Z

_output_shapes
: 
@
_user_specified_name(&RaggedFromRowSplits/assert_equal_1/All
�
`
__inference_get_vocab_size_6478,
shape_readvariableop_resource:	�
identity�o
Shape/ReadVariableOpReadVariableOpshape_readvariableop_resource*
_output_shapes	
:�*
dtype0P
ShapeConst*
_output_shapes
:*
dtype0*
valueB:�]
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
shrink_axis_maskM
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :( $
"
_user_specified_name
resource
�
�
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_5617Y
Uraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_all
g
craggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4	i
eraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_1_strided_slice_4	=
9raggedconcat_assert_equal_3_assert_assertguard_identity_1
��5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert�
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 2 (=y) have incompatible shapes.�
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*I
value@B> B8y (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = �
5RaggedConcat/assert_equal_3/Assert/AssertGuard/AssertAssertUraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_allERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_0:output:0ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_1:output:0ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_2:output:0craggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_4:output:0eraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_1_strided_slice_4*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentityUraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_all6^RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity:output:04^RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
3RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOpNoOp6^RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert*
_output_shapes
 "
9raggedconcat_assert_equal_3_assert_assertguard_identity_1BRaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2n
5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert:gc

_output_shapes
: 
I
_user_specified_name1/RaggedConcat/RaggedFromTensor_1/strided_slice_4:ea

_output_shapes
: 
G
_user_specified_name/-RaggedConcat/RaggedFromTensor/strided_slice_4:W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_3/All
�
�
rRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5393�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
x
traggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	w
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
mRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alln^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�

�
ARaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_true_5430m
iraggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_assert_equal_1_all
G
Craggedfromrowsplits_3_assert_equal_1_assert_assertguard_placeholder	I
Eraggedfromrowsplits_3_assert_equal_1_assert_assertguard_placeholder_1	F
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1
�
<RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityIdentityiraggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_assert_equal_1_all=^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Braggedfromrowsplits_3_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_3/assert_equal_1/All
�
�
pRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6564�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
v
rraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	u
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
�
kRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
oRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_raggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_alll^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
qRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityxRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
qraggedfromrowsplits_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1zRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������:)%
#
_output_shapes
:���������:� �

_output_shapes
: 
q
_user_specified_nameYWRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�"
�
\RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5118�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_const	`
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��XRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:0) = �
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:0) = �
XRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_allhRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_strided_slicehRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_allY^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0W^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
VRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpY^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
XRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertXRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:mi

_output_shapes
: 
O
_user_specified_name75RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:uq

_output_shapes
: 
W
_user_specified_name?=RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All
�"
�
\RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6755�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_const	`
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��XRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:0) = �
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:0) = �
XRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_allhRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_strided_slicehRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_allY^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0W^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
VRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpY^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
\raggedfromrowsplits_2_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
XRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertXRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:mi

_output_shapes
: 
O
_user_specified_name75RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:uq

_output_shapes
: 
W
_user_specified_name?=RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All
�"
�
\RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6882�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_const	`
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��XRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:0) = �
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:0) = �
XRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_allhRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_strided_slicehRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_allY^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0W^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
VRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpY^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
XRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertXRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:mi

_output_shapes
: 
O
_user_specified_name75RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:uq

_output_shapes
: 
W
_user_specified_name?=RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All
�
<
__inference_get_vocab_path_4947
unknown
identity>
IdentityIdentityunknown*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
�
�
[RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6641�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_all
a
]raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	c
_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	`
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
VRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All
�
�
[RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5357�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_all
a
]raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	c
_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	`
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
VRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
\raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All
�	
�
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_5586[
Wraggedconcat_assert_equal_1_assert_assertguard_identity_raggedconcat_assert_equal_1_all
>
:raggedconcat_assert_equal_1_assert_assertguard_placeholder	@
<raggedconcat_assert_equal_1_assert_assertguard_placeholder_1	=
9raggedconcat_assert_equal_1_assert_assertguard_identity_1
y
3RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentityWraggedconcat_assert_equal_1_assert_assertguard_identity_raggedconcat_assert_equal_1_all4^RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "
9raggedconcat_assert_equal_1_assert_assertguard_identity_1BRaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_1/All
�
�
[RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5117�
�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_all
a
]raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder	c
_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	`
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
VRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
\RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentitycRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
\raggedfromrowsplits_1_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1eRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :z v

_output_shapes
: 
\
_user_specified_nameDBRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All
�

�
__inference_lookup_4973
	token_ids	
token_ids_1	3
$raggedgather_readvariableop_resource:	�
identity

identity_1	��RaggedGather/ReadVariableOp}
RaggedGather/ReadVariableOpReadVariableOp$raggedgather_readvariableop_resource*
_output_shapes	
:�*
dtype0\
RaggedGather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedGather/GatherV2GatherV2#RaggedGather/ReadVariableOp:value:0	token_ids#RaggedGather/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������i
IdentityIdentityRaggedGather/GatherV2:output:0^NoOp*
T0*#
_output_shapes
:���������X

Identity_1Identitytoken_ids_1^NoOp*
T0	*#
_output_shapes
:���������@
NoOpNoOp^RaggedGather/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2:
RaggedGather/ReadVariableOpRaggedGather/ReadVariableOp:($
"
_user_specified_name
resource:NJ
#
_output_shapes
:���������
#
_user_specified_name	token_ids:N J
#
_output_shapes
:���������
#
_user_specified_name	token_ids
�
�
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_5587Y
Uraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_all
g
craggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4	X
Traggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggednrows_1_sub	=
9raggedconcat_assert_equal_1_assert_assertguard_identity_1
��5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert�
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 1 (=y) have incompatible shapes.�
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*8
value/B- B'y (RaggedConcat/RaggedNRows_1/sub:0) = �
5RaggedConcat/assert_equal_1/Assert/AssertGuard/AssertAssertUraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_allERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0craggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0Traggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggednrows_1_sub*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentityUraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_all6^RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity:output:04^RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
3RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOpNoOp6^RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "
9raggedconcat_assert_equal_1_assert_assertguard_identity_1BRaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2n
5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert:VR

_output_shapes
: 
8
_user_specified_name RaggedConcat/RaggedNRows_1/sub:ea

_output_shapes
: 
G
_user_specified_name/-RaggedConcat/RaggedFromTensor/strided_slice_4:W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_1/All
�
<
__inference_get_vocab_path_6468
unknown
identity>
IdentityIdentityunknown*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
�"
�
sRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6918�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_all
�
�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_sub	w
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
��oRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert�
vRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
vRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
vRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:0) = �
oRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_sub*
T
2	*&
 _has_manual_control_dependencies(*
_output_shapes
 �
qRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_assert_raggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_allp^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
sRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1IdentityzRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0n^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
mRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpp^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
 "�
sraggedfromrowsplits_3_rowpartitionfromrowsplits_assert_non_negative_assert_less_equal_assert_assertguard_identity_1|RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
: :���������2�
oRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertoRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert:xt
#
_output_shapes
:���������
M
_user_specified_name53RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:� �

_output_shapes
: 
s
_user_specified_name[YRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All
�	
�
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_5616[
Wraggedconcat_assert_equal_3_assert_assertguard_identity_raggedconcat_assert_equal_3_all
>
:raggedconcat_assert_equal_3_assert_assertguard_placeholder	@
<raggedconcat_assert_equal_3_assert_assertguard_placeholder_1	=
9raggedconcat_assert_equal_3_assert_assertguard_identity_1
y
3RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentityWraggedconcat_assert_equal_3_assert_assertguard_identity_raggedconcat_assert_equal_3_all4^RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "
9raggedconcat_assert_equal_3_assert_assertguard_identity_1BRaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_3/All
�

�
?RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5077i
eraggedfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_assert_equal_1_all
E
Araggedfromrowsplits_assert_equal_1_assert_assertguard_placeholder	G
Craggedfromrowsplits_assert_equal_1_assert_assertguard_placeholder_1	D
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1
�
:RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityeraggedfromrowsplits_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_assert_equal_1_all;^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
@RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityGRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
@raggedfromrowsplits_assert_equal_1_assert_assertguard_identity_1IRaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :^ Z

_output_shapes
: 
@
_user_specified_name(&RaggedFromRowSplits/assert_equal_1/All
��
�
__inference_tokenize_7209
stringsm
iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_tableu
qwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_none_lookup_none_lookup_lookuptablefindv2_default_value	

fill_value	
fill_1_value	
identity	

identity_1	��.RaggedConcat/assert_equal_1/Assert/AssertGuard�.RaggedConcat/assert_equal_3/Assert/AssertGuard�ORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard�QRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard�QRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard�QRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard�cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2�aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2�VWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsW
CaseFoldUTF8/CaseFoldUTF8CaseFoldUTF8strings*#
_output_shapes
:����������
NormalizeUTF8/NormalizeUTF8NormalizeUTF8"CaseFoldUTF8/CaseFoldUTF8:output:0*#
_output_shapes
:���������*
normalization_formNFD�
StaticRegexReplaceStaticRegexReplace$NormalizeUTF8/NormalizeUTF8:output:0*#
_output_shapes
:���������*
pattern\p{Mn}*
rewrite �
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*#
_output_shapes
:���������*
pattern\p{Cc}|\p{Cf}*
rewrite `
ShapeShapeStaticRegexReplace_1:output:0*
T0*
_output_shapes
::��P
CastCastShape:output:0*

DstT0	*

SrcT0*
_output_shapes
:`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������w
ReshapeReshapeStaticRegexReplace_1:output:0Reshape/shape:output:0*
T0*#
_output_shapes
:����������
)RegexSplitWithOffsets/delim_regex_patternConst*
_output_shapes
: *
dtype0*�
value�B� B�(\s+|[!-/]|[:-@]|[\[-`]|[{-~]|[\p{P}]|[\x{4E00}-\x{9FFF}]|[\x{3400}-\x{4DBF}]|[\x{20000}-\x{2A6DF}]|[\x{2A700}-\x{2B73F}]|[\x{2B740}-\x{2B81F}]|[\x{2B820}-\x{2CEAF}]|[\x{F900}-\x{FAFF}]|[\x{2F800}-\x{2FA1F}])�
.RegexSplitWithOffsets/keep_delim_regex_patternConst*
_output_shapes
: *
dtype0*�
value�B� B�([!-/]|[:-@]|[\[-`]|[{-~]|[\p{P}]|[\x{4E00}-\x{9FFF}]|[\x{3400}-\x{4DBF}]|[\x{20000}-\x{2A6DF}]|[\x{2A700}-\x{2B73F}]|[\x{2B740}-\x{2B81F}]|[\x{2B820}-\x{2CEAF}]|[\x{F900}-\x{FAFF}]|[\x{2F800}-\x{2FA1F}])�
RegexSplitWithOffsetsRegexSplitWithOffsetsReshape:output:02RegexSplitWithOffsets/delim_regex_pattern:output:07RegexSplitWithOffsets/keep_delim_regex_pattern:output:0*P
_output_shapes>
<:���������:���������:���������:����������
>RaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
?RaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/ShapeShape"RegexSplitWithOffsets:row_splits:0*
T0	*
_output_shapes
::���
hRaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
YRaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ARaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;RaggedFromRowSplits/RowPartitionFromRowSplits/strided_sliceStridedSlice"RegexSplitWithOffsets:row_splits:0JRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack:output:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_1:output:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_masku
3RaggedFromRowSplits/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
BRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/EqualEqualDRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:output:0<RaggedFromRowSplits/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
ARaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
BRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/rangeRangeQRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0JRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0QRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
@RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/AllAllFRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
IRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:0) = �
KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*M
valueDBB B<y (RaggedFromRowSplits/RowPartitionFromRowSplits/Const:0) = �
ORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfIRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All:output:0IRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All:output:0DRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:output:0<RaggedFromRowSplits/RowPartitionFromRowSplits/Const:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *m
else_branch^R\
ZRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6529*
output_shapes
: *l
then_branch]R[
YRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6528�
XRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityXRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1StridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2StridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
1RaggedFromRowSplits/RowPartitionFromRowSplits/subSubFRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1:output:0FRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
GRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualPRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/Const:output:05RaggedFromRowSplits/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
YRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
WRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllaRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0bRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
`RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
bRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
bRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*K
valueBB@ B:x (RaggedFromRowSplits/RowPartitionFromRowSplits/sub:0) = �
fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIf`RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0`RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:05RaggedFromRowSplits/RowPartitionFromRowSplits/sub:z:0P^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchuRs
qRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6565*
output_shapes
: *�
then_branchtRr
pRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6564�
oRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityoRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
@RaggedFromRowSplits/RowPartitionFromRowSplits/control_dependencyIdentity"RegexSplitWithOffsets:row_splits:0Y^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityp^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityZ^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
RaggedFromRowSplits/ShapeShapeRegexSplitWithOffsets:tokens:0*
T0*
_output_shapes
:*
out_type0	:��q
'RaggedFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)RaggedFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)RaggedFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedFromRowSplits/strided_sliceStridedSlice"RaggedFromRowSplits/Shape:output:00RaggedFromRowSplits/strided_slice/stack:output:02RaggedFromRowSplits/strided_slice/stack_1:output:02RaggedFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask|
)RaggedFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������u
+RaggedFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits/strided_slice_1StridedSliceIRaggedFromRowSplits/RowPartitionFromRowSplits/control_dependency:output:02RaggedFromRowSplits/strided_slice_1/stack:output:04RaggedFromRowSplits/strided_slice_1/stack_1:output:04RaggedFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
(RaggedFromRowSplits/assert_equal_1/EqualEqual,RaggedFromRowSplits/strided_slice_1:output:0*RaggedFromRowSplits/strided_slice:output:0*
T0	*
_output_shapes
: i
'RaggedFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.RaggedFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.RaggedFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
(RaggedFromRowSplits/assert_equal_1/rangeRange7RaggedFromRowSplits/assert_equal_1/range/start:output:00RaggedFromRowSplits/assert_equal_1/Rank:output:07RaggedFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
&RaggedFromRowSplits/assert_equal_1/AllAll,RaggedFromRowSplits/assert_equal_1/Equal:z:01RaggedFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
/RaggedFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
1RaggedFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
1RaggedFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (RaggedFromRowSplits/strided_slice_1:0) = �
1RaggedFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*;
value2B0 B*y (RaggedFromRowSplits/strided_slice:0) = �
5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuardIf/RaggedFromRowSplits/assert_equal_1/All:output:0/RaggedFromRowSplits/assert_equal_1/All:output:0,RaggedFromRowSplits/strided_slice_1:output:0*RaggedFromRowSplits/strided_slice:output:0g^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6602*
output_shapes
: *R
then_branchCRA
?RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6601�
>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: o
-RaggedFromRowSplits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
.RaggedFromRowSplits/assert_rank_at_least/ShapeShapeRegexSplitWithOffsets:tokens:0*
T0*
_output_shapes
::��u
WRaggedFromRowSplits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
HRaggedFromRowSplits/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
&RaggedFromRowSplits/control_dependencyIdentityIRaggedFromRowSplits/RowPartitionFromRowSplits/control_dependency:output:0?^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityI^RaggedFromRowSplits/assert_rank_at_least/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
@RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
ARaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/ShapeShape"RegexSplitWithOffsets:row_splits:0*
T0	*
_output_shapes
::���
jRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
[RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
CRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_sliceStridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack:output:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_1:output:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskw
5RaggedFromRowSplits_1/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
DRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/EqualEqualFRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
CRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/rangeRangeSRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0LRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0SRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
BRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/AllAllHRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
KRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:0) = �
MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:0) = �
QRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfKRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All:output:0KRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All:output:0FRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:output:06^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *o
else_branch`R^
\RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6642*
output_shapes
: *n
then_branch_R]
[RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6641�
ZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
3RaggedFromRowSplits_1/RowPartitionFromRowSplits/subSubHRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1:output:0HRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
IRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualRRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/Const:output:07RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
[RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
YRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllcRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0dRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
bRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
dRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
dRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:0) = �
hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIfbRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0bRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:07RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:z:0R^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchwRu
sRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6678*
output_shapes
: *�
then_branchvRt
rRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6677�
qRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityqRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
BRaggedFromRowSplits_1/RowPartitionFromRowSplits/control_dependencyIdentity"RegexSplitWithOffsets:row_splits:0[^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityr^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity\^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
RaggedFromRowSplits_1/ShapeShape%RegexSplitWithOffsets:begin_offsets:0*
T0	*
_output_shapes
:*
out_type0	:��s
)RaggedFromRowSplits_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+RaggedFromRowSplits_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits_1/strided_sliceStridedSlice$RaggedFromRowSplits_1/Shape:output:02RaggedFromRowSplits_1/strided_slice/stack:output:04RaggedFromRowSplits_1/strided_slice/stack_1:output:04RaggedFromRowSplits_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask~
+RaggedFromRowSplits_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-RaggedFromRowSplits_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-RaggedFromRowSplits_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%RaggedFromRowSplits_1/strided_slice_1StridedSliceKRaggedFromRowSplits_1/RowPartitionFromRowSplits/control_dependency:output:04RaggedFromRowSplits_1/strided_slice_1/stack:output:06RaggedFromRowSplits_1/strided_slice_1/stack_1:output:06RaggedFromRowSplits_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
*RaggedFromRowSplits_1/assert_equal_1/EqualEqual.RaggedFromRowSplits_1/strided_slice_1:output:0,RaggedFromRowSplits_1/strided_slice:output:0*
T0	*
_output_shapes
: k
)RaggedFromRowSplits_1/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_1/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_1/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*RaggedFromRowSplits_1/assert_equal_1/rangeRange9RaggedFromRowSplits_1/assert_equal_1/range/start:output:02RaggedFromRowSplits_1/assert_equal_1/Rank:output:09RaggedFromRowSplits_1/assert_equal_1/range/delta:output:0*
_output_shapes
: �
(RaggedFromRowSplits_1/assert_equal_1/AllAll.RaggedFromRowSplits_1/assert_equal_1/Equal:z:03RaggedFromRowSplits_1/assert_equal_1/range:output:0*
_output_shapes
: �
1RaggedFromRowSplits_1/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
3RaggedFromRowSplits_1/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
3RaggedFromRowSplits_1/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_1/strided_slice_1:0) = �
3RaggedFromRowSplits_1/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_1/strided_slice:0) = �
7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuardIf1RaggedFromRowSplits_1/assert_equal_1/All:output:01RaggedFromRowSplits_1/assert_equal_1/All:output:0.RaggedFromRowSplits_1/strided_slice_1:output:0,RaggedFromRowSplits_1/strided_slice:output:0i^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
BRaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_false_6715*
output_shapes
: *T
then_branchERC
ARaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_true_6714�
@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityIdentity@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: q
/RaggedFromRowSplits_1/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
0RaggedFromRowSplits_1/assert_rank_at_least/ShapeShape%RegexSplitWithOffsets:begin_offsets:0*
T0	*
_output_shapes
::��w
YRaggedFromRowSplits_1/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
JRaggedFromRowSplits_1/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
(RaggedFromRowSplits_1/control_dependencyIdentityKRaggedFromRowSplits_1/RowPartitionFromRowSplits/control_dependency:output:0A^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityK^RaggedFromRowSplits_1/assert_rank_at_least/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
@RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
ARaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/ShapeShape"RegexSplitWithOffsets:row_splits:0*
T0	*
_output_shapes
::���
jRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
[RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
CRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_sliceStridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack:output:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_1:output:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskw
5RaggedFromRowSplits_2/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
DRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/EqualEqualFRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
CRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/rangeRangeSRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0LRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0SRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
BRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/AllAllHRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
KRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:0) = �
MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:0) = �
QRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfKRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All:output:0KRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All:output:0FRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:output:08^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *o
else_branch`R^
\RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6755*
output_shapes
: *n
then_branch_R]
[RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6754�
ZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
3RaggedFromRowSplits_2/RowPartitionFromRowSplits/subSubHRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1:output:0HRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
IRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualRRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/Const:output:07RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
[RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
YRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllcRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0dRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
bRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
dRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
dRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:0) = �
hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIfbRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0bRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:07RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:z:0R^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchwRu
sRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6791*
output_shapes
: *�
then_branchvRt
rRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6790�
qRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityqRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
BRaggedFromRowSplits_2/RowPartitionFromRowSplits/control_dependencyIdentity"RegexSplitWithOffsets:row_splits:0[^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityr^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity\^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
RaggedFromRowSplits_2/ShapeShape#RegexSplitWithOffsets:end_offsets:0*
T0	*
_output_shapes
:*
out_type0	:��s
)RaggedFromRowSplits_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+RaggedFromRowSplits_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits_2/strided_sliceStridedSlice$RaggedFromRowSplits_2/Shape:output:02RaggedFromRowSplits_2/strided_slice/stack:output:04RaggedFromRowSplits_2/strided_slice/stack_1:output:04RaggedFromRowSplits_2/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask~
+RaggedFromRowSplits_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-RaggedFromRowSplits_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-RaggedFromRowSplits_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%RaggedFromRowSplits_2/strided_slice_1StridedSliceKRaggedFromRowSplits_2/RowPartitionFromRowSplits/control_dependency:output:04RaggedFromRowSplits_2/strided_slice_1/stack:output:06RaggedFromRowSplits_2/strided_slice_1/stack_1:output:06RaggedFromRowSplits_2/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
*RaggedFromRowSplits_2/assert_equal_1/EqualEqual.RaggedFromRowSplits_2/strided_slice_1:output:0,RaggedFromRowSplits_2/strided_slice:output:0*
T0	*
_output_shapes
: k
)RaggedFromRowSplits_2/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_2/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_2/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*RaggedFromRowSplits_2/assert_equal_1/rangeRange9RaggedFromRowSplits_2/assert_equal_1/range/start:output:02RaggedFromRowSplits_2/assert_equal_1/Rank:output:09RaggedFromRowSplits_2/assert_equal_1/range/delta:output:0*
_output_shapes
: �
(RaggedFromRowSplits_2/assert_equal_1/AllAll.RaggedFromRowSplits_2/assert_equal_1/Equal:z:03RaggedFromRowSplits_2/assert_equal_1/range:output:0*
_output_shapes
: �
1RaggedFromRowSplits_2/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
3RaggedFromRowSplits_2/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
3RaggedFromRowSplits_2/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_2/strided_slice_1:0) = �
3RaggedFromRowSplits_2/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_2/strided_slice:0) = �
7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuardIf1RaggedFromRowSplits_2/assert_equal_1/All:output:01RaggedFromRowSplits_2/assert_equal_1/All:output:0.RaggedFromRowSplits_2/strided_slice_1:output:0,RaggedFromRowSplits_2/strided_slice:output:0i^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
BRaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_false_6828*
output_shapes
: *T
then_branchERC
ARaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_true_6827�
@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityIdentity@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: q
/RaggedFromRowSplits_2/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
0RaggedFromRowSplits_2/assert_rank_at_least/ShapeShape#RegexSplitWithOffsets:end_offsets:0*
T0	*
_output_shapes
::��w
YRaggedFromRowSplits_2/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
JRaggedFromRowSplits_2/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
(RaggedFromRowSplits_2/control_dependencyIdentityKRaggedFromRowSplits_2/RowPartitionFromRowSplits/control_dependency:output:0A^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityK^RaggedFromRowSplits_2/assert_rank_at_least/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
VWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsWordpieceTokenizeWithOffsetsRegexSplitWithOffsets:tokens:0iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_table*P
_output_shapes>
<:���������:���������:���������:���������*
max_bytes_per_wordd*)
output_row_partition_type
row_splits*
suffix_indicator##*
unknown_token[UNK]*
use_unknown_token(�
QWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/hash_bucketStringToHashBucketFastfWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:output_values:0*#
_output_shapes
:���������*
num_buckets�
cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV2iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_tablefWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:output_values:0qwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_none_lookup_none_lookup_lookuptablefindv2_default_valueW^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets*	
Tin0*

Tout0	*#
_output_shapes
:����������
aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV2iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_tabled^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2*
_output_shapes
: �
IWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/AddAddV2ZWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/hash_bucket:output:0hWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2:size:0*
T0	*#
_output_shapes
:����������
NWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/NotEqualNotEquallWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2:values:0qwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*#
_output_shapes
:����������
NWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2SelectV2RWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/NotEqual:z:0lWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2:values:0MWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/Add:z:0*
T0	*#
_output_shapes
:���������O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2kWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:output_row_lengths:0/RaggedFromRowSplits/control_dependency:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
@RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
ARaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/ShapeShapeGatherV2:output:0*
T0	*
_output_shapes
::���
jRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
[RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
CRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_sliceStridedSliceGatherV2:output:0LRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_1:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskw
5RaggedFromRowSplits_3/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
DRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/EqualEqualFRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
CRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/rangeRangeSRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0LRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0SRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
BRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/AllAllHRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
KRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:0) = �
MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:0) = �
QRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfKRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All:output:0KRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All:output:0FRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:output:08^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *o
else_branch`R^
\RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6882*
output_shapes
: *n
then_branch_R]
[RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_6881�
ZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1StridedSliceGatherV2:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2StridedSliceGatherV2:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
3RaggedFromRowSplits_3/RowPartitionFromRowSplits/subSubHRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1:output:0HRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
IRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualRRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/Const:output:07RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
[RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
YRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllcRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0dRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
bRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
dRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
dRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:0) = �
hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIfbRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0bRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:07RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:z:0R^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchwRu
sRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_6918*
output_shapes
: *�
then_branchvRt
rRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_6917�
qRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityqRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
BRaggedFromRowSplits_3/RowPartitionFromRowSplits/control_dependencyIdentityGatherV2:output:0[^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityr^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity\^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*
_class
loc:@GatherV2*#
_output_shapes
:����������
RaggedFromRowSplits_3/ShapeShapeWWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:0*
T0	*
_output_shapes
:*
out_type0	:��s
)RaggedFromRowSplits_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+RaggedFromRowSplits_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits_3/strided_sliceStridedSlice$RaggedFromRowSplits_3/Shape:output:02RaggedFromRowSplits_3/strided_slice/stack:output:04RaggedFromRowSplits_3/strided_slice/stack_1:output:04RaggedFromRowSplits_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask~
+RaggedFromRowSplits_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-RaggedFromRowSplits_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-RaggedFromRowSplits_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%RaggedFromRowSplits_3/strided_slice_1StridedSliceKRaggedFromRowSplits_3/RowPartitionFromRowSplits/control_dependency:output:04RaggedFromRowSplits_3/strided_slice_1/stack:output:06RaggedFromRowSplits_3/strided_slice_1/stack_1:output:06RaggedFromRowSplits_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
*RaggedFromRowSplits_3/assert_equal_1/EqualEqual.RaggedFromRowSplits_3/strided_slice_1:output:0,RaggedFromRowSplits_3/strided_slice:output:0*
T0	*
_output_shapes
: k
)RaggedFromRowSplits_3/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_3/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_3/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*RaggedFromRowSplits_3/assert_equal_1/rangeRange9RaggedFromRowSplits_3/assert_equal_1/range/start:output:02RaggedFromRowSplits_3/assert_equal_1/Rank:output:09RaggedFromRowSplits_3/assert_equal_1/range/delta:output:0*
_output_shapes
: �
(RaggedFromRowSplits_3/assert_equal_1/AllAll.RaggedFromRowSplits_3/assert_equal_1/Equal:z:03RaggedFromRowSplits_3/assert_equal_1/range:output:0*
_output_shapes
: �
1RaggedFromRowSplits_3/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
3RaggedFromRowSplits_3/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
3RaggedFromRowSplits_3/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_3/strided_slice_1:0) = �
3RaggedFromRowSplits_3/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_3/strided_slice:0) = �
7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuardIf1RaggedFromRowSplits_3/assert_equal_1/All:output:01RaggedFromRowSplits_3/assert_equal_1/All:output:0.RaggedFromRowSplits_3/strided_slice_1:output:0,RaggedFromRowSplits_3/strided_slice:output:0i^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
BRaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_false_6955*
output_shapes
: *T
then_branchERC
ARaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_true_6954�
@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityIdentity@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: q
/RaggedFromRowSplits_3/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
0RaggedFromRowSplits_3/assert_rank_at_least/ShapeShapeWWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:0*
T0	*
_output_shapes
::��w
YRaggedFromRowSplits_3/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
JRaggedFromRowSplits_3/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
(RaggedFromRowSplits_3/control_dependencyIdentityKRaggedFromRowSplits_3/RowPartitionFromRowSplits/control_dependency:output:0A^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityK^RaggedFromRowSplits_3/assert_rank_at_least/static_checks_determined_all_ok*
T0	*
_class
loc:@GatherV2*#
_output_shapes
:����������
RaggedBoundingBox/ShapeShape1RaggedFromRowSplits_3/control_dependency:output:0*
T0	*
_output_shapes
:*
out_type0	:���
RaggedBoundingBox/Shape_1ShapeWWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:0*
T0	*
_output_shapes
:*
out_type0	:��o
%RaggedBoundingBox/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'RaggedBoundingBox/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'RaggedBoundingBox/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedBoundingBox/strided_sliceStridedSlice RaggedBoundingBox/Shape:output:0.RaggedBoundingBox/strided_slice/stack:output:00RaggedBoundingBox/strided_slice/stack_1:output:00RaggedBoundingBox/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskY
RaggedBoundingBox/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
RaggedBoundingBox/subSub(RaggedBoundingBox/strided_slice:output:0 RaggedBoundingBox/sub/y:output:0*
T0	*
_output_shapes
: q
'RaggedBoundingBox/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)RaggedBoundingBox/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)RaggedBoundingBox/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedBoundingBox/strided_slice_1StridedSlice1RaggedFromRowSplits_3/control_dependency:output:00RaggedBoundingBox/strided_slice_1/stack:output:02RaggedBoundingBox/strided_slice_1/stack_1:output:02RaggedBoundingBox/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_maskq
'RaggedBoundingBox/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
)RaggedBoundingBox/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)RaggedBoundingBox/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedBoundingBox/strided_slice_2StridedSlice1RaggedFromRowSplits_3/control_dependency:output:00RaggedBoundingBox/strided_slice_2/stack:output:02RaggedBoundingBox/strided_slice_2/stack_1:output:02RaggedBoundingBox/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
RaggedBoundingBox/sub_1Sub*RaggedBoundingBox/strided_slice_1:output:0*RaggedBoundingBox/strided_slice_2:output:0*
T0	*#
_output_shapes
:���������a
RaggedBoundingBox/ConstConst*
_output_shapes
:*
dtype0*
valueB: |
RaggedBoundingBox/MaxMaxRaggedBoundingBox/sub_1:z:0 RaggedBoundingBox/Const:output:0*
T0	*
_output_shapes
: ]
RaggedBoundingBox/Maximum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
RaggedBoundingBox/MaximumMaximumRaggedBoundingBox/Max:output:0$RaggedBoundingBox/Maximum/y:output:0*
T0	*
_output_shapes
: q
'RaggedBoundingBox/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)RaggedBoundingBox/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)RaggedBoundingBox/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedBoundingBox/strided_slice_3StridedSlice"RaggedBoundingBox/Shape_1:output:00RaggedBoundingBox/strided_slice_3/stack:output:02RaggedBoundingBox/strided_slice_3/stack_1:output:02RaggedBoundingBox/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask�
RaggedBoundingBox/stackPackRaggedBoundingBox/sub:z:0RaggedBoundingBox/Maximum:z:0*
N*
T0	*
_output_shapes
:_
RaggedBoundingBox/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedBoundingBox/concatConcatV2 RaggedBoundingBox/stack:output:0*RaggedBoundingBox/strided_slice_3:output:0&RaggedBoundingBox/concat/axis:output:0*
N*
T0	*
_output_shapes
:]
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
strided_sliceStridedSlice!RaggedBoundingBox/concat:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskM
Fill/dims/1Const*
_output_shapes
: *
dtype0	*
value	B	 Rm
	Fill/dimsPackstrided_slice:output:0Fill/dims/1:output:0*
N*
T0	*
_output_shapes
:p
FillFillFill/dims:output:0
fill_value*
T0	*'
_output_shapes
:���������*

index_type0	O
Fill_1/dims/1Const*
_output_shapes
: *
dtype0	*
value	B	 Rq
Fill_1/dimsPackstrided_slice:output:0Fill_1/dims/1:output:0*
N*
T0	*
_output_shapes
:v
Fill_1FillFill_1/dims:output:0fill_1_value*
T0	*'
_output_shapes
:���������*

index_type0	~
#RaggedConcat/RaggedFromTensor/ShapeShapeFill:output:0*
T0	*
_output_shapes
:*
out_type0	:��{
1RaggedConcat/RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3RaggedConcat/RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3RaggedConcat/RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+RaggedConcat/RaggedFromTensor/strided_sliceStridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0:RaggedConcat/RaggedFromTensor/strided_slice/stack:output:0<RaggedConcat/RaggedFromTensor/strided_slice/stack_1:output:0<RaggedConcat/RaggedFromTensor/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask}
3RaggedConcat/RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_1StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_1/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask}
3RaggedConcat/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_2StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_2/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
!RaggedConcat/RaggedFromTensor/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_1:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: }
3RaggedConcat/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_3StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_3/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask�
-RaggedConcat/RaggedFromTensor/concat/values_0Pack%RaggedConcat/RaggedFromTensor/mul:z:0*
N*
T0	*
_output_shapes
:k
)RaggedConcat/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$RaggedConcat/RaggedFromTensor/concatConcatV26RaggedConcat/RaggedFromTensor/concat/values_0:output:06RaggedConcat/RaggedFromTensor/strided_slice_3:output:02RaggedConcat/RaggedFromTensor/concat/axis:output:0*
N*
T0	*
_output_shapes
:�
%RaggedConcat/RaggedFromTensor/ReshapeReshapeFill:output:0-RaggedConcat/RaggedFromTensor/concat:output:0*
Tshape0	*
T0	*#
_output_shapes
:���������}
3RaggedConcat/RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_4StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_4/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maske
#RaggedConcat/RaggedFromTensor/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R�
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/ShapeShape.RaggedConcat/RaggedFromTensor/Reshape:output:0*
T0	*
_output_shapes
:*
out_type0	:���
LRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
FRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSliceGRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/Shape:output:0URaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack:output:0WRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1:output:0WRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV26RaggedConcat/RaggedFromTensor/strided_slice_4:output:0hRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: �
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R �
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangenRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0aRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0nRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

Tidx0	*#
_output_shapes
:����������
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMulhRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0,RaggedConcat/RaggedFromTensor/Const:output:0*
T0	*#
_output_shapes
:����������
%RaggedConcat/RaggedFromTensor_1/ShapeShapeFill_1:output:0*
T0	*
_output_shapes
:*
out_type0	:��}
3RaggedConcat/RaggedFromTensor_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor_1/strided_sliceStridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0<RaggedConcat/RaggedFromTensor_1/strided_slice/stack:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
5RaggedConcat/RaggedFromTensor_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_1StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_2StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
#RaggedConcat/RaggedFromTensor_1/mulMul8RaggedConcat/RaggedFromTensor_1/strided_slice_1:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:0*
T0	*
_output_shapes
: 
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_3StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask�
/RaggedConcat/RaggedFromTensor_1/concat/values_0Pack'RaggedConcat/RaggedFromTensor_1/mul:z:0*
N*
T0	*
_output_shapes
:m
+RaggedConcat/RaggedFromTensor_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&RaggedConcat/RaggedFromTensor_1/concatConcatV28RaggedConcat/RaggedFromTensor_1/concat/values_0:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_3:output:04RaggedConcat/RaggedFromTensor_1/concat/axis:output:0*
N*
T0	*
_output_shapes
:�
'RaggedConcat/RaggedFromTensor_1/ReshapeReshapeFill_1:output:0/RaggedConcat/RaggedFromTensor_1/concat:output:0*
Tshape0	*
T0	*#
_output_shapes
:���������
5RaggedConcat/RaggedFromTensor_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_4StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskg
%RaggedConcat/RaggedFromTensor_1/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R�
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/ShapeShape0RaggedConcat/RaggedFromTensor_1/Reshape:output:0*
T0	*
_output_shapes
:*
out_type0	:���
NRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
HRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_sliceStridedSliceIRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/Shape:output:0WRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack:output:0YRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1:output:0YRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV28RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:0jRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: �
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R �
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangepRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0cRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0pRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

Tidx0	*#
_output_shapes
:����������
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMuljRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0.RaggedConcat/RaggedFromTensor_1/Const:output:0*
T0	*#
_output_shapes
:����������
 RaggedConcat/RaggedNRows_1/ShapeShape1RaggedFromRowSplits_3/control_dependency:output:0*
T0	*
_output_shapes
:*
out_type0	:��x
.RaggedConcat/RaggedNRows_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0RaggedConcat/RaggedNRows_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0RaggedConcat/RaggedNRows_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(RaggedConcat/RaggedNRows_1/strided_sliceStridedSlice)RaggedConcat/RaggedNRows_1/Shape:output:07RaggedConcat/RaggedNRows_1/strided_slice/stack:output:09RaggedConcat/RaggedNRows_1/strided_slice/stack_1:output:09RaggedConcat/RaggedNRows_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskb
 RaggedConcat/RaggedNRows_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
RaggedConcat/RaggedNRows_1/subSub1RaggedConcat/RaggedNRows_1/strided_slice:output:0)RaggedConcat/RaggedNRows_1/sub/y:output:0*
T0	*
_output_shapes
: �
!RaggedConcat/assert_equal_1/EqualEqual6RaggedConcat/RaggedFromTensor/strided_slice_4:output:0"RaggedConcat/RaggedNRows_1/sub:z:0*
T0	*
_output_shapes
: b
 RaggedConcat/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
!RaggedConcat/assert_equal_1/rangeRange0RaggedConcat/assert_equal_1/range/start:output:0)RaggedConcat/assert_equal_1/Rank:output:00RaggedConcat/assert_equal_1/range/delta:output:0*
_output_shapes
: �
RaggedConcat/assert_equal_1/AllAll%RaggedConcat/assert_equal_1/Equal:z:0*RaggedConcat/assert_equal_1/range:output:0*
_output_shapes
: �
(RaggedConcat/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 1 (=y) have incompatible shapes.�
*RaggedConcat/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
*RaggedConcat/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
*RaggedConcat/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*8
value/B- B'y (RaggedConcat/RaggedNRows_1/sub:0) = �
.RaggedConcat/assert_equal_1/Assert/AssertGuardIf(RaggedConcat/assert_equal_1/All:output:0(RaggedConcat/assert_equal_1/All:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:0"RaggedConcat/RaggedNRows_1/sub:z:08^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *L
else_branch=R;
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_7111*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_7110�
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
!RaggedConcat/assert_equal_3/EqualEqual6RaggedConcat/RaggedFromTensor/strided_slice_4:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:0*
T0	*
_output_shapes
: b
 RaggedConcat/assert_equal_3/RankConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
!RaggedConcat/assert_equal_3/rangeRange0RaggedConcat/assert_equal_3/range/start:output:0)RaggedConcat/assert_equal_3/Rank:output:00RaggedConcat/assert_equal_3/range/delta:output:0*
_output_shapes
: �
RaggedConcat/assert_equal_3/AllAll%RaggedConcat/assert_equal_3/Equal:z:0*RaggedConcat/assert_equal_3/range:output:0*
_output_shapes
: �
(RaggedConcat/assert_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 2 (=y) have incompatible shapes.�
*RaggedConcat/assert_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
*RaggedConcat/assert_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
*RaggedConcat/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*I
value@B> B8y (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = �
.RaggedConcat/assert_equal_3/Assert/AssertGuardIf(RaggedConcat/assert_equal_3/All:output:0(RaggedConcat/assert_equal_3/All:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *L
else_branch=R;
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_7141*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_7140�
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_3/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
RaggedConcat/concat/axisConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : �
RaggedConcat/concatConcatV2.RaggedConcat/RaggedFromTensor/Reshape:output:0WWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:00RaggedConcat/RaggedFromTensor_1/Reshape:output:0!RaggedConcat/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
 RaggedConcat/strided_slice/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
"RaggedConcat/strided_slice/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
"RaggedConcat/strided_slice/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_sliceStridedSliceaRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0)RaggedConcat/strided_slice/stack:output:0+RaggedConcat/strided_slice/stack_1:output:0+RaggedConcat/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
"RaggedConcat/strided_slice_1/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
$RaggedConcat/strided_slice_1/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_1/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_1StridedSlice1RaggedFromRowSplits_3/control_dependency:output:0+RaggedConcat/strided_slice_1/stack:output:0-RaggedConcat/strided_slice_1/stack_1:output:0-RaggedConcat/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
RaggedConcat/addAddV2%RaggedConcat/strided_slice_1:output:0#RaggedConcat/strided_slice:output:0*
T0	*#
_output_shapes
:����������
"RaggedConcat/strided_slice_2/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
$RaggedConcat/strided_slice_2/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_2/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_2StridedSlice1RaggedFromRowSplits_3/control_dependency:output:0+RaggedConcat/strided_slice_2/stack:output:0-RaggedConcat/strided_slice_2/stack_1:output:0-RaggedConcat/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
RaggedConcat/add_1AddV2#RaggedConcat/strided_slice:output:0%RaggedConcat/strided_slice_2:output:0*
T0	*
_output_shapes
: �
"RaggedConcat/strided_slice_3/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
$RaggedConcat/strided_slice_3/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_3/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_3StridedSlicecRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_3/stack:output:0-RaggedConcat/strided_slice_3/stack_1:output:0-RaggedConcat/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
RaggedConcat/add_2AddV2%RaggedConcat/strided_slice_3:output:0RaggedConcat/add_1:z:0*
T0	*#
_output_shapes
:����������
"RaggedConcat/strided_slice_4/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
$RaggedConcat/strided_slice_4/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_4/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_4StridedSlicecRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_4/stack:output:0-RaggedConcat/strided_slice_4/stack_1:output:0-RaggedConcat/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask{
RaggedConcat/add_3AddV2RaggedConcat/add_1:z:0%RaggedConcat/strided_slice_4:output:0*
T0	*
_output_shapes
: �
RaggedConcat/concat_1/axisConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : �
RaggedConcat/concat_1ConcatV2aRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0RaggedConcat/add:z:0RaggedConcat/add_2:z:0#RaggedConcat/concat_1/axis:output:0*
N*
T0	*#
_output_shapes
:����������
RaggedConcat/mul/yConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R�
RaggedConcat/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_4:output:0RaggedConcat/mul/y:output:0*
T0	*
_output_shapes
: �
RaggedConcat/range/startConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : �
RaggedConcat/range/deltaConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :r
RaggedConcat/range/CastCast!RaggedConcat/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: t
RaggedConcat/range/Cast_1Cast!RaggedConcat/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
RaggedConcat/rangeRangeRaggedConcat/range/Cast:y:0RaggedConcat/mul:z:0RaggedConcat/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
RaggedConcat/Reshape/shapeConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"   �����
RaggedConcat/ReshapeReshapeRaggedConcat/range:output:0#RaggedConcat/Reshape/shape:output:0*
T0	*'
_output_shapes
:����������
RaggedConcat/transpose/permConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"       �
RaggedConcat/transpose	TransposeRaggedConcat/Reshape:output:0$RaggedConcat/transpose/perm:output:0*
T0	*'
_output_shapes
:����������
RaggedConcat/Reshape_1/shapeConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
RaggedConcat/Reshape_1ReshapeRaggedConcat/transpose:y:0%RaggedConcat/Reshape_1/shape:output:0*
T0	*#
_output_shapes
:����������
&RaggedConcat/RaggedGather/RaggedGatherRaggedGatherRaggedConcat/concat_1:output:0RaggedConcat/concat:output:0RaggedConcat/Reshape_1:output:0*
OUTPUT_RAGGED_RANK*
PARAMS_RAGGED_RANK*
Tindices0	*
Tvalues0	*2
_output_shapes 
:���������:����������
"RaggedConcat/strided_slice_5/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_5/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_5/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_5StridedSlice=RaggedConcat/RaggedGather/RaggedGather:output_nested_splits:0+RaggedConcat/strided_slice_5/stack:output:0-RaggedConcat/strided_slice_5/stack_1:output:0-RaggedConcat/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask�
IdentityIdentity<RaggedConcat/RaggedGather/RaggedGather:output_dense_values:0^NoOp*
T0	*#
_output_shapes
:���������r

Identity_1Identity%RaggedConcat/strided_slice_5:output:0^NoOp*
T0	*#
_output_shapes
:����������
NoOpNoOp/^RaggedConcat/assert_equal_1/Assert/AssertGuard/^RaggedConcat/assert_equal_3/Assert/AssertGuardP^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardg^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard6^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuardR^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardi^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard8^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuardR^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardi^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard8^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuardR^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardi^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard8^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuardd^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2b^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2W^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : : : 2`
.RaggedConcat/assert_equal_1/Assert/AssertGuard.RaggedConcat/assert_equal_1/Assert/AssertGuard2`
.RaggedConcat/assert_equal_3/Assert/AssertGuard.RaggedConcat/assert_equal_3/Assert/AssertGuard2�
ORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardfRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2n
5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard2�
QRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardQRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardhRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2r
7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard2�
QRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardQRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardhRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2r
7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard2�
QRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardQRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardhRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2r
7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard2�
cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV22�
aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV22�
VWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsVWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :2.
,
_user_specified_namevocab_lookup_table:L H
#
_output_shapes
:���������
!
_user_specified_name	strings
�
+
__inference__destroyer_7237
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
__inference__traced_save_7295
file_prefix0
!read_disablecopyonread_variable_5:	�2
#read_1_disablecopyonread_variable_4:	�
savev2_const_4

identity_5��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOpw
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
: s
Read/DisableCopyOnReadDisableCopyOnRead!read_disablecopyonread_variable_5"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp!read_disablecopyonread_variable_5^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0f
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�^

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes	
:�w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_4"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_4^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*{
valuerBpB#mn/vocab/.ATTRIBUTES/VARIABLE_VALUEB#en/vocab/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHs
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0savev2_const_4"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h

Identity_4Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: S

Identity_5IdentityIdentity_4:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp:?;

_output_shapes
: 
!
_user_specified_name	Const_4:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
__inference_tokenize_5685
stringsm
iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_tableu
qwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_none_lookup_none_lookup_lookuptablefindv2_default_value	

fill_value	
fill_1_value	
identity	

identity_1	��.RaggedConcat/assert_equal_1/Assert/AssertGuard�.RaggedConcat/assert_equal_3/Assert/AssertGuard�ORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard�QRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard�QRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard�QRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard�hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard�7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard�cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2�aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2�VWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets�
StaticRegexReplaceStaticRegexReplacestrings*#
_output_shapes
:���������*
pattern\p{Cc}|\p{Cf}*
rewrite ^
ShapeShapeStaticRegexReplace:output:0*
T0*
_output_shapes
::��P
CastCastShape:output:0*

DstT0	*

SrcT0*
_output_shapes
:`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������u
ReshapeReshapeStaticRegexReplace:output:0Reshape/shape:output:0*
T0*#
_output_shapes
:����������
)RegexSplitWithOffsets/delim_regex_patternConst*
_output_shapes
: *
dtype0*�
value�B� B�(\s+|[!-/]|[:-@]|[\[-`]|[{-~]|[\p{P}]|[\x{4E00}-\x{9FFF}]|[\x{3400}-\x{4DBF}]|[\x{20000}-\x{2A6DF}]|[\x{2A700}-\x{2B73F}]|[\x{2B740}-\x{2B81F}]|[\x{2B820}-\x{2CEAF}]|[\x{F900}-\x{FAFF}]|[\x{2F800}-\x{2FA1F}])�
.RegexSplitWithOffsets/keep_delim_regex_patternConst*
_output_shapes
: *
dtype0*�
value�B� B�([!-/]|[:-@]|[\[-`]|[{-~]|[\p{P}]|[\x{4E00}-\x{9FFF}]|[\x{3400}-\x{4DBF}]|[\x{20000}-\x{2A6DF}]|[\x{2A700}-\x{2B73F}]|[\x{2B740}-\x{2B81F}]|[\x{2B820}-\x{2CEAF}]|[\x{F900}-\x{FAFF}]|[\x{2F800}-\x{2FA1F}])�
RegexSplitWithOffsetsRegexSplitWithOffsetsReshape:output:02RegexSplitWithOffsets/delim_regex_pattern:output:07RegexSplitWithOffsets/keep_delim_regex_pattern:output:0*P
_output_shapes>
<:���������:���������:���������:����������
>RaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
?RaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/ShapeShape"RegexSplitWithOffsets:row_splits:0*
T0	*
_output_shapes
::���
hRaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
YRaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
ARaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;RaggedFromRowSplits/RowPartitionFromRowSplits/strided_sliceStridedSlice"RegexSplitWithOffsets:row_splits:0JRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack:output:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_1:output:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_masku
3RaggedFromRowSplits/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
BRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/EqualEqualDRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:output:0<RaggedFromRowSplits/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
ARaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
BRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/rangeRangeQRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0JRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0QRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
@RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/AllAllFRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
IRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:0) = �
KRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*M
valueDBB B<y (RaggedFromRowSplits/RowPartitionFromRowSplits/Const:0) = �
ORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfIRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All:output:0IRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All:output:0DRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:output:0<RaggedFromRowSplits/RowPartitionFromRowSplits/Const:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *m
else_branch^R\
ZRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5005*
output_shapes
: *l
then_branch]R[
YRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5004�
XRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityXRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1StridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
CRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
ERaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2StridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0NRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
1RaggedFromRowSplits/RowPartitionFromRowSplits/subSubFRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_1:output:0FRaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
GRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualPRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/Const:output:05RaggedFromRowSplits/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
YRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
WRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllaRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0bRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
`RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
bRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
bRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*K
valueBB@ B:x (RaggedFromRowSplits/RowPartitionFromRowSplits/sub:0) = �
fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIf`RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0`RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:05RaggedFromRowSplits/RowPartitionFromRowSplits/sub:z:0P^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchuRs
qRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5041*
output_shapes
: *�
then_branchtRr
pRaggedFromRowSplits_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5040�
oRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityoRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
@RaggedFromRowSplits/RowPartitionFromRowSplits/control_dependencyIdentity"RegexSplitWithOffsets:row_splits:0Y^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityp^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityZ^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
RaggedFromRowSplits/ShapeShapeRegexSplitWithOffsets:tokens:0*
T0*
_output_shapes
:*
out_type0	:��q
'RaggedFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)RaggedFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)RaggedFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedFromRowSplits/strided_sliceStridedSlice"RaggedFromRowSplits/Shape:output:00RaggedFromRowSplits/strided_slice/stack:output:02RaggedFromRowSplits/strided_slice/stack_1:output:02RaggedFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask|
)RaggedFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������u
+RaggedFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits/strided_slice_1StridedSliceIRaggedFromRowSplits/RowPartitionFromRowSplits/control_dependency:output:02RaggedFromRowSplits/strided_slice_1/stack:output:04RaggedFromRowSplits/strided_slice_1/stack_1:output:04RaggedFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
(RaggedFromRowSplits/assert_equal_1/EqualEqual,RaggedFromRowSplits/strided_slice_1:output:0*RaggedFromRowSplits/strided_slice:output:0*
T0	*
_output_shapes
: i
'RaggedFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.RaggedFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.RaggedFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
(RaggedFromRowSplits/assert_equal_1/rangeRange7RaggedFromRowSplits/assert_equal_1/range/start:output:00RaggedFromRowSplits/assert_equal_1/Rank:output:07RaggedFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
&RaggedFromRowSplits/assert_equal_1/AllAll,RaggedFromRowSplits/assert_equal_1/Equal:z:01RaggedFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
/RaggedFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
1RaggedFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
1RaggedFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (RaggedFromRowSplits/strided_slice_1:0) = �
1RaggedFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*;
value2B0 B*y (RaggedFromRowSplits/strided_slice:0) = �
5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuardIf/RaggedFromRowSplits/assert_equal_1/All:output:0/RaggedFromRowSplits/assert_equal_1/All:output:0,RaggedFromRowSplits/strided_slice_1:output:0*RaggedFromRowSplits/strided_slice:output:0g^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5078*
output_shapes
: *R
then_branchCRA
?RaggedFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5077�
>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity>RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: o
-RaggedFromRowSplits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
.RaggedFromRowSplits/assert_rank_at_least/ShapeShapeRegexSplitWithOffsets:tokens:0*
T0*
_output_shapes
::��u
WRaggedFromRowSplits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
HRaggedFromRowSplits/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
&RaggedFromRowSplits/control_dependencyIdentityIRaggedFromRowSplits/RowPartitionFromRowSplits/control_dependency:output:0?^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityI^RaggedFromRowSplits/assert_rank_at_least/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
@RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
ARaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/ShapeShape"RegexSplitWithOffsets:row_splits:0*
T0	*
_output_shapes
::���
jRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
[RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
CRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_sliceStridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack:output:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_1:output:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskw
5RaggedFromRowSplits_1/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
DRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/EqualEqualFRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
CRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/rangeRangeSRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0LRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0SRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
BRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/AllAllHRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
KRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:0) = �
MRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:0) = �
QRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfKRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All:output:0KRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/All:output:0FRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_1/RowPartitionFromRowSplits/Const:output:06^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *o
else_branch`R^
\RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5118*
output_shapes
: *n
then_branch_R]
[RaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5117�
ZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityZRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
ERaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
GRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0PRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
3RaggedFromRowSplits_1/RowPartitionFromRowSplits/subSubHRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_1:output:0HRaggedFromRowSplits_1/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
IRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualRRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/Const:output:07RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
[RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
YRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllcRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0dRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
bRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
dRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
dRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:0) = �
hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIfbRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0bRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:07RaggedFromRowSplits_1/RowPartitionFromRowSplits/sub:z:0R^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchwRu
sRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5154*
output_shapes
: *�
then_branchvRt
rRaggedFromRowSplits_1_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5153�
qRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityqRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
BRaggedFromRowSplits_1/RowPartitionFromRowSplits/control_dependencyIdentity"RegexSplitWithOffsets:row_splits:0[^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityr^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity\^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
RaggedFromRowSplits_1/ShapeShape%RegexSplitWithOffsets:begin_offsets:0*
T0	*
_output_shapes
:*
out_type0	:��s
)RaggedFromRowSplits_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+RaggedFromRowSplits_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits_1/strided_sliceStridedSlice$RaggedFromRowSplits_1/Shape:output:02RaggedFromRowSplits_1/strided_slice/stack:output:04RaggedFromRowSplits_1/strided_slice/stack_1:output:04RaggedFromRowSplits_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask~
+RaggedFromRowSplits_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-RaggedFromRowSplits_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-RaggedFromRowSplits_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%RaggedFromRowSplits_1/strided_slice_1StridedSliceKRaggedFromRowSplits_1/RowPartitionFromRowSplits/control_dependency:output:04RaggedFromRowSplits_1/strided_slice_1/stack:output:06RaggedFromRowSplits_1/strided_slice_1/stack_1:output:06RaggedFromRowSplits_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
*RaggedFromRowSplits_1/assert_equal_1/EqualEqual.RaggedFromRowSplits_1/strided_slice_1:output:0,RaggedFromRowSplits_1/strided_slice:output:0*
T0	*
_output_shapes
: k
)RaggedFromRowSplits_1/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_1/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_1/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*RaggedFromRowSplits_1/assert_equal_1/rangeRange9RaggedFromRowSplits_1/assert_equal_1/range/start:output:02RaggedFromRowSplits_1/assert_equal_1/Rank:output:09RaggedFromRowSplits_1/assert_equal_1/range/delta:output:0*
_output_shapes
: �
(RaggedFromRowSplits_1/assert_equal_1/AllAll.RaggedFromRowSplits_1/assert_equal_1/Equal:z:03RaggedFromRowSplits_1/assert_equal_1/range:output:0*
_output_shapes
: �
1RaggedFromRowSplits_1/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
3RaggedFromRowSplits_1/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
3RaggedFromRowSplits_1/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_1/strided_slice_1:0) = �
3RaggedFromRowSplits_1/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_1/strided_slice:0) = �
7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuardIf1RaggedFromRowSplits_1/assert_equal_1/All:output:01RaggedFromRowSplits_1/assert_equal_1/All:output:0.RaggedFromRowSplits_1/strided_slice_1:output:0,RaggedFromRowSplits_1/strided_slice:output:0i^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
BRaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_false_5191*
output_shapes
: *T
then_branchERC
ARaggedFromRowSplits_1_assert_equal_1_Assert_AssertGuard_true_5190�
@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityIdentity@RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: q
/RaggedFromRowSplits_1/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
0RaggedFromRowSplits_1/assert_rank_at_least/ShapeShape%RegexSplitWithOffsets:begin_offsets:0*
T0	*
_output_shapes
::��w
YRaggedFromRowSplits_1/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
JRaggedFromRowSplits_1/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
(RaggedFromRowSplits_1/control_dependencyIdentityKRaggedFromRowSplits_1/RowPartitionFromRowSplits/control_dependency:output:0A^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard/IdentityK^RaggedFromRowSplits_1/assert_rank_at_least/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
@RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
ARaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/ShapeShape"RegexSplitWithOffsets:row_splits:0*
T0	*
_output_shapes
::���
jRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
[RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
CRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_sliceStridedSlice"RegexSplitWithOffsets:row_splits:0LRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack:output:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_1:output:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskw
5RaggedFromRowSplits_2/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
DRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/EqualEqualFRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
CRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/rangeRangeSRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0LRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0SRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
BRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/AllAllHRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
KRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:0) = �
MRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:0) = �
QRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfKRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All:output:0KRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/All:output:0FRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_2/RowPartitionFromRowSplits/Const:output:08^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *o
else_branch`R^
\RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5231*
output_shapes
: *n
then_branch_R]
[RaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5230�
ZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityZRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
ERaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
GRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2StridedSlice"RegexSplitWithOffsets:row_splits:0NRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0PRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
3RaggedFromRowSplits_2/RowPartitionFromRowSplits/subSubHRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_1:output:0HRaggedFromRowSplits_2/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
IRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualRRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/Const:output:07RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
[RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
YRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllcRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0dRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
bRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
dRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
dRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:0) = �
hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIfbRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0bRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:07RaggedFromRowSplits_2/RowPartitionFromRowSplits/sub:z:0R^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchwRu
sRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5267*
output_shapes
: *�
then_branchvRt
rRaggedFromRowSplits_2_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5266�
qRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityqRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
BRaggedFromRowSplits_2/RowPartitionFromRowSplits/control_dependencyIdentity"RegexSplitWithOffsets:row_splits:0[^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityr^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity\^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
RaggedFromRowSplits_2/ShapeShape#RegexSplitWithOffsets:end_offsets:0*
T0	*
_output_shapes
:*
out_type0	:��s
)RaggedFromRowSplits_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+RaggedFromRowSplits_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits_2/strided_sliceStridedSlice$RaggedFromRowSplits_2/Shape:output:02RaggedFromRowSplits_2/strided_slice/stack:output:04RaggedFromRowSplits_2/strided_slice/stack_1:output:04RaggedFromRowSplits_2/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask~
+RaggedFromRowSplits_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-RaggedFromRowSplits_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-RaggedFromRowSplits_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%RaggedFromRowSplits_2/strided_slice_1StridedSliceKRaggedFromRowSplits_2/RowPartitionFromRowSplits/control_dependency:output:04RaggedFromRowSplits_2/strided_slice_1/stack:output:06RaggedFromRowSplits_2/strided_slice_1/stack_1:output:06RaggedFromRowSplits_2/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
*RaggedFromRowSplits_2/assert_equal_1/EqualEqual.RaggedFromRowSplits_2/strided_slice_1:output:0,RaggedFromRowSplits_2/strided_slice:output:0*
T0	*
_output_shapes
: k
)RaggedFromRowSplits_2/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_2/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_2/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*RaggedFromRowSplits_2/assert_equal_1/rangeRange9RaggedFromRowSplits_2/assert_equal_1/range/start:output:02RaggedFromRowSplits_2/assert_equal_1/Rank:output:09RaggedFromRowSplits_2/assert_equal_1/range/delta:output:0*
_output_shapes
: �
(RaggedFromRowSplits_2/assert_equal_1/AllAll.RaggedFromRowSplits_2/assert_equal_1/Equal:z:03RaggedFromRowSplits_2/assert_equal_1/range:output:0*
_output_shapes
: �
1RaggedFromRowSplits_2/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
3RaggedFromRowSplits_2/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
3RaggedFromRowSplits_2/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_2/strided_slice_1:0) = �
3RaggedFromRowSplits_2/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_2/strided_slice:0) = �
7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuardIf1RaggedFromRowSplits_2/assert_equal_1/All:output:01RaggedFromRowSplits_2/assert_equal_1/All:output:0.RaggedFromRowSplits_2/strided_slice_1:output:0,RaggedFromRowSplits_2/strided_slice:output:0i^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
BRaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_false_5304*
output_shapes
: *T
then_branchERC
ARaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_true_5303�
@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityIdentity@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: q
/RaggedFromRowSplits_2/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
0RaggedFromRowSplits_2/assert_rank_at_least/ShapeShape#RegexSplitWithOffsets:end_offsets:0*
T0	*
_output_shapes
::��w
YRaggedFromRowSplits_2/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
JRaggedFromRowSplits_2/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
(RaggedFromRowSplits_2/control_dependencyIdentityKRaggedFromRowSplits_2/RowPartitionFromRowSplits/control_dependency:output:0A^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityK^RaggedFromRowSplits_2/assert_rank_at_least/static_checks_determined_all_ok*
T0	*(
_class
loc:@RegexSplitWithOffsets*#
_output_shapes
:����������
VWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsWordpieceTokenizeWithOffsetsRegexSplitWithOffsets:tokens:0iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_table*P
_output_shapes>
<:���������:���������:���������:���������*
max_bytes_per_wordd*)
output_row_partition_type
row_splits*
suffix_indicator##*
unknown_token[UNK]*
use_unknown_token(�
QWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/hash_bucketStringToHashBucketFastfWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:output_values:0*#
_output_shapes
:���������*
num_buckets�
cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV2iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_tablefWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:output_values:0qwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_none_lookup_none_lookup_lookuptablefindv2_default_valueW^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets*	
Tin0*

Tout0	*#
_output_shapes
:����������
aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV2iwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_vocab_lookup_tabled^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2*
_output_shapes
: �
IWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/AddAddV2ZWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/hash_bucket:output:0hWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2:size:0*
T0	*#
_output_shapes
:����������
NWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/NotEqualNotEquallWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2:values:0qwordpiecetokenizewithoffsets_wordpiecetokenizewithoffsets_none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*#
_output_shapes
:����������
NWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2SelectV2RWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/NotEqual:z:0lWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2:values:0MWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/Add:z:0*
T0	*#
_output_shapes
:���������O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2kWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:output_row_lengths:0/RaggedFromRowSplits/control_dependency:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
@RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :�
ARaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/ShapeShapeGatherV2:output:0*
T0	*
_output_shapes
::���
jRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
[RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
CRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_sliceStridedSliceGatherV2:output:0LRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_1:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskw
5RaggedFromRowSplits_3/RowPartitionFromRowSplits/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
DRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/EqualEqualFRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:output:0*
T0	*
_output_shapes
: �
CRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
JRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/rangeRangeSRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/start:output:0LRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Rank:output:0SRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range/delta:output:0*
_output_shapes
: �
BRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/AllAllHRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Equal:z:0MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/range:output:0*
_output_shapes
: �
KRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:0) = �
MRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:0) = �
QRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardIfKRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All:output:0KRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/All:output:0FRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice:output:0>RaggedFromRowSplits_3/RowPartitionFromRowSplits/Const:output:08^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *o
else_branch`R^
\RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_5358*
output_shapes
: *n
then_branch_R]
[RaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_true_5357�
ZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentityZRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1StridedSliceGatherV2:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_1:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
ERaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
GRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2StridedSliceGatherV2:output:0NRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_1:output:0PRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
3RaggedFromRowSplits_3/RowPartitionFromRowSplits/subSubHRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_1:output:0HRaggedFromRowSplits_3/RowPartitionFromRowSplits/strided_slice_2:output:0*
T0	*#
_output_shapes
:����������
IRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual	LessEqualRRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/Const:output:07RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:z:0*
T0	*#
_output_shapes
:����������
[RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
YRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/AllAllcRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/LessEqual:z:0dRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Const:output:0*
_output_shapes
: �
bRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*[
valueRBP BJArguments to from_row_splits do not form a valid RaggedTensor:monotonic.  �
dRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:�
dRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*M
valueDBB B<x (RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:0) = �
hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardIfbRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:0bRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/All:output:07RaggedFromRowSplits_3/RowPartitionFromRowSplits/sub:z:0R^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *�
else_branchwRu
sRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_5394*
output_shapes
: *�
then_branchvRt
rRaggedFromRowSplits_3_RowPartitionFromRowSplits_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_5393�
qRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityqRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
BRaggedFromRowSplits_3/RowPartitionFromRowSplits/control_dependencyIdentityGatherV2:output:0[^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identityr^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity\^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_rank/static_checks_determined_all_ok*
T0	*
_class
loc:@GatherV2*#
_output_shapes
:����������
RaggedFromRowSplits_3/ShapeShapeWWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:0*
T0	*
_output_shapes
:*
out_type0	:��s
)RaggedFromRowSplits_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+RaggedFromRowSplits_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+RaggedFromRowSplits_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#RaggedFromRowSplits_3/strided_sliceStridedSlice$RaggedFromRowSplits_3/Shape:output:02RaggedFromRowSplits_3/strided_slice/stack:output:04RaggedFromRowSplits_3/strided_slice/stack_1:output:04RaggedFromRowSplits_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask~
+RaggedFromRowSplits_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-RaggedFromRowSplits_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-RaggedFromRowSplits_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%RaggedFromRowSplits_3/strided_slice_1StridedSliceKRaggedFromRowSplits_3/RowPartitionFromRowSplits/control_dependency:output:04RaggedFromRowSplits_3/strided_slice_1/stack:output:06RaggedFromRowSplits_3/strided_slice_1/stack_1:output:06RaggedFromRowSplits_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
*RaggedFromRowSplits_3/assert_equal_1/EqualEqual.RaggedFromRowSplits_3/strided_slice_1:output:0,RaggedFromRowSplits_3/strided_slice:output:0*
T0	*
_output_shapes
: k
)RaggedFromRowSplits_3/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_3/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0RaggedFromRowSplits_3/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*RaggedFromRowSplits_3/assert_equal_1/rangeRange9RaggedFromRowSplits_3/assert_equal_1/range/start:output:02RaggedFromRowSplits_3/assert_equal_1/Rank:output:09RaggedFromRowSplits_3/assert_equal_1/range/delta:output:0*
_output_shapes
: �
(RaggedFromRowSplits_3/assert_equal_1/AllAll.RaggedFromRowSplits_3/assert_equal_1/Equal:z:03RaggedFromRowSplits_3/assert_equal_1/range:output:0*
_output_shapes
: �
1RaggedFromRowSplits_3/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*R
valueIBG BAArguments to _from_row_partition do not form a valid RaggedTensor�
3RaggedFromRowSplits_3/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
3RaggedFromRowSplits_3/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (RaggedFromRowSplits_3/strided_slice_1:0) = �
3RaggedFromRowSplits_3/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (RaggedFromRowSplits_3/strided_slice:0) = �
7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuardIf1RaggedFromRowSplits_3/assert_equal_1/All:output:01RaggedFromRowSplits_3/assert_equal_1/All:output:0.RaggedFromRowSplits_3/strided_slice_1:output:0,RaggedFromRowSplits_3/strided_slice:output:0i^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
BRaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_false_5431*
output_shapes
: *T
then_branchERC
ARaggedFromRowSplits_3_assert_equal_1_Assert_AssertGuard_true_5430�
@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityIdentity@RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: q
/RaggedFromRowSplits_3/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :�
0RaggedFromRowSplits_3/assert_rank_at_least/ShapeShapeWWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:0*
T0	*
_output_shapes
::��w
YRaggedFromRowSplits_3/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 �
JRaggedFromRowSplits_3/assert_rank_at_least/static_checks_determined_all_okNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
(RaggedFromRowSplits_3/control_dependencyIdentityKRaggedFromRowSplits_3/RowPartitionFromRowSplits/control_dependency:output:0A^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard/IdentityK^RaggedFromRowSplits_3/assert_rank_at_least/static_checks_determined_all_ok*
T0	*
_class
loc:@GatherV2*#
_output_shapes
:����������
RaggedBoundingBox/ShapeShape1RaggedFromRowSplits_3/control_dependency:output:0*
T0	*
_output_shapes
:*
out_type0	:���
RaggedBoundingBox/Shape_1ShapeWWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:0*
T0	*
_output_shapes
:*
out_type0	:��o
%RaggedBoundingBox/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'RaggedBoundingBox/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'RaggedBoundingBox/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedBoundingBox/strided_sliceStridedSlice RaggedBoundingBox/Shape:output:0.RaggedBoundingBox/strided_slice/stack:output:00RaggedBoundingBox/strided_slice/stack_1:output:00RaggedBoundingBox/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskY
RaggedBoundingBox/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
RaggedBoundingBox/subSub(RaggedBoundingBox/strided_slice:output:0 RaggedBoundingBox/sub/y:output:0*
T0	*
_output_shapes
: q
'RaggedBoundingBox/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)RaggedBoundingBox/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)RaggedBoundingBox/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedBoundingBox/strided_slice_1StridedSlice1RaggedFromRowSplits_3/control_dependency:output:00RaggedBoundingBox/strided_slice_1/stack:output:02RaggedBoundingBox/strided_slice_1/stack_1:output:02RaggedBoundingBox/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_maskq
'RaggedBoundingBox/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
)RaggedBoundingBox/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)RaggedBoundingBox/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedBoundingBox/strided_slice_2StridedSlice1RaggedFromRowSplits_3/control_dependency:output:00RaggedBoundingBox/strided_slice_2/stack:output:02RaggedBoundingBox/strided_slice_2/stack_1:output:02RaggedBoundingBox/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
RaggedBoundingBox/sub_1Sub*RaggedBoundingBox/strided_slice_1:output:0*RaggedBoundingBox/strided_slice_2:output:0*
T0	*#
_output_shapes
:���������a
RaggedBoundingBox/ConstConst*
_output_shapes
:*
dtype0*
valueB: |
RaggedBoundingBox/MaxMaxRaggedBoundingBox/sub_1:z:0 RaggedBoundingBox/Const:output:0*
T0	*
_output_shapes
: ]
RaggedBoundingBox/Maximum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
RaggedBoundingBox/MaximumMaximumRaggedBoundingBox/Max:output:0$RaggedBoundingBox/Maximum/y:output:0*
T0	*
_output_shapes
: q
'RaggedBoundingBox/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)RaggedBoundingBox/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)RaggedBoundingBox/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedBoundingBox/strided_slice_3StridedSlice"RaggedBoundingBox/Shape_1:output:00RaggedBoundingBox/strided_slice_3/stack:output:02RaggedBoundingBox/strided_slice_3/stack_1:output:02RaggedBoundingBox/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask�
RaggedBoundingBox/stackPackRaggedBoundingBox/sub:z:0RaggedBoundingBox/Maximum:z:0*
N*
T0	*
_output_shapes
:_
RaggedBoundingBox/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedBoundingBox/concatConcatV2 RaggedBoundingBox/stack:output:0*RaggedBoundingBox/strided_slice_3:output:0&RaggedBoundingBox/concat/axis:output:0*
N*
T0	*
_output_shapes
:]
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
strided_sliceStridedSlice!RaggedBoundingBox/concat:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskM
Fill/dims/1Const*
_output_shapes
: *
dtype0	*
value	B	 Rm
	Fill/dimsPackstrided_slice:output:0Fill/dims/1:output:0*
N*
T0	*
_output_shapes
:p
FillFillFill/dims:output:0
fill_value*
T0	*'
_output_shapes
:���������*

index_type0	O
Fill_1/dims/1Const*
_output_shapes
: *
dtype0	*
value	B	 Rq
Fill_1/dimsPackstrided_slice:output:0Fill_1/dims/1:output:0*
N*
T0	*
_output_shapes
:v
Fill_1FillFill_1/dims:output:0fill_1_value*
T0	*'
_output_shapes
:���������*

index_type0	~
#RaggedConcat/RaggedFromTensor/ShapeShapeFill:output:0*
T0	*
_output_shapes
:*
out_type0	:��{
1RaggedConcat/RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3RaggedConcat/RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3RaggedConcat/RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+RaggedConcat/RaggedFromTensor/strided_sliceStridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0:RaggedConcat/RaggedFromTensor/strided_slice/stack:output:0<RaggedConcat/RaggedFromTensor/strided_slice/stack_1:output:0<RaggedConcat/RaggedFromTensor/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask}
3RaggedConcat/RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_1StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_1/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask}
3RaggedConcat/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_2StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_2/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
!RaggedConcat/RaggedFromTensor/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_1:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: }
3RaggedConcat/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_3StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_3/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask�
-RaggedConcat/RaggedFromTensor/concat/values_0Pack%RaggedConcat/RaggedFromTensor/mul:z:0*
N*
T0	*
_output_shapes
:k
)RaggedConcat/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$RaggedConcat/RaggedFromTensor/concatConcatV26RaggedConcat/RaggedFromTensor/concat/values_0:output:06RaggedConcat/RaggedFromTensor/strided_slice_3:output:02RaggedConcat/RaggedFromTensor/concat/axis:output:0*
N*
T0	*
_output_shapes
:�
%RaggedConcat/RaggedFromTensor/ReshapeReshapeFill:output:0-RaggedConcat/RaggedFromTensor/concat:output:0*
Tshape0	*
T0	*#
_output_shapes
:���������}
3RaggedConcat/RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor/strided_slice_4StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_4/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maske
#RaggedConcat/RaggedFromTensor/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R�
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/ShapeShape.RaggedConcat/RaggedFromTensor/Reshape:output:0*
T0	*
_output_shapes
:*
out_type0	:���
LRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
FRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSliceGRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/Shape:output:0URaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack:output:0WRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1:output:0WRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV26RaggedConcat/RaggedFromTensor/strided_slice_4:output:0hRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: �
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R �
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangenRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0aRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0nRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

Tidx0	*#
_output_shapes
:����������
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMulhRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0,RaggedConcat/RaggedFromTensor/Const:output:0*
T0	*#
_output_shapes
:����������
%RaggedConcat/RaggedFromTensor_1/ShapeShapeFill_1:output:0*
T0	*
_output_shapes
:*
out_type0	:��}
3RaggedConcat/RaggedFromTensor_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-RaggedConcat/RaggedFromTensor_1/strided_sliceStridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0<RaggedConcat/RaggedFromTensor_1/strided_slice/stack:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
5RaggedConcat/RaggedFromTensor_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_1StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_2StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
#RaggedConcat/RaggedFromTensor_1/mulMul8RaggedConcat/RaggedFromTensor_1/strided_slice_1:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:0*
T0	*
_output_shapes
: 
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_3StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask�
/RaggedConcat/RaggedFromTensor_1/concat/values_0Pack'RaggedConcat/RaggedFromTensor_1/mul:z:0*
N*
T0	*
_output_shapes
:m
+RaggedConcat/RaggedFromTensor_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&RaggedConcat/RaggedFromTensor_1/concatConcatV28RaggedConcat/RaggedFromTensor_1/concat/values_0:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_3:output:04RaggedConcat/RaggedFromTensor_1/concat/axis:output:0*
N*
T0	*
_output_shapes
:�
'RaggedConcat/RaggedFromTensor_1/ReshapeReshapeFill_1:output:0/RaggedConcat/RaggedFromTensor_1/concat:output:0*
Tshape0	*
T0	*#
_output_shapes
:���������
5RaggedConcat/RaggedFromTensor_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/RaggedConcat/RaggedFromTensor_1/strided_slice_4StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskg
%RaggedConcat/RaggedFromTensor_1/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R�
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/ShapeShape0RaggedConcat/RaggedFromTensor_1/Reshape:output:0*
T0	*
_output_shapes
:*
out_type0	:���
NRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
HRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_sliceStridedSliceIRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/Shape:output:0WRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack:output:0YRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1:output:0YRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV28RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:0jRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: �
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R �
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangepRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0cRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0pRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

Tidx0	*#
_output_shapes
:����������
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMuljRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:0.RaggedConcat/RaggedFromTensor_1/Const:output:0*
T0	*#
_output_shapes
:����������
 RaggedConcat/RaggedNRows_1/ShapeShape1RaggedFromRowSplits_3/control_dependency:output:0*
T0	*
_output_shapes
:*
out_type0	:��x
.RaggedConcat/RaggedNRows_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0RaggedConcat/RaggedNRows_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0RaggedConcat/RaggedNRows_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(RaggedConcat/RaggedNRows_1/strided_sliceStridedSlice)RaggedConcat/RaggedNRows_1/Shape:output:07RaggedConcat/RaggedNRows_1/strided_slice/stack:output:09RaggedConcat/RaggedNRows_1/strided_slice/stack_1:output:09RaggedConcat/RaggedNRows_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskb
 RaggedConcat/RaggedNRows_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
RaggedConcat/RaggedNRows_1/subSub1RaggedConcat/RaggedNRows_1/strided_slice:output:0)RaggedConcat/RaggedNRows_1/sub/y:output:0*
T0	*
_output_shapes
: �
!RaggedConcat/assert_equal_1/EqualEqual6RaggedConcat/RaggedFromTensor/strided_slice_4:output:0"RaggedConcat/RaggedNRows_1/sub:z:0*
T0	*
_output_shapes
: b
 RaggedConcat/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
!RaggedConcat/assert_equal_1/rangeRange0RaggedConcat/assert_equal_1/range/start:output:0)RaggedConcat/assert_equal_1/Rank:output:00RaggedConcat/assert_equal_1/range/delta:output:0*
_output_shapes
: �
RaggedConcat/assert_equal_1/AllAll%RaggedConcat/assert_equal_1/Equal:z:0*RaggedConcat/assert_equal_1/range:output:0*
_output_shapes
: �
(RaggedConcat/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 1 (=y) have incompatible shapes.�
*RaggedConcat/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
*RaggedConcat/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
*RaggedConcat/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*8
value/B- B'y (RaggedConcat/RaggedNRows_1/sub:0) = �
.RaggedConcat/assert_equal_1/Assert/AssertGuardIf(RaggedConcat/assert_equal_1/All:output:0(RaggedConcat/assert_equal_1/All:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:0"RaggedConcat/RaggedNRows_1/sub:z:08^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *L
else_branch=R;
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_5587*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_5586�
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_1/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
!RaggedConcat/assert_equal_3/EqualEqual6RaggedConcat/RaggedFromTensor/strided_slice_4:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:0*
T0	*
_output_shapes
: b
 RaggedConcat/assert_equal_3/RankConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : i
'RaggedConcat/assert_equal_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
!RaggedConcat/assert_equal_3/rangeRange0RaggedConcat/assert_equal_3/range/start:output:0)RaggedConcat/assert_equal_3/Rank:output:00RaggedConcat/assert_equal_3/range/delta:output:0*
_output_shapes
: �
RaggedConcat/assert_equal_3/AllAll%RaggedConcat/assert_equal_3/Equal:z:0*RaggedConcat/assert_equal_3/range:output:0*
_output_shapes
: �
(RaggedConcat/assert_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*S
valueJBH BBInput tensors at index 0 (=x) and 2 (=y) have incompatible shapes.�
*RaggedConcat/assert_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
*RaggedConcat/assert_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*G
value>B< B6x (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = �
*RaggedConcat/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*I
value@B> B8y (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = �
.RaggedConcat/assert_equal_3/Assert/AssertGuardIf(RaggedConcat/assert_equal_3/All:output:0(RaggedConcat/assert_equal_3/All:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *L
else_branch=R;
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_5617*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_5616�
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_3/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
RaggedConcat/concat/axisConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : �
RaggedConcat/concatConcatV2.RaggedConcat/RaggedFromTensor/Reshape:output:0WWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/SelectV2:output:00RaggedConcat/RaggedFromTensor_1/Reshape:output:0!RaggedConcat/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
 RaggedConcat/strided_slice/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
"RaggedConcat/strided_slice/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
"RaggedConcat/strided_slice/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_sliceStridedSliceaRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0)RaggedConcat/strided_slice/stack:output:0+RaggedConcat/strided_slice/stack_1:output:0+RaggedConcat/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
"RaggedConcat/strided_slice_1/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
$RaggedConcat/strided_slice_1/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_1/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_1StridedSlice1RaggedFromRowSplits_3/control_dependency:output:0+RaggedConcat/strided_slice_1/stack:output:0-RaggedConcat/strided_slice_1/stack_1:output:0-RaggedConcat/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
RaggedConcat/addAddV2%RaggedConcat/strided_slice_1:output:0#RaggedConcat/strided_slice:output:0*
T0	*#
_output_shapes
:����������
"RaggedConcat/strided_slice_2/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
$RaggedConcat/strided_slice_2/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_2/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_2StridedSlice1RaggedFromRowSplits_3/control_dependency:output:0+RaggedConcat/strided_slice_2/stack:output:0-RaggedConcat/strided_slice_2/stack_1:output:0-RaggedConcat/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
RaggedConcat/add_1AddV2#RaggedConcat/strided_slice:output:0%RaggedConcat/strided_slice_2:output:0*
T0	*
_output_shapes
: �
"RaggedConcat/strided_slice_3/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
$RaggedConcat/strided_slice_3/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_3/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_3StridedSlicecRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_3/stack:output:0-RaggedConcat/strided_slice_3/stack_1:output:0-RaggedConcat/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
RaggedConcat/add_2AddV2%RaggedConcat/strided_slice_3:output:0RaggedConcat/add_1:z:0*
T0	*#
_output_shapes
:����������
"RaggedConcat/strided_slice_4/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
$RaggedConcat/strided_slice_4/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_4/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_4StridedSlicecRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_4/stack:output:0-RaggedConcat/strided_slice_4/stack_1:output:0-RaggedConcat/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask{
RaggedConcat/add_3AddV2RaggedConcat/add_1:z:0%RaggedConcat/strided_slice_4:output:0*
T0	*
_output_shapes
: �
RaggedConcat/concat_1/axisConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : �
RaggedConcat/concat_1ConcatV2aRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0RaggedConcat/add:z:0RaggedConcat/add_2:z:0#RaggedConcat/concat_1/axis:output:0*
N*
T0	*#
_output_shapes
:����������
RaggedConcat/mul/yConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R�
RaggedConcat/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_4:output:0RaggedConcat/mul/y:output:0*
T0	*
_output_shapes
: �
RaggedConcat/range/startConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : �
RaggedConcat/range/deltaConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :r
RaggedConcat/range/CastCast!RaggedConcat/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: t
RaggedConcat/range/Cast_1Cast!RaggedConcat/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
RaggedConcat/rangeRangeRaggedConcat/range/Cast:y:0RaggedConcat/mul:z:0RaggedConcat/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
RaggedConcat/Reshape/shapeConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"   �����
RaggedConcat/ReshapeReshapeRaggedConcat/range:output:0#RaggedConcat/Reshape/shape:output:0*
T0	*'
_output_shapes
:����������
RaggedConcat/transpose/permConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"       �
RaggedConcat/transpose	TransposeRaggedConcat/Reshape:output:0$RaggedConcat/transpose/perm:output:0*
T0	*'
_output_shapes
:����������
RaggedConcat/Reshape_1/shapeConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
����������
RaggedConcat/Reshape_1ReshapeRaggedConcat/transpose:y:0%RaggedConcat/Reshape_1/shape:output:0*
T0	*#
_output_shapes
:����������
&RaggedConcat/RaggedGather/RaggedGatherRaggedGatherRaggedConcat/concat_1:output:0RaggedConcat/concat:output:0RaggedConcat/Reshape_1:output:0*
OUTPUT_RAGGED_RANK*
PARAMS_RAGGED_RANK*
Tindices0	*
Tvalues0	*2
_output_shapes 
:���������:����������
"RaggedConcat/strided_slice_5/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_5/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: �
$RaggedConcat/strided_slice_5/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:�
RaggedConcat/strided_slice_5StridedSlice=RaggedConcat/RaggedGather/RaggedGather:output_nested_splits:0+RaggedConcat/strided_slice_5/stack:output:0-RaggedConcat/strided_slice_5/stack_1:output:0-RaggedConcat/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask�
IdentityIdentity<RaggedConcat/RaggedGather/RaggedGather:output_dense_values:0^NoOp*
T0	*#
_output_shapes
:���������r

Identity_1Identity%RaggedConcat/strided_slice_5:output:0^NoOp*
T0	*#
_output_shapes
:����������
NoOpNoOp/^RaggedConcat/assert_equal_1/Assert/AssertGuard/^RaggedConcat/assert_equal_3/Assert/AssertGuardP^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardg^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard6^RaggedFromRowSplits/assert_equal_1/Assert/AssertGuardR^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardi^RaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard8^RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuardR^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardi^RaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard8^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuardR^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardi^RaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard8^RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuardd^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2b^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2W^WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : : : 2`
.RaggedConcat/assert_equal_1/Assert/AssertGuard.RaggedConcat/assert_equal_1/Assert/AssertGuard2`
.RaggedConcat/assert_equal_3/Assert/AssertGuard.RaggedConcat/assert_equal_3/Assert/AssertGuard2�
ORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardORaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardfRaggedFromRowSplits/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2n
5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard5RaggedFromRowSplits/assert_equal_1/Assert/AssertGuard2�
QRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardQRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
hRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardhRaggedFromRowSplits_1/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2r
7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard7RaggedFromRowSplits_1/assert_equal_1/Assert/AssertGuard2�
QRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardQRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
hRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardhRaggedFromRowSplits_2/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2r
7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard7RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard2�
QRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuardQRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard2�
hRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuardhRaggedFromRowSplits_3/RowPartitionFromRowSplits/assert_non_negative/assert_less_equal/Assert/AssertGuard2r
7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard7RaggedFromRowSplits_3/assert_equal_1/Assert/AssertGuard2�
cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV2cWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Lookup/LookupTableFindV22�
aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV2aWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/None_Lookup/None_Size/LookupTableSizeV22�
VWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsVWordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :2.
,
_user_specified_namevocab_lookup_table:L H
#
_output_shapes
:���������
!
_user_specified_name	strings
�

�
ARaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_true_6827m
iraggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_assert_equal_1_all
G
Craggedfromrowsplits_2_assert_equal_1_assert_assertguard_placeholder	I
Eraggedfromrowsplits_2_assert_equal_1_assert_assertguard_placeholder_1	F
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1
�
<RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityIdentityiraggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_assert_equal_1_all=^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_2/assert_equal_1/All
�

�
ARaggedFromRowSplits_2_assert_equal_1_Assert_AssertGuard_true_5303m
iraggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_assert_equal_1_all
G
Craggedfromrowsplits_2_assert_equal_1_assert_assertguard_placeholder	I
Eraggedfromrowsplits_2_assert_equal_1_assert_assertguard_placeholder_1	F
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1
�
<RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
@RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/IdentityIdentityiraggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_raggedfromrowsplits_2_assert_equal_1_all=^RaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
BRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1IdentityIRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "�
Braggedfromrowsplits_2_assert_equal_1_assert_assertguard_identity_1KRaggedFromRowSplits_2/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :` \

_output_shapes
: 
B
_user_specified_name*(RaggedFromRowSplits_2/assert_equal_1/All
�	
�
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_7140[
Wraggedconcat_assert_equal_3_assert_assertguard_identity_raggedconcat_assert_equal_3_all
>
:raggedconcat_assert_equal_3_assert_assertguard_placeholder	@
<raggedconcat_assert_equal_3_assert_assertguard_placeholder_1	=
9raggedconcat_assert_equal_3_assert_assertguard_identity_1
y
3RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentityWraggedconcat_assert_equal_3_assert_assertguard_identity_raggedconcat_assert_equal_3_all4^RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "
9raggedconcat_assert_equal_3_assert_assertguard_identity_1BRaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :W S

_output_shapes
: 
9
_user_specified_name!RaggedConcat/assert_equal_3/All
�"
�
ZRaggedFromRowSplits_RowPartitionFromRowSplits_assert_equal_1_Assert_AssertGuard_false_6529�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_all
�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_strided_slice	�
�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_const	^
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1
��VRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert�
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*S
valueJBH BBArguments to from_row_splits do not form a valid RaggedTensor:zero�
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:�
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:0) = �
]RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*M
valueDBB B<y (RaggedFromRowSplits/RowPartitionFromRowSplits/Const:0) = �
VRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertAssert�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_allfRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0fRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_strided_slicefRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_const*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
XRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/IdentityIdentity�raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_assert_raggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_allW^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
ZRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1IdentityaRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity:output:0U^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
TRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/NoOpNoOpW^RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert*
_output_shapes
 "�
Zraggedfromrowsplits_rowpartitionfromrowsplits_assert_equal_1_assert_assertguard_identity_1cRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2�
VRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/AssertVRaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/Assert/AssertGuard/Assert:kg

_output_shapes
: 
M
_user_specified_name53RaggedFromRowSplits/RowPartitionFromRowSplits/Const:so

_output_shapes
: 
U
_user_specified_name=;RaggedFromRowSplits/RowPartitionFromRowSplits/strided_slice:x t

_output_shapes
: 
Z
_user_specified_nameB@RaggedFromRowSplits/RowPartitionFromRowSplits/assert_equal_1/All
��
�
__inference_detokenize_6459
	tokenized	
tokenized_1	0
,none_export_lookuptableexportv2_table_handle
identity��Assert/Assert�None_Export/LookupTableExportV2�
None_Export/LookupTableExportV2LookupTableExportV2,none_export_lookuptableexportv2_table_handle*
Tkeys0*
Tvalues0	*
_output_shapes

::�
EnsureShapeEnsureShape&None_Export/LookupTableExportV2:keys:0*
T0*#
_output_shapes
:���������*
shape:����������
EnsureShape_1EnsureShape(None_Export/LookupTableExportV2:values:0*
T0	*#
_output_shapes
:���������*
shape:���������W
argsort/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������X
argsort/NegNegEnsureShape_1:output:0*
T0	*#
_output_shapes
:���������O
argsort/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Ri
argsort/subSubargsort/Neg:y:0argsort/sub/y:output:0*
T0	*#
_output_shapes
:���������Z
argsort/ShapeShapeargsort/sub:z:0*
T0	*
_output_shapes
::��n
argsort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������g
argsort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
argsort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
argsort/strided_sliceStridedSliceargsort/Shape:output:0$argsort/strided_slice/stack:output:0&argsort/strided_slice/stack_1:output:0&argsort/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
argsort/RankConst*
_output_shapes
: *
dtype0*
value	B :�
argsort/TopKV2TopKV2argsort/sub:z:0argsort/strided_slice:output:0*
T0	*2
_output_shapes 
:���������:���������O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2EnsureShape_1:output:0argsort/TopKV2:indices:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*#
_output_shapes
:���������Q
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �

GatherV2_1GatherV2EnsureShape:output:0argsort/TopKV2:indices:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:���������]
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
strided_sliceStridedSliceGatherV2:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskI
Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Y
EqualEqualstrided_slice:output:0Equal/y:output:0*
T0	*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceGatherV2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceGatherV2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_maskl
subSubstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:���������K
	Equal_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R[
Equal_1Equalsub:z:0Equal_1/y:output:0*
T0	*#
_output_shapes
:���������O
ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
AllAllEqual_1:z:0Const:output:0*
_output_shapes
: B
and
LogicalAnd	Equal:z:0All:output:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*}
valuetBr Bl`detokenize` only works with vocabulary tables where the indices are dense on the interval `[0, vocab_size)`�
Assert/AssertAssertand:z:0Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 R
SizeSizeGatherV2_1:output:0^Assert/Assert*
T0*
_output_shapes
: K
CastCastSize:output:0*

DstT0	*

SrcT0*
_output_shapes
: U
MinimumMinimum	tokenizedCast:y:0*
T0	*#
_output_shapes
:���������]
concat/values_1Const*
_output_shapes
:*
dtype0*
valueBB[UNK]M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2GatherV2_1:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*#
_output_shapes
:���������\
RaggedGather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedGather/GatherV2GatherV2concat:output:0Minimum:z:0#RaggedGather/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������`
RaggedSegmentJoin/ShapeShapetokenized_1*
T0	*
_output_shapes
::��o
%RaggedSegmentJoin/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'RaggedSegmentJoin/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'RaggedSegmentJoin/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
RaggedSegmentJoin/strided_sliceStridedSlice RaggedSegmentJoin/Shape:output:0.RaggedSegmentJoin/strided_slice/stack:output:00RaggedSegmentJoin/strided_slice/stack_1:output:00RaggedSegmentJoin/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
RaggedSegmentJoin/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin/subSub(RaggedSegmentJoin/strided_slice:output:0 RaggedSegmentJoin/sub/y:output:0*
T0*
_output_shapes
: �
>RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_sliceStridedSlicetokenized_1GRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1StridedSlicetokenized_1IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
.RaggedSegmentJoin/RaggedSplitsToSegmentIds/subSubARaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice:output:0CRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/ShapeShapetokenized_1*
T0	*
_output_shapes
:*
out_type0	:���
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Shape:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0KRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskt
2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1SubCRaggedSegmentJoin/RaggedSplitsToSegmentIds/strided_slice_2:output:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/CastCast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1Cast?RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0RaggedSegmentJoin/RaggedSplitsToSegmentIds/rangeRange9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast:y:04RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub_1:z:0;RaggedSegmentJoin/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/CastCast2RaggedSegmentJoin/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ShapeShape9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSlice@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Shape:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackHRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo:RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Cast:y:0LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
7RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaxMaxFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: x
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
9RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/MaximumMaximum?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/zero:output:0>RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
MRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsFRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastRRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
<RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims9RaggedSegmentJoin/RaggedSplitsToSegmentIds/range:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
BRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
@RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackKRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0=RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
6RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/TileTileERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0IRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
RRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceMRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0[RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
CRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdURaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0^RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2Shape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0]RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0_RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
JRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ERaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0SRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshape?RaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/Tile:output:0NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
NRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
HRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeGRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0WRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
DRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereQRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
FRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeLRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
LRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0ORaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0URaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
%RaggedSegmentJoin/UnsortedSegmentJoinUnsortedSegmentJoinRaggedGather/GatherV2:output:0PRaggedSegmentJoin/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator �
StaticRegexReplaceStaticRegexReplace.RaggedSegmentJoin/UnsortedSegmentJoin:output:0*#
_output_shapes
:���������*
pattern \#\#*
rewrite �
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*#
_output_shapes
:���������*
pattern	^ +| +$*
rewrite S
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
value	B B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace_1:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
StaticRegexFullMatchStaticRegexFullMatch"StringSplit/StringSplitV2:values:0*#
_output_shapes
:���������*&
pattern\[PAD\]|\[START\]|\[END\]\

LogicalNot
LogicalNotStaticRegexFullMatch:output:0*#
_output_shapes
:���������b
RaggedMask/assert_equal/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
RaggedMask/CastCastLogicalNot:y:0^RaggedMask/assert_equal/NoOp*

DstT0	*

SrcT0
*#
_output_shapes
:����������
 RaggedMask/RaggedReduceSum/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
::���
.RaggedMask/RaggedReduceSum/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
0RaggedMask/RaggedReduceSum/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedReduceSum/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
(RaggedMask/RaggedReduceSum/strided_sliceStridedSlice)RaggedMask/RaggedReduceSum/Shape:output:07RaggedMask/RaggedReduceSum/strided_slice/stack:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_1:output:09RaggedMask/RaggedReduceSum/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 RaggedMask/RaggedReduceSum/sub/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
RaggedMask/RaggedReduceSum/subSub1RaggedMask/RaggedReduceSum/strided_slice:output:0)RaggedMask/RaggedReduceSum/sub/y:output:0*
T0*
_output_shapes
: �
GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
ARaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_sliceStridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
7RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/subSubJRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice:output:0LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/ShapeShapeMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0^RaggedMask/assert_equal/NoOp*
T0	*
_output_shapes
:*
out_type0	:���
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
CRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2StridedSliceBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Shape:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0TRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/yConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0	*
value	B	 R�
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1SubLRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/strided_slice_2:output:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/startConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/deltaConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/CastCastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1CastHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/rangeRangeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast:y:0=RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub_1:z:0DRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/CastCast;RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ShapeShapeBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
HRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceIRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Shape:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackQRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastToCRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Cast:y:0URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
@RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
>RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaxMaxORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: �
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zeroConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
BRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/zero:output:0GRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
VRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCast[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
ERaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDimsBRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/range:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
KRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B :�
IRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackTRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0FRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
?RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/TileTileNRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0RRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
[RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceVRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0dRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
LRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProd^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0gRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
]RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
_RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceXRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0fRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0hRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
SRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
NRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0\RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeHRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/Tile:output:0WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
WRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
QRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapePRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0`RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
MRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereZRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
ORaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeURaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
URaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
PRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0XRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0^RaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
-RaggedMask/RaggedReduceSum/UnsortedSegmentSumUnsortedSegmentSumRaggedMask/Cast:y:0YRaggedMask/RaggedReduceSum/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0"RaggedMask/RaggedReduceSum/sub:z:0*
Tindices0	*
T0	*#
_output_shapes
:���������w
RaggedMask/Cumsum/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
RaggedMask/CumsumCumsum6RaggedMask/RaggedReduceSum/UnsortedSegmentSum:output:0RaggedMask/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
RaggedMask/concat/values_0Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0	*
valueB	R �
RaggedMask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
valueB :
����������
RaggedMask/concatConcatV2#RaggedMask/concat/values_0:output:0RaggedMask/Cumsum:out:0RaggedMask/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/ShapeShape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
6RaggedMask/RaggedMask/boolean_mask/strided_slice/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
8RaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
0RaggedMask/RaggedMask/boolean_mask/strided_sliceStridedSlice1RaggedMask/RaggedMask/boolean_mask/Shape:output:0?RaggedMask/RaggedMask/boolean_mask/strided_slice/stack:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
9RaggedMask/RaggedMask/boolean_mask/Prod/reduction_indicesConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
'RaggedMask/RaggedMask/boolean_mask/ProdProd9RaggedMask/RaggedMask/boolean_mask/strided_slice:output:0BRaggedMask/RaggedMask/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
*RaggedMask/RaggedMask/boolean_mask/Shape_1Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_1StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_1:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
*RaggedMask/RaggedMask/boolean_mask/Shape_2Shape"StringSplit/StringSplitV2:values:0^RaggedMask/assert_equal/NoOp*
T0*
_output_shapes
::���
8RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stackConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB: �
:RaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2Const^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:�
2RaggedMask/RaggedMask/boolean_mask/strided_slice_2StridedSlice3RaggedMask/RaggedMask/boolean_mask/Shape_2:output:0ARaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_1:output:0CRaggedMask/RaggedMask/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
2RaggedMask/RaggedMask/boolean_mask/concat/values_1Pack0RaggedMask/RaggedMask/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
.RaggedMask/RaggedMask/boolean_mask/concat/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
)RaggedMask/RaggedMask/boolean_mask/concatConcatV2;RaggedMask/RaggedMask/boolean_mask/strided_slice_1:output:0;RaggedMask/RaggedMask/boolean_mask/concat/values_1:output:0;RaggedMask/RaggedMask/boolean_mask/strided_slice_2:output:07RaggedMask/RaggedMask/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*RaggedMask/RaggedMask/boolean_mask/ReshapeReshape"StringSplit/StringSplitV2:values:02RaggedMask/RaggedMask/boolean_mask/concat:output:0*
T0*#
_output_shapes
:����������
2RaggedMask/RaggedMask/boolean_mask/Reshape_1/shapeConst^RaggedMask/assert_equal/NoOp*
_output_shapes
:*
dtype0*
valueB:
����������
,RaggedMask/RaggedMask/boolean_mask/Reshape_1ReshapeLogicalNot:y:0;RaggedMask/RaggedMask/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
(RaggedMask/RaggedMask/boolean_mask/WhereWhere5RaggedMask/RaggedMask/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
*RaggedMask/RaggedMask/boolean_mask/SqueezeSqueeze0RaggedMask/RaggedMask/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
0RaggedMask/RaggedMask/boolean_mask/GatherV2/axisConst^RaggedMask/assert_equal/NoOp*
_output_shapes
: *
dtype0*
value	B : �
+RaggedMask/RaggedMask/boolean_mask/GatherV2GatherV23RaggedMask/RaggedMask/boolean_mask/Reshape:output:03RaggedMask/RaggedMask/boolean_mask/Squeeze:output:09RaggedMask/RaggedMask/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������q
RaggedSegmentJoin_1/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
::��q
'RaggedSegmentJoin_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)RaggedSegmentJoin_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)RaggedSegmentJoin_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!RaggedSegmentJoin_1/strided_sliceStridedSlice"RaggedSegmentJoin_1/Shape:output:00RaggedSegmentJoin_1/strided_slice/stack:output:02RaggedSegmentJoin_1/strided_slice/stack_1:output:02RaggedSegmentJoin_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
RaggedSegmentJoin_1/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
RaggedSegmentJoin_1/subSub*RaggedSegmentJoin_1/strided_slice:output:0"RaggedSegmentJoin_1/sub/y:output:0*
T0*
_output_shapes
: �
@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_sliceStridedSliceRaggedMask/concat:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_1:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*
end_mask�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1StridedSliceRaggedMask/concat:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask�
0RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/subSubCRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice:output:0ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_1:output:0*
T0	*#
_output_shapes
:����������
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/ShapeShapeRaggedMask/concat:output:0*
T0	*
_output_shapes
:*
out_type0	:���
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2StridedSlice;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Shape:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_1:output:0MRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskv
4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1SubERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/strided_slice_2:output:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1/y:output:0*
T0	*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/startConst*
_output_shapes
: *
dtype0*
value	B : z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/CastCastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1CastARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
2RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/rangeRange;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast:y:06RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub_1:z:0=RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:����������
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/CastCast4RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/sub:z:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ShapeShape;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0*
T0	*
_output_shapes
::���
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
ARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_sliceStridedSliceBRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Shape:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_1:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shapePackJRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastToBroadcastTo<RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Cast:y:0NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo/shape:output:0*
T0*#
_output_shapes
:����������
9RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaxMaxHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Const:output:0*
T0*
_output_shapes
: z
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zeroConst*
_output_shapes
: *
dtype0*
value	B : �
;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/MaximumMaximumARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/zero:output:0@RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Max:output:0*
T0*
_output_shapes
: �
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/RangeRangeORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Const_1:output:0*#
_output_shapes
:����������
ORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims
ExpandDimsHRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/BroadcastTo:output:0XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/CastCastTRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/LessLessORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Range:output:0IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Cast:y:0*
T0*0
_output_shapes
:�������������������
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
>RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims
ExpandDims;RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/range:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
DRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :�
BRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiplesPackMRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples/0:output:0?RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Maximum:z:0*
N*
T0*
_output_shapes
:�
8RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/TileTileGRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/ExpandDims:output:0KRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile/multiples:output:0*
T0	*0
_output_shapes
:�������������������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ShapeShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
TRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_sliceStridedSliceORaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape:output:0]RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
ERaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ProdProdWRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice:output:0`RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: �
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_1:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2ShapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0*
T0	*
_output_shapes
::���
VRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
XRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2StridedSliceQRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Shape_2:output:0_RaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_1:output:0aRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask�
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1PackNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:�
LRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concatConcatV2YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/values_1:output:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/strided_slice_2:output:0URaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:�
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/ReshapeReshapeARaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/Tile:output:0PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/concat:output:0*
T0	*#
_output_shapes
:����������
PRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
JRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1ReshapeIRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/SequenceMask/Less:z:0YRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:����������
FRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/WhereWhereSRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape_1:output:0*'
_output_shapes
:����������
HRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/SqueezeSqueezeNRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:���������*
squeeze_dims
�
NRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
IRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2GatherV2QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Reshape:output:0QRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/Squeeze:output:0WRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
'RaggedSegmentJoin_1/UnsortedSegmentJoinUnsortedSegmentJoin4RaggedMask/RaggedMask/boolean_mask/GatherV2:output:0RRaggedSegmentJoin_1/RaggedSplitsToSegmentIds/Repeat/boolean_mask/GatherV2:output:0RaggedSegmentJoin_1/sub:z:0*
Tindices0	*#
_output_shapes
:���������*
	separator {
IdentityIdentity0RaggedSegmentJoin_1/UnsortedSegmentJoin:output:0^NoOp*
T0*#
_output_shapes
:���������T
NoOpNoOp^Assert/Assert ^None_Export/LookupTableExportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2
Assert/AssertAssert/Assert2B
None_Export/LookupTableExportV2None_Export/LookupTableExportV2:,(
&
_user_specified_nametable_handle:NJ
#
_output_shapes
:���������
#
_user_specified_name	tokenized:N J
#
_output_shapes
:���������
#
_user_specified_name	tokenized
�

�
__inference_lookup_6494
	token_ids	
token_ids_1	3
$raggedgather_readvariableop_resource:	�
identity

identity_1	��RaggedGather/ReadVariableOp}
RaggedGather/ReadVariableOpReadVariableOp$raggedgather_readvariableop_resource*
_output_shapes	
:�*
dtype0\
RaggedGather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
RaggedGather/GatherV2GatherV2#RaggedGather/ReadVariableOp:value:0	token_ids#RaggedGather/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������i
IdentityIdentityRaggedGather/GatherV2:output:0^NoOp*
T0*#
_output_shapes
:���������X

Identity_1Identitytoken_ids_1^NoOp*
T0	*#
_output_shapes
:���������@
NoOpNoOp^RaggedGather/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2:
RaggedGather/ReadVariableOpRaggedGather/ReadVariableOp:($
"
_user_specified_name
resource:NJ
#
_output_shapes
:���������
#
_user_specified_name	token_ids:N J
#
_output_shapes
:���������
#
_user_specified_name	token_ids"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp2*

asset_path_initializer:0en_vocab.txt2,

asset_path_initializer_1:0mn_vocab.txt2,

asset_path_initializer_2:0en_vocab.txt2,

asset_path_initializer_3:0mn_vocab.txt:�a
>
mn
en

signatures"
_generic_user_object
�
	tokenizer
_reserved_tokens
_vocab_path
	vocab

detokenize
	get_reserved_tokens

get_vocab_path
get_vocab_size

lookup
tokenize"
_generic_user_object
�
	tokenizer
_reserved_tokens
_vocab_path
	vocab

detokenize
get_reserved_tokens
get_vocab_path
get_vocab_size

lookup
tokenize"
_generic_user_object
"
signature_map
N
_basic_tokenizer
_wordpiece_tokenizer"
_generic_user_object
 "
trackable_list_wrapper
*
:�2Variable
�
trace_0
trace_12�
__inference_detokenize_4571
__inference_detokenize_4938�
���
FullArgSpec
args�
j	tokenized
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_02�
$__inference_get_reserved_tokens_4942�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� ztrace_0
�
trace_02�
__inference_get_vocab_path_4947�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� ztrace_0
�
trace_02�
__inference_get_vocab_size_4957�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� ztrace_0
�
trace_0
 trace_12�
__inference_lookup_4963
__inference_lookup_4973�
���
FullArgSpec
args�
j	token_ids
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0z trace_1
�
!trace_02�
__inference_tokenize_5685�
���
FullArgSpec
args�
	jstrings
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!trace_0
N
"_basic_tokenizer
#_wordpiece_tokenizer"
_generic_user_object
 "
trackable_list_wrapper
*
:�2Variable
�
$trace_0
%trace_12�
__inference_detokenize_6092
__inference_detokenize_6459�
���
FullArgSpec
args�
j	tokenized
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z$trace_0z%trace_1
�
&trace_02�
$__inference_get_reserved_tokens_6463�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z&trace_0
�
'trace_02�
__inference_get_vocab_path_6468�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z'trace_0
�
(trace_02�
__inference_get_vocab_size_6478�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z(trace_0
�
)trace_0
*trace_12�
__inference_lookup_6484
__inference_lookup_6494�
���
FullArgSpec
args�
j	token_ids
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z)trace_0z*trace_1
�
+trace_02�
__inference_tokenize_7209�
���
FullArgSpec
args�
	jstrings
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z+trace_0
"
_generic_user_object
7
,_vocab_lookup_table"
_generic_user_object
�B�
__inference_detokenize_4571	tokenized"�
���
FullArgSpec
args�
j	tokenized
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_detokenize_4938	tokenizedtokenized_1"�
���
FullArgSpec
args�
j	tokenized
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_get_reserved_tokens_4942"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
	capture_0B�
__inference_get_vocab_path_4947"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z	capture_0
�B�
__inference_get_vocab_size_4957"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_lookup_4963	token_ids"�
���
FullArgSpec
args�
j	token_ids
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_lookup_4973	token_idstoken_ids_1"�
���
FullArgSpec
args�
j	token_ids
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
-	capture_1
.	capture_2
/	capture_3B�
__inference_tokenize_5685strings"�
���
FullArgSpec
args�
	jstrings
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z-	capture_1z.	capture_2z/	capture_3
"
_generic_user_object
7
0_vocab_lookup_table"
_generic_user_object
�B�
__inference_detokenize_6092	tokenized"�
���
FullArgSpec
args�
j	tokenized
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_detokenize_6459	tokenizedtokenized_1"�
���
FullArgSpec
args�
j	tokenized
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_get_reserved_tokens_6463"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
	capture_0B�
__inference_get_vocab_path_6468"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z	capture_0
�B�
__inference_get_vocab_size_6478"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_lookup_6484	token_ids"�
���
FullArgSpec
args�
j	token_ids
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_lookup_6494	token_idstoken_ids_1"�
���
FullArgSpec
args�
j	token_ids
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
1	capture_1
.	capture_2
/	capture_3B�
__inference_tokenize_7209strings"�
���
FullArgSpec
args�
	jstrings
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z1	capture_1z.	capture_2z/	capture_3
R
2_initializer
3_create_resource
4_initialize
5_destroy_resourceR 
!J	
Const_3jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
R
6_initializer
7_create_resource
8_initialize
9_destroy_resourceR 
!J	
Const_2jtf.TrackableConstant
-
:	_filename"
_generic_user_object
�
;trace_02�
__inference__creator_7213�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z;trace_0
�
<trace_02�
__inference__initializer_7219�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z<trace_0
�
=trace_02�
__inference__destroyer_7223�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z=trace_0
-
>	_filename"
_generic_user_object
�
?trace_02�
__inference__creator_7227�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z?trace_0
�
@trace_02�
__inference__initializer_7233�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z@trace_0
�
Atrace_02�
__inference__destroyer_7237�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zAtrace_0
*
�B�
__inference__creator_7213"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
:	capture_0B�
__inference__initializer_7219"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z:	capture_0
�B�
__inference__destroyer_7223"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
* 
�B�
__inference__creator_7227"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
>	capture_0B�
__inference__initializer_7233"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z>	capture_0
�B�
__inference__destroyer_7237"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� >
__inference__creator_7213!�

� 
� "�
unknown >
__inference__creator_7227!�

� 
� "�
unknown @
__inference__destroyer_7223!�

� 
� "�
unknown @
__inference__destroyer_7237!�

� 
� "�
unknown F
__inference__initializer_7219%:,�

� 
� "�
unknown F
__inference__initializer_7233%>0�

� 
� "�
unknown ~
__inference_detokenize_4571_,;�8
1�.
,�)
	tokenized������������������	
� "�
unknown����������
__inference_detokenize_4938~,Z�W
P�M
K�H0�-
�������������������
�	
`
�	RaggedTensorSpec 
� "�
unknown���������~
__inference_detokenize_6092_0;�8
1�.
,�)
	tokenized������������������	
� "�
unknown����������
__inference_detokenize_6459~0Z�W
P�M
K�H0�-
�������������������
�	
`
�	RaggedTensorSpec 
� "�
unknown���������M
$__inference_get_reserved_tokens_4942%�

� 
� "�
unknownM
$__inference_get_reserved_tokens_6463%�

� 
� "�
unknownG
__inference_get_vocab_path_4947$�

� 
� "�
unknown G
__inference_get_vocab_path_6468$�

� 
� "�
unknown G
__inference_get_vocab_size_4957$�

� 
� "�
unknown G
__inference_get_vocab_size_6478$�

� 
� "�
unknown �
__inference_lookup_4963l;�8
1�.
,�)
	token_ids������������������	
� "*�'
unknown�������������������
__inference_lookup_4973�Z�W
P�M
K�H0�-
�������������������
�	
`
�	RaggedTensorSpec 
� "K�H0�-
�������������������
�
`
�	RaggedTensorSpec �
__inference_lookup_6484l;�8
1�.
,�)
	token_ids������������������	
� "*�'
unknown�������������������
__inference_lookup_6494�Z�W
P�M
K�H0�-
�������������������
�	
`
�	RaggedTensorSpec 
� "K�H0�-
�������������������
�
`
�	RaggedTensorSpec �
__inference_tokenize_5685�,-./,�)
"�
�
strings���������
� "K�H0�-
�������������������
�	
`
�	RaggedTensorSpec �
__inference_tokenize_7209�01./,�)
"�
�
strings���������
� "K�H0�-
�������������������
�	
`
�	RaggedTensorSpec 