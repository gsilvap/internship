	.file	"pcre.c"
	.section	.rodata
	.align 64
	.type	OP_lengths, @object
	.size	OP_lengths, 81
OP_lengths:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	4
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	33
	.byte	33
	.byte	0
	.byte	3
	.byte	3
	.byte	6
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	3
	.byte	3
	.type	rep_min, @object
	.size	rep_min, 6
rep_min:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.type	rep_max, @object
	.size	rep_max, 6
rep_max:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.align 64
	.type	escapes, @object
	.size	escapes, 150
escapes:
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	-1
	.value	-3
	.value	-12
	.value	-5
	.value	-18
	.value	0
	.value	-2
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-13
	.value	-19
	.value	0
	.value	-7
	.value	0
	.value	0
	.value	0
	.value	-9
	.value	-15
	.value	0
	.value	-16
	.value	91
	.value	92
	.value	93
	.value	94
	.value	95
	.value	96
	.value	7
	.value	-4
	.value	0
	.value	-6
	.value	27
	.value	12
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	10
	.value	0
	.value	-14
	.value	0
	.value	13
	.value	-8
	.value	9
	.value	0
	.value	0
	.value	-10
	.value	0
	.value	0
	.value	-17
.LC0:
	.string	"alpha"
.LC1:
	.string	"lower"
.LC2:
	.string	"upper"
.LC3:
	.string	"alnum"
.LC4:
	.string	"ascii"
.LC5:
	.string	"blank"
.LC6:
	.string	"cntrl"
.LC7:
	.string	"digit"
.LC8:
	.string	"graph"
.LC9:
	.string	"print"
.LC10:
	.string	"punct"
.LC11:
	.string	"space"
.LC12:
	.string	"word"
.LC13:
	.string	"xdigit"
	.align 64
	.type	posix_names, @object
	.size	posix_names, 112
posix_names:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.type	posix_name_lengths, @object
	.size	posix_name_lengths, 15
posix_name_lengths:
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	6
	.byte	0
	.align 64
	.type	posix_class_maps, @object
	.size	posix_class_maps, 168
posix_class_maps:
	.long	128
	.long	96
	.long	-1
	.long	128
	.long	-1
	.long	-1
	.long	96
	.long	-1
	.long	-1
	.long	64
	.long	128
	.long	96
	.long	224
	.long	288
	.long	-1
	.long	0
	.long	-1
	.long	-1
	.long	288
	.long	-1
	.long	-1
	.long	64
	.long	-1
	.long	-1
	.long	192
	.long	-1
	.long	-1
	.long	224
	.long	-1
	.long	-1
	.long	256
	.long	-1
	.long	-1
	.long	0
	.long	-1
	.long	-1
	.long	160
	.long	-1
	.long	-1
	.long	32
	.long	-1
	.long	-1
	.align 64
	.type	digitab, @object
	.size	digitab, 256
digitab:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.globl	pcre_malloc
	.data
	.align 8
	.type	pcre_malloc, @object
	.size	pcre_malloc, 8
pcre_malloc:
	.quad	malloc
	.globl	pcre_free
	.align 8
	.type	pcre_free, @object
	.size	pcre_free, 8
pcre_free:
	.quad	free
	.globl	pcre_stack_malloc
	.align 8
	.type	pcre_stack_malloc, @object
	.size	pcre_stack_malloc, 8
pcre_stack_malloc:
	.quad	malloc
	.globl	pcre_stack_free
	.align 8
	.type	pcre_stack_free, @object
	.size	pcre_stack_free, 8
pcre_stack_free:
	.quad	free
	.globl	pcre_callout
	.bss
	.align 8
	.type	pcre_callout, @object
	.size	pcre_callout, 8
pcre_callout:
	.zero	8
	.data
	.align 64
	.type	pcre_default_tables, @object
	.size	pcre_default_tables, 1088
pcre_default_tables:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.byte	96
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-117
	.byte	-116
	.byte	-115
	.byte	-114
	.byte	-113
	.byte	-112
	.byte	-111
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.byte	-96
	.byte	-95
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.byte	96
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-117
	.byte	-116
	.byte	-115
	.byte	-114
	.byte	-113
	.byte	-112
	.byte	-111
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.byte	-96
	.byte	-95
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	0
	.byte	62
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	3
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-121
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-1
	.byte	0
	.byte	-4
	.byte	1
	.byte	0
	.byte	0
	.byte	-8
	.byte	1
	.byte	0
	.byte	0
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	-128
	.byte	0
	.byte	0
	.byte	-128
	.byte	16
	.byte	0
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata
.LC14:
	.string	"5.0 13-Sep-2004"
	.text
	.globl	pcre_version
	.type	pcre_version, @function
pcre_version:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC14, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	pcre_version, .-pcre_version
	.type	byteflip2, @function
byteflip2:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzwl	-4(%rbp), %eax
	shrw	$8, %ax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	byteflip2, .-byteflip2
	.type	byteflip4, @function
byteflip4:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	$65280, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	$16711680, %eax
	shrl	$8, %eax
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	byteflip4, .-byteflip4
	.type	try_flipped, @function
try_flipped:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	byteflip4
	cmpl	$1346589253, %eax
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	%rcx, 32(%rax)
	movq	40(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	byteflip4
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	call	byteflip4
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	byteflip2
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 16(%rax)
	movq	-8(%rbp), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	byteflip2
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 18(%rax)
	movq	-8(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	byteflip2
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 20(%rax)
	movq	-8(%rbp), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	byteflip2
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 22(%rax)
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	byteflip2
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 24(%rax)
	movq	-8(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	byteflip2
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 26(%rax)
	movq	-8(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	byteflip2
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, 28(%rax)
	cmpq	$0, -24(%rbp)
	je	.L10
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	byteflip4
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	byteflip4
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
.L10:
	movq	-16(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	try_flipped, .-try_flipped
	.globl	pcre_info
	.type	pcre_info, @function
pcre_info:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$-2, %eax
	jmp	.L21
.L12:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1346589253, %eax
	je	.L14
	leaq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	try_flipped
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$-4, %eax
	jmp	.L21
.L14:
	cmpq	$0, -80(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$31359, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L15:
	cmpq	$0, -88(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	je	.L19
	movl	$-1, %eax
	jmp	.L18
.L19:
	movl	$-2, %eax
.L18:
	movq	-88(%rbp), %rdx
	movl	%eax, (%rdx)
.L16:
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pcre_info, .-pcre_info
	.globl	pcre_fullinfo
	.type	pcre_fullinfo, @function
pcre_fullinfo:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	cmpq	$0, -144(%rbp)
	jne	.L24
.L23:
	movl	$-2, %eax
	jmp	.L54
.L24:
	cmpq	$0, -128(%rbp)
	je	.L26
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L26
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L26:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1346589253, %eax
	je	.L27
	leaq	-112(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	try_flipped
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	movl	$-4, %eax
	jmp	.L54
.L28:
	cmpq	$0, -16(%rbp)
	je	.L27
	leaq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
.L27:
	cmpl	$11, -132(%rbp)
	ja	.L29
	movl	-132(%rbp), %eax
	movq	.L31(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L31:
	.quad	.L30
	.quad	.L32
	.quad	.L33
	.quad	.L34
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.quad	.L38
	.quad	.L39
	.quad	.L40
	.quad	.L41
	.quad	.L42
	.text
.L30:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	andl	$31359, %eax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L43
.L32:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L43
.L41:
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	jmp	.L45
.L44:
	movl	$0, %edx
.L45:
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L43
.L33:
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L43
.L34:
	movq	-8(%rbp), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L43
.L35:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	je	.L48
	movl	$-1, %eax
	jmp	.L47
.L48:
	movl	$-2, %eax
.L47:
	movq	-144(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L43
.L36:
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L50
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	jmp	.L51
.L50:
	movl	$0, %edx
.L51:
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L43
.L37:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	.L52
	movq	-8(%rbp), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %eax
	jmp	.L53
.L52:
	movl	$-1, %eax
.L53:
	movq	-144(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L43
.L38:
	movq	-8(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L43
.L39:
	movq	-8(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L43
.L40:
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L43
.L42:
	movq	-144(%rbp), %rax
	movq	$pcre_default_tables, (%rax)
	jmp	.L43
.L29:
	movl	$-3, %eax
	jmp	.L54
.L43:
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	pcre_fullinfo, .-pcre_fullinfo
	.globl	pcre_config
	.type	pcre_config, @function
pcre_config:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$6, -4(%rbp)
	ja	.L56
	movl	-4(%rbp), %eax
	movq	.L58(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L58:
	.quad	.L57
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.text
.L57:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L65
.L64:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L65
.L59:
	movq	-16(%rbp), %rax
	movl	$10, (%rax)
	jmp	.L65
.L60:
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L65
.L61:
	movq	-16(%rbp), %rax
	movl	$10, (%rax)
	jmp	.L65
.L62:
	movq	-16(%rbp), %rax
	movl	$10000000, (%rax)
	jmp	.L65
.L63:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L65
.L56:
	movl	$-3, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pcre_config, .-pcre_config
	.section	.rodata
.LC15:
	.string	"\\ at end of pattern"
	.align 8
.LC16:
	.string	"PCRE does not support \\L, \\l, \\N, \\U, or \\u"
.LC17:
	.string	"\\c at end of pattern"
	.align 8
.LC18:
	.string	"unrecognized character follows \\"
	.text
	.type	check_escape, @function
check_escape:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L68
	movq	-48(%rbp), %rax
	movq	$.LC15, (%rax)
	jmp	.L69
.L68:
	cmpl	$47, -12(%rbp)
	jle	.L69
	cmpl	$122, -12(%rbp)
	jg	.L69
	movl	-12(%rbp), %eax
	subl	$48, %eax
	cltq
	movzwl	escapes(%rax,%rax), %eax
	cwtl
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L70
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L69
.L70:
	movl	-12(%rbp), %eax
	subl	$48, %eax
	cmpl	$72, %eax
	ja	.L71
	movl	%eax, %eax
	movq	.L73(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L73:
	.quad	.L72
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L75
	.quad	.L71
	.quad	.L75
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L75
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L76
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L75
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L71
	.quad	.L75
	.quad	.L71
	.quad	.L71
	.quad	.L77
	.text
.L75:
	movq	-48(%rbp), %rax
	movq	$.LC16, (%rax)
	jmp	.L69
.L74:
	cmpl	$0, -60(%rbp)
	jne	.L78
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	subl	$48, -12(%rbp)
	jmp	.L79
.L80:
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -12(%rbp)
.L79:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L80
	cmpl	$9, -12(%rbp)
	jle	.L81
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.L82
.L81:
	movl	$-20, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L69
.L82:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L78:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$55, -12(%rbp)
	jle	.L72
	subq	$1, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L69
.L72:
	subl	$48, -12(%rbp)
	jmp	.L83
.L85:
	movl	-12(%rbp), %eax
	leal	0(,%rax,8), %edx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -12(%rbp)
.L83:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cmpl	$1, %eax
	jg	.L84
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jbe	.L84
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jbe	.L85
.L84:
	andl	$255, -12(%rbp)
	jmp	.L69
.L77:
	movl	$0, -12(%rbp)
	jmp	.L86
.L91:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$96, -20(%rbp)
	jle	.L87
	subl	$32, -20(%rbp)
.L87:
	movl	-12(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	cmpl	$64, -20(%rbp)
	jg	.L88
	movl	$48, %edx
	jmp	.L89
.L88:
	movl	$55, %edx
.L89:
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
.L86:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cmpl	$1, %eax
	jg	.L90
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L91
.L90:
	jmp	.L69
.L76:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L92
	movq	-48(%rbp), %rax
	movq	$.LC17, (%rax)
	movl	$0, %eax
	jmp	.L93
.L92:
	cmpl	$96, -12(%rbp)
	jle	.L94
	cmpl	$122, -12(%rbp)
	jg	.L94
	subl	$32, -12(%rbp)
.L94:
	xorl	$64, -12(%rbp)
	jmp	.L69
.L71:
	movl	-56(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L95
	movq	-48(%rbp), %rax
	movq	$.LC18, (%rax)
	nop
.L95:
	nop
.L69:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
.L93:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	check_escape, .-check_escape
	.type	is_counted_repeat, @function
is_counted_repeat:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	jmp	.L99
.L100:
	addq	$1, -8(%rbp)
.L99:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L100
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	jne	.L101
	movl	$1, %eax
	jmp	.L98
.L101:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L102
	movl	$0, %eax
	jmp	.L98
.L102:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	jne	.L103
	movl	$1, %eax
	jmp	.L98
.L103:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L98
.L104:
	jmp	.L105
.L106:
	addq	$1, -8(%rbp)
.L105:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L106
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	sete	%al
	movzbl	%al, %eax
.L98:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	is_counted_repeat, .-is_counted_repeat
	.section	.rodata
	.align 8
.LC19:
	.string	"number too big in {} quantifier"
	.align 8
.LC20:
	.string	"numbers out of order in {} quantifier"
	.text
	.type	read_repeat_counts, @function
read_repeat_counts:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	$-1, -8(%rbp)
	jmp	.L108
.L109:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -4(%rbp)
.L108:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L109
	cmpl	$0, -4(%rbp)
	js	.L110
	cmpl	$65535, -4(%rbp)
	jle	.L111
.L110:
	movq	-48(%rbp), %rax
	movq	$.LC19, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L112
.L111:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	jne	.L113
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L114
.L113:
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	je	.L114
	movl	$0, -8(%rbp)
	jmp	.L115
.L116:
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -8(%rbp)
.L115:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L116
	cmpl	$0, -8(%rbp)
	js	.L117
	cmpl	$65535, -8(%rbp)
	jle	.L118
.L117:
	movq	-48(%rbp), %rax
	movq	$.LC19, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L112
.L118:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L114
	movq	-48(%rbp), %rax
	movq	$.LC20, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L112
.L114:
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
.L112:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	read_repeat_counts, .-read_repeat_counts
	.type	first_significant_code, @function
first_significant_code:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
.L130:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$3, %eax
	cmpl	$76, %eax
	ja	.L120
	movl	%eax, %eax
	movq	.L122(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L122:
	.quad	.L121
	.quad	.L121
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L123
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L124
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L124
	.quad	.L120
	.quad	.L120
	.quad	.L124
	.text
.L123:
	cmpl	$0, -20(%rbp)
	jle	.L126
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	xorl	%edx, %eax
	andl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L126
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L126:
	addq	$2, -8(%rbp)
	jmp	.L127
.L125:
	cmpl	$0, -24(%rbp)
	jne	.L128
	movq	-8(%rbp), %rax
	jmp	.L129
.L128:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L128
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	OP_lengths(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, -8(%rbp)
	jmp	.L127
.L121:
	cmpl	$0, -24(%rbp)
	jne	.L124
	movq	-8(%rbp), %rax
	jmp	.L129
.L124:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	OP_lengths(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, -8(%rbp)
	jmp	.L127
.L120:
	movq	-8(%rbp), %rax
	jmp	.L129
.L127:
	jmp	.L130
.L129:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	first_significant_code, .-first_significant_code
	.type	find_fixedlength, @function
find_fixedlength:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	$-1, -36(%rbp)
	movl	$0, %r12d
	movq	-56(%rbp), %rax
	leaq	3(%rax), %rbx
.L159:
	movzbl	(%rbx), %eax
	movzbl	%al, %r13d
	cmpl	$79, %r13d
	jle	.L132
	movl	$80, %r13d
.L132:
	cmpl	$80, %r13d
	ja	.L133
	movl	%r13d, %eax
	movq	.L135(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L135:
	.quad	.L134
	.quad	.L136
	.quad	.L136
	.quad	.L136
	.quad	.L136
	.quad	.L137
	.quad	.L137
	.quad	.L137
	.quad	.L137
	.quad	.L137
	.quad	.L137
	.quad	.L137
	.quad	.L138
	.quad	.L139
	.quad	.L139
	.quad	.L133
	.quad	.L136
	.quad	.L136
	.quad	.L136
	.quad	.L136
	.quad	.L136
	.quad	.L140
	.quad	.L140
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L141
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L142
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L143
	.quad	.L143
	.quad	.L133
	.quad	.L133
	.quad	.L133
	.quad	.L136
	.quad	.L134
	.quad	.L134
	.quad	.L134
	.quad	.L134
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L136
	.quad	.L145
	.quad	.L145
	.quad	.L136
	.quad	.L133
	.quad	.L133
	.quad	.L136
	.quad	.L145
	.text
.L145:
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	find_fixedlength
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jns	.L146
	movl	-40(%rbp), %eax
	jmp	.L147
.L146:
	movl	-40(%rbp), %eax
	addl	%r12d, %eax
	movl	%eax, %r12d
.L148:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L148
	addq	$3, %rbx
	jmp	.L149
.L134:
	cmpl	$0, -36(%rbp)
	jns	.L150
	movl	%r12d, -36(%rbp)
	jmp	.L151
.L150:
	cmpl	%r12d, -36(%rbp)
	je	.L151
	movl	$-1, %eax
	jmp	.L147
.L151:
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L152
	movl	-36(%rbp), %eax
	jmp	.L147
.L152:
	addq	$3, %rbx
	movl	$0, %r12d
	jmp	.L149
.L144:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L144
.L136:
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	cltq
	movzbl	OP_lengths(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rbx
	jmp	.L149
.L140:
	addl	$1, %r12d
	addq	$2, %rbx
	jmp	.L149
.L141:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	%eax, %r12d
	addq	$4, %rbx
	jmp	.L149
.L142:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	%eax, %r12d
	addq	$4, %rbx
	jmp	.L149
.L139:
	addq	$1, %rbx
.L137:
	addl	$1, %r12d
	addq	$1, %rbx
	jmp	.L149
.L138:
	movl	$-2, %eax
	jmp	.L147
.L143:
	addq	$33, %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	subl	$51, %eax
	cmpl	$7, %eax
	ja	.L153
	movl	%eax, %eax
	movq	.L155(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L155:
	.quad	.L154
	.quad	.L154
	.quad	.L153
	.quad	.L153
	.quad	.L154
	.quad	.L154
	.quad	.L156
	.quad	.L156
	.text
.L154:
	movl	$-1, %eax
	jmp	.L147
.L156:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	leaq	3(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	cmpl	%eax, %edx
	je	.L157
	movl	$-1, %eax
	jmp	.L147
.L157:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	%eax, %r12d
	addq	$5, %rbx
	nop
	jmp	.L149
.L153:
	addl	$1, %r12d
	jmp	.L149
.L133:
	movl	$-1, %eax
	jmp	.L147
.L149:
	jmp	.L159
.L147:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	find_fixedlength, .-find_fixedlength
	.type	find_bracket, @function
find_bracket:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
.L167:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	testl	%ebx, %ebx
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	cmpl	$80, %ebx
	jle	.L163
	leal	-80(%rbx), %eax
	movl	%eax, -12(%rbp)
	cmpl	$100, -12(%rbp)
	jle	.L164
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
.L164:
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.L165
	movq	-32(%rbp), %rax
	jmp	.L162
.L165:
	movl	$3, %eax
	movzbl	%al, %eax
	addq	%rax, -32(%rbp)
	jmp	.L166
.L163:
	movslq	%ebx, %rax
	movzbl	OP_lengths(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, -32(%rbp)
.L166:
	jmp	.L167
.L162:
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	find_bracket, .-find_bracket
	.type	find_recurse, @function
find_recurse:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
.L174:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	testl	%ebx, %ebx
	jne	.L169
	movl	$0, %eax
	jmp	.L170
.L169:
	cmpl	$63, %ebx
	jne	.L171
	movq	-16(%rbp), %rax
	jmp	.L170
.L171:
	cmpl	$80, %ebx
	jle	.L172
	movl	$3, %eax
	movzbl	%al, %eax
	addq	%rax, -16(%rbp)
	jmp	.L173
.L172:
	movslq	%ebx, %rax
	movzbl	OP_lengths(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, -16(%rbp)
.L173:
	jmp	.L174
.L170:
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	find_recurse, .-find_recurse
	.type	could_be_empty_branch, @function
could_be_empty_branch:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	first_significant_code
	movq	%rax, -40(%rbp)
	jmp	.L176
.L194:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	cmpl	$79, %ebx
	jle	.L177
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L178
	movl	$1, %eax
	jmp	.L179
.L178:
	movl	$0, -20(%rbp)
.L181:
	cmpl	$0, -20(%rbp)
	jne	.L180
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	could_be_empty_branch
	testl	%eax, %eax
	je	.L180
	movl	$1, -20(%rbp)
.L180:
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L181
	cmpl	$0, -20(%rbp)
	jne	.L182
	movl	$0, %eax
	jmp	.L179
.L182:
	addq	$3, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	jmp	.L183
.L177:
	leal	-5(%rbx), %eax
	cmpl	$63, %eax
	ja	.L183
	movl	%eax, %eax
	movq	.L185(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L185:
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L184
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L184
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L184
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L184
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L186
	.quad	.L186
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L183
	.quad	.L187
	.quad	.L187
	.quad	.L187
	.quad	.L187
	.text
.L186:
	movq	-40(%rbp), %rax
	addq	$33, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$51, %eax
	cmpl	$7, %eax
	ja	.L188
	movl	%eax, %eax
	movq	.L190(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L190:
	.quad	.L195
	.quad	.L195
	.quad	.L188
	.quad	.L188
	.quad	.L195
	.quad	.L195
	.quad	.L191
	.quad	.L191
	.text
.L188:
	movl	$0, %eax
	jmp	.L179
.L191:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jle	.L193
	movl	$0, %eax
	jmp	.L179
.L193:
	jmp	.L192
.L195:
	nop
.L192:
	jmp	.L183
.L184:
	movl	$0, %eax
	jmp	.L179
.L187:
	movl	$1, %eax
	jmp	.L179
.L183:
	movslq	%ebx, %rax
	movzbl	OP_lengths(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	first_significant_code
	movq	%rax, -40(%rbp)
.L176:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L194
	movl	$1, %eax
.L179:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	could_be_empty_branch, .-could_be_empty_branch
	.type	could_be_empty, @function
could_be_empty:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	jmp	.L197
.L201:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	could_be_empty_branch
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L199
.L198:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L197:
	cmpq	$0, -24(%rbp)
	je	.L200
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L201
.L200:
	movl	$1, %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	could_be_empty, .-could_be_empty
	.type	check_posix_syntax, @function
check_posix_syntax:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L203
	addq	$1, -24(%rbp)
.L203:
	jmp	.L204
.L205:
	addq	$1, -24(%rbp)
.L204:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L205
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	jne	.L206
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L206
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L207
.L206:
	movl	$0, %eax
.L207:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	check_posix_syntax, .-check_posix_syntax
	.type	check_posix_name, @function
check_posix_name:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, %ebx
	jmp	.L209
.L212:
	movslq	%ebx, %rax
	movzbl	posix_name_lengths(%rax), %eax
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L210
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	movq	posix_names(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L210
	movl	%ebx, %eax
	jmp	.L211
.L210:
	addl	$1, %ebx
.L209:
	movslq	%ebx, %rax
	movzbl	posix_name_lengths(%rax), %eax
	testb	%al, %al
	jne	.L212
	movl	$-1, %eax
.L211:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	check_posix_name, .-check_posix_name
	.type	adjust_recurse, @function
adjust_recurse:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L214
.L216:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jb	.L215
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movl	-12(%rbp), %ecx
	movl	-28(%rbp), %edx
	addl	%ecx, %edx
	sarl	$8, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movl	-12(%rbp), %edx
	movl	%edx, %ecx
	movl	-28(%rbp), %edx
	addl	%ecx, %edx
	movb	%dl, (%rax)
.L215:
	addq	$3, -8(%rbp)
.L214:
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	find_recurse
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L216
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	adjust_recurse, .-adjust_recurse
	.type	auto_callout, @function
auto_callout:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$64, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$-1, (%rax)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$8, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movb	%al, (%rdx)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	auto_callout, .-auto_callout
	.type	complete_callout, @function
complete_callout:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movl	-4(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	complete_callout, .-complete_callout
	.section	.rodata
	.align 8
.LC21:
	.string	"POSIX named classes are supported only within a class"
	.align 8
.LC22:
	.string	"POSIX collating elements are not supported"
.LC23:
	.string	"unknown POSIX class name"
	.align 8
.LC24:
	.string	"invalid escape sequence in character class"
.LC25:
	.string	"nothing to repeat"
	.align 8
.LC26:
	.string	"internal error: unexpected repeat"
.LC27:
	.string	"invalid condition (?(0)"
.LC28:
	.string	"number after (?C is > 255"
	.align 8
.LC29:
	.string	"two named groups have the same name"
	.align 8
.LC30:
	.string	"reference to non-existent subpattern"
	.align 8
.LC31:
	.string	"recursive call could loop indefinitely"
	.align 8
.LC32:
	.string	"conditional group contains more than two branches"
.LC33:
	.string	"missing )"
	.text
	.type	compile_branch, @function
compile_branch:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$488, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -472(%rbp)
	movq	%rsi, -480(%rbp)
	movq	%rdx, -488(%rbp)
	movq	%rcx, -496(%rbp)
	movq	%r8, -504(%rbp)
	movq	%r9, -512(%rbp)
	movl	$0, -364(%rbp)
	movl	$0, -368(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -76(%rbp)
	movq	-472(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rbx
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -236(%rbp)
	movl	-80(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	$-2, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L221
	movl	$256, %eax
	jmp	.L222
.L221:
	movl	$0, %eax
.L222:
	movl	%eax, -72(%rbp)
.L518:
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	cmpl	$0, -88(%rbp)
	je	.L223
	testl	%r12d, %r12d
	je	.L223
	cmpl	$92, %r12d
	jne	.L224
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L224
	movl	$0, -88(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L516
.L224:
	cmpq	$0, -112(%rbp)
	je	.L226
	movq	-384(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	complete_callout
	movq	$0, -112(%rbp)
.L226:
	movl	-80(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L227
	movq	%rbx, -112(%rbp)
	movq	-384(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	auto_callout
	movq	%rax, %rbx
	jmp	.L228
.L227:
	jmp	.L228
.L223:
	cmpl	$42, %r12d
	je	.L229
	cmpl	$43, %r12d
	je	.L229
	cmpl	$63, %r12d
	je	.L229
	cmpl	$123, %r12d
	jne	.L230
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	is_counted_repeat
	testl	%eax, %eax
	je	.L230
.L229:
	movl	$1, %eax
	jmp	.L231
.L230:
	movl	$0, %eax
.L231:
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	jne	.L232
	cmpq	$0, -112(%rbp)
	je	.L232
	movl	-84(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -84(%rbp)
	testl	%eax, %eax
	jg	.L232
	movq	-384(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	complete_callout
	movq	$0, -112(%rbp)
.L232:
	movl	-80(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L233
	movq	32(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%r12d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L234
	jmp	.L516
.L234:
	cmpl	$35, %r12d
	jne	.L233
	nop
.L236:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	testl	%r12d, %r12d
	je	.L235
	cmpl	$10, %r12d
	jne	.L236
.L235:
	testl	%r12d, %r12d
	je	.L233
	jmp	.L516
.L233:
	movl	-80(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L237
	cmpl	$0, -240(%rbp)
	jne	.L237
	movq	%rbx, -112(%rbp)
	movq	-384(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	auto_callout
	movq	%rax, %rbx
.L237:
	cmpl	$124, %r12d
	ja	.L228
	movl	%r12d, %eax
	movq	.L239(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L239:
	.quad	.L238
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L240
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L241
	.quad	.L238
	.quad	.L242
	.quad	.L243
	.quad	.L228
	.quad	.L228
	.quad	.L244
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L245
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L246
	.quad	.L247
	.quad	.L228
	.quad	.L248
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L228
	.quad	.L249
	.quad	.L238
	.text
.L238:
	movq	-512(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	movq	-488(%rbp), %rax
	movq	%rbx, (%rax)
	movq	-384(%rbp), %rdx
	movq	-496(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L519
.L248:
	movl	-80(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L251
	cmpl	$-2, -56(%rbp)
	jne	.L251
	movl	$-1, -56(%rbp)
.L251:
	movq	$0, -104(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$19, (%rax)
	jmp	.L252
.L240:
	movq	$0, -104(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$20, (%rax)
	jmp	.L252
.L244:
	cmpl	$-2, -56(%rbp)
	jne	.L253
	movl	$-1, -56(%rbp)
.L253:
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$11, (%rax)
	jmp	.L252
.L246:
	movq	%rbx, -104(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L254
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L254
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L255
.L254:
	movq	-384(%rbp), %rax
	movq	32(%rbp), %rdx
	leaq	-392(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_posix_syntax
	testl	%eax, %eax
	je	.L255
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L256
	movl	$.LC21, %edx
	jmp	.L257
.L256:
	movl	$.LC22, %edx
.L257:
	movq	-504(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L517
.L255:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	cmpl	$94, %r12d
	jne	.L259
	movl	$1, -116(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	jmp	.L260
.L259:
	movl	$0, -116(%rbp)
.L260:
	movl	$0, -124(%rbp)
	movl	$-1, -128(%rbp)
	leaq	-432(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
.L320:
	cmpl	$0, -88(%rbp)
	je	.L261
	cmpl	$92, %r12d
	jne	.L262
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L262
	movl	$0, -88(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L263
.L261:
	cmpl	$91, %r12d
	jne	.L264
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L265
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L265
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L264
.L265:
	movq	-384(%rbp), %rax
	movq	32(%rbp), %rdx
	leaq	-392(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_posix_syntax
	testl	%eax, %eax
	je	.L264
	movl	$0, -148(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %r13
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L266
	movq	-504(%rbp), %rax
	movq	$.LC22, (%rax)
	jmp	.L517
.L266:
	movq	-384(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L267
	movl	$1, -148(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
.L267:
	movq	-392(%rbp), %rax
	movq	%rax, %rdx
	movq	-384(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-384(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_posix_name
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	jns	.L268
	movq	-504(%rbp), %rax
	movq	$.LC23, (%rax)
	jmp	.L517
.L268:
	movl	-80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L269
	cmpl	$2, -152(%rbp)
	jg	.L269
	movl	$0, -152(%rbp)
.L269:
	movl	-152(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -152(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L270
.L284:
	movq	-384(%rbp), %rax
	movl	$5, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -244(%rbp)
	movl	-152(%rbp), %edx
	movl	-156(%rbp), %eax
	addl	%edx, %eax
	cltq
	movl	posix_class_maps(,%rax,4), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	jns	.L271
	jmp	.L272
.L271:
	cmpl	$0, -148(%rbp)
	je	.L273
	cmpl	$0, -156(%rbp)
	jne	.L274
	movl	$0, %r12d
	jmp	.L275
.L276:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %edx
	movl	-248(%rbp), %eax
	addl	%r12d, %eax
	cltq
	addq	%r13, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%edx, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L275:
	cmpl	$31, %r12d
	jle	.L276
	jmp	.L277
.L274:
	movl	$0, %r12d
	jmp	.L278
.L279:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %edx
	movl	-248(%rbp), %eax
	addl	%r12d, %eax
	cltq
	addq	%r13, %rax
	movzbl	(%rax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L278:
	cmpl	$31, %r12d
	jle	.L279
.L277:
	cmpl	$0, -244(%rbp)
	je	.L281
	movzbl	-431(%rbp), %eax
	orl	$60, %eax
	movb	%al, -431(%rbp)
	jmp	.L281
.L273:
	movl	$0, %r12d
	jmp	.L282
.L283:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %edx
	movl	-248(%rbp), %eax
	addl	%r12d, %eax
	cltq
	addq	%r13, %rax
	movzbl	(%rax), %eax
	orl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L282:
	cmpl	$31, %r12d
	jle	.L283
	cmpl	$0, -244(%rbp)
	je	.L281
	movzbl	-431(%rbp), %eax
	andl	$-61, %eax
	movb	%al, -431(%rbp)
.L281:
	addl	$1, -156(%rbp)
.L270:
	cmpl	$2, -156(%rbp)
	jle	.L284
.L272:
	movq	-392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movl	$10, -124(%rbp)
	jmp	.L263
.L264:
	cmpl	$92, %r12d
	jne	.L285
	movq	-480(%rbp), %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %ecx
	movq	-504(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	check_escape
	movl	%eax, %r12d
	cmpl	$-4, %r12d
	jne	.L286
	movl	$8, %r12d
	jmp	.L287
.L286:
	cmpl	$-15, %r12d
	jne	.L288
	movl	$88, %r12d
	jmp	.L287
.L288:
	cmpl	$-19, %r12d
	jne	.L287
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L289
	movq	-384(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L289
	movq	-384(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -384(%rbp)
	jmp	.L263
.L289:
	movl	$1, -88(%rbp)
	jmp	.L263
.L287:
	testl	%r12d, %r12d
	jns	.L285
	movq	32(%rbp), %rax
	movq	16(%rax), %r13
	addl	$2, -124(%rbp)
	movl	%r12d, %eax
	negl	%eax
	subl	$5, %eax
	cmpl	$5, %eax
	ja	.L291
	movl	%eax, %eax
	movq	.L293(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L293:
	.quad	.L292
	.quad	.L294
	.quad	.L295
	.quad	.L296
	.quad	.L297
	.quad	.L298
	.text
.L294:
	movl	$0, %r12d
	jmp	.L299
.L300:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %edx
	movslq	%r12d, %rax
	addq	$64, %rax
	addq	%r13, %rax
	movzbl	(%rax), %eax
	orl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L299:
	cmpl	$31, %r12d
	jle	.L300
	jmp	.L263
.L292:
	movl	$0, %r12d
	jmp	.L301
.L302:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	addq	$64, %rax
	addq	%r13, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%edx, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L301:
	cmpl	$31, %r12d
	jle	.L302
	jmp	.L263
.L298:
	movl	$0, %r12d
	jmp	.L303
.L304:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %edx
	movslq	%r12d, %rax
	addq	$160, %rax
	addq	%r13, %rax
	movzbl	(%rax), %eax
	orl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L303:
	cmpl	$31, %r12d
	jle	.L304
	jmp	.L263
.L297:
	movl	$0, %r12d
	jmp	.L305
.L306:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	addq	$160, %rax
	addq	%r13, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%edx, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L305:
	cmpl	$31, %r12d
	jle	.L306
	jmp	.L263
.L296:
	movl	$0, %r12d
	jmp	.L307
.L308:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %edx
	movslq	%r12d, %rax
	addq	%r13, %rax
	movzbl	(%rax), %eax
	orl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L307:
	cmpl	$31, %r12d
	jle	.L308
	movzbl	-431(%rbp), %eax
	andl	$-9, %eax
	movb	%al, -431(%rbp)
	jmp	.L263
.L295:
	movl	$0, %r12d
	jmp	.L309
.L310:
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	addq	%r13, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%edx, %eax
	movl	%eax, %edx
	movslq	%r12d, %rax
	movb	%dl, -432(%rbp,%rax)
	addl	$1, %r12d
.L309:
	cmpl	$31, %r12d
	jle	.L310
	movzbl	-431(%rbp), %eax
	orl	$8, %eax
	movb	%al, -431(%rbp)
	jmp	.L263
.L291:
	movl	-80(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L311
	movq	-504(%rbp), %rax
	movq	$.LC24, (%rax)
	jmp	.L517
.L311:
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	subl	$2, -124(%rbp)
.L285:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L262
	movq	-384(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	je	.L262
	movq	-384(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -160(%rbp)
	cmpl	$92, -160(%rbp)
	jne	.L312
	movq	-384(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-480(%rbp), %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %ecx
	movq	-504(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	check_escape
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jns	.L312
	cmpl	$-4, -160(%rbp)
	jne	.L313
	movl	$8, -160(%rbp)
	jmp	.L312
.L313:
	cmpl	$-15, -160(%rbp)
	jne	.L314
	movl	$88, -160(%rbp)
	jmp	.L312
.L314:
	movq	-256(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -384(%rbp)
	jmp	.L262
.L312:
	cmpl	%r12d, -160(%rbp)
	jne	.L315
	jmp	.L262
.L315:
	jmp	.L316
.L318:
	movl	%r12d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movslq	%edx, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %esi
	movl	%r12d, %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movl	%eax, %ecx
	movslq	%edx, %rax
	movb	%cl, -432(%rbp,%rax)
	movl	-80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L317
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movslq	%r12d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -260(%rbp)
	movl	-260(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movslq	%edx, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %esi
	movl	-260(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movl	%eax, %ecx
	movslq	%edx, %rax
	movb	%cl, -432(%rbp,%rax)
.L317:
	addl	$1, -124(%rbp)
	movl	%r12d, -128(%rbp)
	addl	$1, %r12d
.L316:
	cmpl	-160(%rbp), %r12d
	jle	.L318
	jmp	.L263
.L262:
	movl	%r12d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movslq	%edx, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %esi
	movl	%r12d, %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movl	%eax, %ecx
	movslq	%edx, %rax
	movb	%cl, -432(%rbp,%rax)
	movl	-80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L319
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movslq	%r12d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movl	%r12d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movslq	%edx, %rax
	movzbl	-432(%rbp,%rax), %eax
	movl	%eax, %esi
	movl	%r12d, %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movl	%eax, %ecx
	movslq	%edx, %rax
	movb	%cl, -432(%rbp,%rax)
.L319:
	addl	$1, -124(%rbp)
	movl	%r12d, -128(%rbp)
.L263:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	cmpl	$93, %r12d
	jne	.L320
	cmpl	$0, -88(%rbp)
	jne	.L320
	cmpl	$1, -124(%rbp)
	jne	.L321
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L322
	cmpl	$-2, -56(%rbp)
	jne	.L323
	movl	$-1, -56(%rbp)
.L323:
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$23, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-128(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L252
.L322:
	movl	-128(%rbp), %eax
	movb	%al, -448(%rbp)
	movl	$1, -144(%rbp)
	jmp	.L324
.L321:
	cmpl	$-2, -56(%rbp)
	jne	.L325
	movl	$-1, -56(%rbp)
.L325:
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L326
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$60, (%rax)
	movl	$0, %r12d
	jmp	.L327
.L328:
	movslq	%r12d, %rax
	leaq	(%rbx,%rax), %rdx
	movslq	%r12d, %rax
	movzbl	-432(%rbp,%rax), %eax
	notl	%eax
	movb	%al, (%rdx)
	addl	$1, %r12d
.L327:
	cmpl	$31, %r12d
	jle	.L328
	jmp	.L329
.L326:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$59, (%rax)
	movq	-432(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-408(%rbp), %rax
	movq	%rax, 24(%rbx)
.L329:
	addq	$32, %rbx
	jmp	.L252
.L249:
	cmpl	$0, -240(%rbp)
	jne	.L330
	jmp	.L228
.L330:
	movq	-384(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-504(%rbp), %rcx
	leaq	-368(%rbp), %rdx
	leaq	-364(%rbp), %rax
	movq	%rax, %rsi
	call	read_repeat_counts
	movq	%rax, -384(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L331
	jmp	.L517
.L331:
	jmp	.L332
.L242:
	movl	$0, -364(%rbp)
	movl	$-1, -368(%rbp)
	jmp	.L332
.L243:
	movl	$1, -364(%rbp)
	movl	$-1, -368(%rbp)
	jmp	.L332
.L245:
	movl	$0, -364(%rbp)
	movl	$1, -368(%rbp)
.L332:
	cmpq	$0, -104(%rbp)
	jne	.L333
	movq	-504(%rbp), %rax
	movq	$.LC25, (%rax)
	jmp	.L517
.L333:
	movl	-364(%rbp), %eax
	testl	%eax, %eax
	jne	.L334
	movl	-68(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -60(%rbp)
.L334:
	movl	-364(%rbp), %edx
	movl	-368(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L335
	movl	$0, %eax
	jmp	.L336
.L335:
	movl	$512, %eax
.L336:
	movl	%eax, -264(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L337
	movl	$0, -36(%rbp)
	movl	$1, -120(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L338
.L337:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L339
	movl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L338
.L339:
	movl	-48(%rbp), %eax
	movl	%eax, -36(%rbp)
.L338:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L340
	movq	-104(%rbp), %rax
	leaq	3(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove
	addq	$3, %rbx
	movq	-104(%rbp), %rax
	movb	$80, (%rax)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rbx, %rcx
	movq	-104(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$8, %rdx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	addq	$2, %rax
	movq	%rbx, %rcx
	movq	-104(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	%dl, (%rax)
	movb	$66, (%rbx)
	leaq	1(%rbx), %rax
	movq	%rbx, %rcx
	movq	-104(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$8, %rdx
	movb	%dl, (%rax)
	leaq	2(%rbx), %rax
	movq	%rbx, %rcx
	movq	-104(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	%dl, (%rax)
	addq	$3, %rbx
.L340:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$21, %al
	je	.L341
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$22, %al
	jne	.L342
.L341:
	leaq	-1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movl	-364(%rbp), %eax
	cmpl	$1, %eax
	jle	.L343
	movl	%r12d, %edx
	orl	-72(%rbp), %edx
	movq	32(%rbp), %rax
	movl	72(%rax), %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L344
.L343:
	jmp	.L344
.L342:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$23, %al
	jne	.L345
	movl	$9, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	jmp	.L344
.L345:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$15, %al
	ja	.L346
	movl	$18, -40(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
.L344:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$14, %al
	je	.L347
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L348
.L347:
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	jmp	.L349
.L348:
	movl	$-1, %eax
.L349:
	movl	%eax, -296(%rbp)
	movq	%rbx, -304(%rbp)
	movq	-104(%rbp), %rbx
	movl	-368(%rbp), %eax
	testl	%eax, %eax
	jne	.L350
	jmp	.L351
.L350:
	movl	-368(%rbp), %eax
	cmpl	$1, %eax
	je	.L352
	movq	32(%rbp), %rax
	movl	$1, 76(%rax)
.L352:
	movl	-40(%rbp), %eax
	addl	%eax, -36(%rbp)
	movl	-364(%rbp), %eax
	testl	%eax, %eax
	jne	.L353
	movl	-368(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L354
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$24, %edx
	movb	%dl, (%rax)
	jmp	.L357
.L354:
	movl	-368(%rbp), %eax
	cmpl	$1, %eax
	jne	.L356
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$28, %edx
	movb	%dl, (%rax)
	jmp	.L357
.L356:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$30, %edx
	movb	%dl, (%rax)
	movl	-368(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-368(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	jmp	.L357
.L353:
	movl	-364(%rbp), %eax
	cmpl	$1, %eax
	jne	.L358
	movl	-368(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L359
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$26, %edx
	movb	%dl, (%rax)
	jmp	.L357
.L359:
	movq	-304(%rbp), %rbx
	movl	-368(%rbp), %eax
	cmpl	$1, %eax
	jne	.L361
	jmp	.L351
.L361:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$30, %edx
	movb	%dl, (%rax)
	movl	-368(%rbp), %eax
	subl	$1, %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-368(%rbp), %edx
	subl	$1, %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	jmp	.L357
.L358:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-40(%rbp), %edx
	addl	$32, %edx
	movb	%dl, (%rax)
	movl	-364(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-364(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	movl	-368(%rbp), %eax
	testl	%eax, %eax
	jns	.L362
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	cmpl	$0, -296(%rbp)
	js	.L363
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-296(%rbp), %edx
	movb	%dl, (%rax)
.L363:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$24, %edx
	movb	%dl, (%rax)
	jmp	.L357
.L362:
	movl	-368(%rbp), %edx
	movl	-364(%rbp), %eax
	cmpl	%eax, %edx
	je	.L357
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	cmpl	$0, -296(%rbp)
	js	.L364
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-296(%rbp), %edx
	movb	%dl, (%rax)
.L364:
	movl	-368(%rbp), %edx
	movl	-364(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -368(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$30, %edx
	movb	%dl, (%rax)
	movl	-368(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-368(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
.L357:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	movb	%dl, (%rax)
	jmp	.L365
.L346:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L366
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	je	.L366
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L367
.L366:
	movl	-368(%rbp), %eax
	testl	%eax, %eax
	jne	.L368
	movq	-104(%rbp), %rbx
	jmp	.L351
.L368:
	movl	-368(%rbp), %eax
	cmpl	$1, %eax
	je	.L369
	movq	32(%rbp), %rax
	movl	$1, 76(%rax)
.L369:
	movl	-364(%rbp), %eax
	testl	%eax, %eax
	jne	.L370
	movl	-368(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L370
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$51, %edx
	movb	%dl, (%rax)
	jmp	.L371
.L370:
	movl	-364(%rbp), %eax
	cmpl	$1, %eax
	jne	.L372
	movl	-368(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L372
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$53, %edx
	movb	%dl, (%rax)
	jmp	.L371
.L372:
	movl	-364(%rbp), %eax
	testl	%eax, %eax
	jne	.L373
	movl	-368(%rbp), %eax
	cmpl	$1, %eax
	jne	.L373
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$55, %edx
	movb	%dl, (%rax)
	jmp	.L371
.L373:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$57, %edx
	movb	%dl, (%rax)
	movl	-364(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-364(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	movl	-368(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L374
	movl	$0, -368(%rbp)
.L374:
	movl	-368(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-368(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	jmp	.L365
.L371:
	jmp	.L365
.L367:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$79, %al
	ja	.L375
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$74, %al
	je	.L375
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$75, %al
	jne	.L376
.L375:
	movl	$0, -164(%rbp)
	movq	%rbx, %rdx
	movq	-104(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -268(%rbp)
	movq	$0, -176(%rbp)
	movl	-368(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L377
	movq	-104(%rbp), %r12
.L378:
	leaq	1(%r12), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%r12), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %r12
	movzbl	(%r12), %eax
	cmpb	$66, %al
	jne	.L378
	movq	%rbx, %rdx
	movq	%r12, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -164(%rbp)
.L377:
	movl	-364(%rbp), %eax
	testl	%eax, %eax
	jne	.L379
	movl	-368(%rbp), %eax
	testl	%eax, %eax
	jne	.L380
	movq	-104(%rbp), %rbx
	jmp	.L351
.L380:
	movl	-368(%rbp), %eax
	cmpl	$1, %eax
	jg	.L381
	movb	$0, (%rbx)
	movq	32(%rbp), %rcx
	movl	-236(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	adjust_recurse
	movl	-268(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove
	addq	$1, %rbx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	-36(%rbp), %edx
	addl	$77, %edx
	movb	%dl, (%rax)
	jmp	.L382
.L381:
	movb	$0, (%rbx)
	movq	32(%rbp), %rcx
	movl	-236(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	adjust_recurse
	movl	-268(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove
	addq	$4, %rbx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movl	-36(%rbp), %edx
	addl	$77, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movb	$80, (%rax)
	cmpq	$0, -176(%rbp)
	je	.L383
	movq	-104(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L384
.L383:
	movl	$0, %eax
.L384:
	movl	%eax, -272(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-272(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movl	-272(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, -104(%rbp)
.L382:
	movl	-368(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -368(%rbp)
	jmp	.L385
.L379:
	movl	-364(%rbp), %eax
	cmpl	$1, %eax
	jle	.L386
	cmpl	$0, -92(%rbp)
	je	.L387
	cmpl	$0, -60(%rbp)
	jns	.L387
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
.L387:
	movl	$1, %r12d
	jmp	.L388
.L389:
	movl	-268(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	memcpy
	movl	-268(%rbp), %eax
	cltq
	addq	%rax, %rbx
	addl	$1, %r12d
.L388:
	movl	-364(%rbp), %eax
	cmpl	%eax, %r12d
	jl	.L389
.L386:
	movl	-368(%rbp), %eax
	testl	%eax, %eax
	jle	.L385
	movl	-368(%rbp), %edx
	movl	-364(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -368(%rbp)
.L385:
	movl	-368(%rbp), %eax
	testl	%eax, %eax
	js	.L390
	movl	-368(%rbp), %eax
	leal	-1(%rax), %r12d
	jmp	.L391
.L395:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-36(%rbp), %edx
	addl	$77, %edx
	movb	%dl, (%rax)
	testl	%r12d, %r12d
	je	.L392
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$80, (%rax)
	cmpq	$0, -176(%rbp)
	je	.L393
	movq	%rbx, %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L394
.L393:
	movl	$0, %eax
.L394:
	movl	%eax, -276(%rbp)
	movq	%rbx, -176(%rbp)
	movl	-276(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-276(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
.L392:
	movl	-268(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	memcpy
	movl	-268(%rbp), %eax
	cltq
	addq	%rax, %rbx
	subl	$1, %r12d
.L391:
	testl	%r12d, %r12d
	jns	.L395
	jmp	.L396
.L399:
	movq	%rbx, %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
	movl	-280(%rbp), %eax
	cltq
	negq	%rax
	addq	%rbx, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -292(%rbp)
	cmpl	$0, -292(%rbp)
	je	.L397
	movl	-292(%rbp), %eax
	cltq
	negq	%rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L398
.L397:
	movl	$0, %eax
.L398:
	movq	%rax, -176(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$66, (%rax)
	movl	-280(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-280(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	movq	-288(%rbp), %rax
	addq	$1, %rax
	movl	-280(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, (%rax)
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	-280(%rbp), %edx
	movb	%dl, (%rax)
.L396:
	cmpq	$0, -176(%rbp)
	jne	.L399
	jmp	.L365
.L390:
	movl	-164(%rbp), %eax
	negl	%eax
	cltq
	addq	%rbx, %rax
	movl	-36(%rbp), %edx
	addl	$67, %edx
	movb	%dl, (%rax)
	jmp	.L365
.L376:
	movq	-504(%rbp), %rax
	movq	$.LC26, (%rax)
	jmp	.L517
.L365:
	cmpl	$0, -120(%rbp)
	je	.L351
	movq	%rbx, %rdx
	movq	-376(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -308(%rbp)
	movl	-308(%rbp), %eax
	movslq	%eax, %rdx
	movq	-376(%rbp), %rax
	movq	-376(%rbp), %rcx
	addq	$3, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove
	addq	$3, %rbx
	addl	$3, -308(%rbp)
	movq	-376(%rbp), %rax
	movb	$74, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$66, (%rax)
	movl	-308(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-308(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	movq	-376(%rbp), %rax
	addq	$1, %rax
	movl	-308(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, (%rax)
	movq	-376(%rbp), %rax
	addq	$2, %rax
	movl	-308(%rbp), %edx
	movb	%dl, (%rax)
.L351:
	movq	$0, -104(%rbp)
	movq	32(%rbp), %rax
	movl	72(%rax), %eax
	orl	-264(%rbp), %eax
	movl	%eax, %edx
	movq	32(%rbp), %rax
	movl	%edx, 72(%rax)
	jmp	.L252
.L241:
	movl	-80(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$0, -140(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L401
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$33, %eax
	cmpl	$49, %eax
	ja	.L402
	movl	%eax, %eax
	movq	.L404(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L404:
	.quad	.L403
	.quad	.L402
	.quad	.L405
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L406
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L407
	.quad	.L408
	.quad	.L402
	.quad	.L409
	.quad	.L410
	.quad	.L411
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L412
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L402
	.quad	.L413
	.quad	.L402
	.quad	.L414
	.text
.L405:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L415
.L416:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
.L415:
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L416
	jmp	.L516
.L408:
	movl	$80, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L418
.L406:
	movl	$75, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L419
	leaq	3(%rbx), %rax
	movb	$76, (%rax)
	leaq	4(%rbx), %rax
	movb	$-1, (%rax)
	leaq	5(%rbx), %rax
	movb	$-1, (%rax)
	movl	$3, -140(%rbp)
	movq	-384(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -384(%rbp)
	jmp	.L420
.L419:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	testb	%al, %al
	je	.L420
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -188(%rbp)
	jmp	.L421
.L422:
	movl	-188(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -188(%rbp)
.L421:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L422
	cmpl	$0, -188(%rbp)
	jne	.L423
	movq	-504(%rbp), %rax
	movq	$.LC27, (%rax)
	jmp	.L424
.L423:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	leaq	3(%rbx), %rax
	movb	$76, (%rax)
	leaq	4(%rbx), %rax
	movl	-188(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, (%rax)
	leaq	5(%rbx), %rax
	movl	-188(%rbp), %edx
	movb	%dl, (%rax)
	movl	$3, -140(%rbp)
	jmp	.L418
.L420:
	jmp	.L418
.L410:
	movl	$69, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L418
.L403:
	movl	$70, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L418
.L409:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$33, %eax
	je	.L426
	cmpl	$61, %eax
	je	.L427
	jmp	.L418
.L427:
	movl	$71, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L425
.L426:
	movl	$72, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	nop
.L425:
	jmp	.L418
.L411:
	movl	$74, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L418
.L412:
	movq	%rbx, -112(%rbp)
	movl	$1, -84(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$64, (%rax)
	movl	$0, -192(%rbp)
	jmp	.L428
.L429:
	movl	-192(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -192(%rbp)
.L428:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L429
	cmpl	$255, -192(%rbp)
	jle	.L430
	movq	-504(%rbp), %rax
	movq	$.LC28, (%rax)
	jmp	.L424
.L430:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-192(%rbp), %edx
	movb	%dl, (%rax)
	movq	-384(%rbp), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	40(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	sarq	$8, %rax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movq	-384(%rbp), %rdx
	movq	%rdx, %rcx
	movq	32(%rbp), %rdx
	movq	40(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	addl	$1, %edx
	movb	%dl, (%rax)
	leaq	2(%rbx), %rax
	movb	$0, (%rax)
	leaq	3(%rbx), %rax
	movb	$0, (%rax)
	addq	$4, %rbx
	movq	$0, -104(%rbp)
	jmp	.L417
.L413:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L431
	movq	32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -336(%rbp)
	nop
.L432:
	movq	-384(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -384(%rbp)
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L432
	movq	-384(%rbp), %rax
	movq	%rax, %rdx
	movq	-336(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	subl	$1, %eax
	movl	%eax, -340(%rbp)
	movl	$0, -196(%rbp)
	jmp	.L433
.L438:
	movl	-340(%rbp), %eax
	movslq	%eax, %rdx
	movq	-208(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	jne	.L434
	movl	-340(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L435
	movq	-504(%rbp), %rax
	movq	$.LC29, (%rax)
	jmp	.L424
.L435:
	movl	$-1, -212(%rbp)
.L434:
	cmpl	$0, -212(%rbp)
	jns	.L436
	movq	32(%rbp), %rax
	movl	56(%rax), %eax
	subl	-196(%rbp), %eax
	movl	%eax, %edx
	movq	32(%rbp), %rax
	movl	60(%rax), %eax
	imull	%edx, %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	movl	60(%rax), %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rax
	addq	%rax, %rcx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove
	jmp	.L437
.L436:
	movq	32(%rbp), %rax
	movl	60(%rax), %eax
	cltq
	addq	%rax, -208(%rbp)
	addl	$1, -196(%rbp)
.L433:
	movq	32(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	-196(%rbp), %eax
	jg	.L438
.L437:
	movq	-480(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rax
	movb	%dl, (%rax)
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-480(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movb	%al, (%rdx)
	movl	-340(%rbp), %eax
	movslq	%eax, %rdx
	movq	-208(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-336(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movl	-340(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	32(%rbp), %rax
	movl	56(%rax), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, 56(%rax)
	nop
	jmp	.L476
.L431:
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L440
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L441
.L440:
	movq	-384(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -384(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -312(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -224(%rbp)
	jmp	.L442
.L443:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
.L442:
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L443
	movq	-384(%rbp), %rax
	movq	%rax, %rdx
	movq	-320(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -324(%rbp)
	movl	$0, -216(%rbp)
	jmp	.L444
.L447:
	movl	-324(%rbp), %eax
	movslq	%eax, %rdx
	movq	-224(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L445
	jmp	.L446
.L445:
	movq	32(%rbp), %rax
	movl	60(%rax), %eax
	cltq
	addq	%rax, -224(%rbp)
	addl	$1, -216(%rbp)
.L444:
	movq	32(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	-216(%rbp), %eax
	jg	.L447
.L446:
	movq	32(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	-216(%rbp), %eax
	jg	.L448
	movq	-504(%rbp), %rax
	movq	$.LC30, (%rax)
	jmp	.L424
.L448:
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -136(%rbp)
	cmpl	$62, -312(%rbp)
	jne	.L449
	jmp	.L450
.L449:
	movq	%rbx, -104(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$62, (%rax)
	movl	-136(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-136(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	movq	32(%rbp), %rax
	movl	68(%rax), %edx
	cmpl	$31, -136(%rbp)
	jg	.L451
	movl	-136(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	jmp	.L452
.L451:
	movl	$1, %eax
.L452:
	orl	%eax, %edx
	movq	32(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	32(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	-136(%rbp), %eax
	jge	.L453
	movq	32(%rbp), %rax
	movl	-136(%rbp), %edx
	movl	%edx, 64(%rax)
	jmp	.L417
.L453:
	jmp	.L417
.L441:
	jmp	.L418
.L414:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
.L407:
	movl	$0, -136(%rbp)
	jmp	.L454
.L455:
	movl	-136(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-384(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -384(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -136(%rbp)
.L454:
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L455
.L450:
	movq	%rbx, -104(%rbp)
	movb	$0, (%rbx)
	cmpl	$0, -136(%rbp)
	jne	.L456
	movq	32(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L457
.L456:
	movq	32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-136(%rbp), %edx
	movl	-236(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	find_bracket
.L457:
	movq	%rax, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	.L458
	movq	-504(%rbp), %rax
	movq	$.LC30, (%rax)
	jmp	.L424
.L458:
	movq	-352(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-352(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L459
	movl	-236(%rbp), %ecx
	movq	24(%rbp), %rdx
	movq	-352(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	could_be_empty
	testl	%eax, %eax
	je	.L459
	movq	-504(%rbp), %rax
	movq	$.LC31, (%rax)
	jmp	.L424
.L459:
	movb	$63, (%rbx)
	leaq	1(%rbx), %rax
	movq	-352(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	32(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$8, %rdx
	movb	%dl, (%rax)
	leaq	2(%rbx), %rax
	movq	-352(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	32(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	%dl, (%rax)
	addq	$3, %rbx
	jmp	.L417
.L402:
	movl	$0, -456(%rbp)
	movl	-456(%rbp), %eax
	movl	%eax, -452(%rbp)
	leaq	-452(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L460
.L470:
	movq	-384(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -384(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$105, %eax
	je	.L461
	cmpl	$105, %eax
	jg	.L462
	cmpl	$85, %eax
	je	.L463
	cmpl	$88, %eax
	je	.L464
	cmpl	$45, %eax
	je	.L465
	jmp	.L460
.L462:
	cmpl	$115, %eax
	je	.L466
	cmpl	$120, %eax
	je	.L467
	cmpl	$109, %eax
	je	.L468
	jmp	.L460
.L465:
	leaq	-456(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L460
.L461:
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L460
.L468:
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L460
.L466:
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L460
.L467:
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L460
.L463:
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L460
.L464:
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	nop
.L460:
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L469
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L470
.L469:
	movl	-452(%rbp), %eax
	orl	-80(%rbp), %eax
	movl	-456(%rbp), %edx
	notl	%edx
	andl	%edx, %eax
	movl	%eax, -132(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L471
	movl	-80(%rbp), %eax
	xorl	-132(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L472
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$18, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-132(%rbp), %edx
	andl	$7, %edx
	movb	%dl, (%rax)
.L472:
	movl	-132(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-472(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	%edx, (%rax)
	movl	-132(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-80(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L473
	movl	$256, %eax
	jmp	.L474
.L473:
	movl	$0, %eax
.L474:
	movl	%eax, -72(%rbp)
	movq	$0, -104(%rbp)
	jmp	.L417
.L471:
	movl	$80, -44(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L475
.L418:
	jmp	.L475
.L417:
	jmp	.L516
.L424:
	jmp	.L517
.L401:
	movl	-80(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L476
	movl	$80, -44(%rbp)
	jmp	.L475
.L476:
	movq	-480(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-480(%rbp), %rax
	movl	%edx, (%rax)
	movq	-480(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$100, %eax
	jle	.L477
	movl	$181, -44(%rbp)
	leaq	3(%rbx), %rax
	movb	$79, (%rax)
	leaq	4(%rbx), %rax
	movq	-480(%rbp), %rdx
	movl	(%rdx), %edx
	sarl	$8, %edx
	movb	%dl, (%rax)
	leaq	5(%rbx), %rax
	movq	-480(%rbp), %rdx
	movl	(%rdx), %edx
	movb	%dl, (%rax)
	movl	$3, -140(%rbp)
	jmp	.L475
.L477:
	movq	-480(%rbp), %rax
	movl	(%rax), %eax
	addl	$80, %eax
	movl	%eax, -44(%rbp)
.L475:
	cmpl	$73, -44(%rbp)
	jle	.L478
	movq	%rbx, %rax
	jmp	.L479
.L478:
	movl	$0, %eax
.L479:
	movq	%rax, -104(%rbp)
	movl	-44(%rbp), %eax
	movb	%al, (%rbx)
	movq	%rbx, -376(%rbp)
	movq	32(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -356(%rbp)
	cmpl	$71, -44(%rbp)
	je	.L480
	cmpl	$72, -44(%rbp)
	jne	.L481
.L480:
	movl	$1, %r10d
	jmp	.L482
.L481:
	movl	$0, %r10d
.L482:
	movl	-80(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %edi
	movq	-504(%rbp), %r9
	leaq	-384(%rbp), %r8
	leaq	-376(%rbp), %rcx
	movq	-480(%rbp), %rdx
	movl	-132(%rbp), %eax
	pushq	32(%rbp)
	pushq	24(%rbp)
	leaq	-436(%rbp), %rsi
	pushq	%rsi
	leaq	-440(%rbp), %rsi
	pushq	%rsi
	movl	-140(%rbp), %esi
	pushq	%rsi
	pushq	%r10
	movl	%edi, %esi
	movl	%eax, %edi
	call	compile_regex
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L483
	jmp	.L517
.L483:
	cmpl	$75, -44(%rbp)
	jne	.L484
	movq	%rbx, -232(%rbp)
	movl	$0, -76(%rbp)
.L485:
	addl	$1, -76(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-232(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	jne	.L485
	cmpl	$2, -76(%rbp)
	jle	.L486
	movq	-504(%rbp), %rax
	movq	$.LC32, (%rax)
	jmp	.L517
.L486:
	cmpl	$1, -76(%rbp)
	jne	.L484
	movl	$-1, -436(%rbp)
	movl	-436(%rbp), %eax
	movl	%eax, -440(%rbp)
.L484:
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	$0, -92(%rbp)
	cmpl	$79, -44(%rbp)
	jg	.L487
	cmpl	$74, -44(%rbp)
	je	.L487
	cmpl	$75, -44(%rbp)
	jne	.L488
.L487:
	cmpl	$-2, -56(%rbp)
	jne	.L489
	movl	-440(%rbp), %eax
	testl	%eax, %eax
	js	.L490
	movl	-440(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$1, -92(%rbp)
	jmp	.L491
.L490:
	movl	$-1, -56(%rbp)
.L491:
	movl	$-1, -68(%rbp)
	jmp	.L492
.L489:
	movl	-440(%rbp), %eax
	testl	%eax, %eax
	js	.L492
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	jns	.L492
	movl	-440(%rbp), %eax
	orl	-356(%rbp), %eax
	movl	%eax, -436(%rbp)
.L492:
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	js	.L493
	movl	-436(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L494
.L493:
	jmp	.L494
.L488:
	cmpl	$69, -44(%rbp)
	jne	.L494
	movl	-436(%rbp), %eax
	testl	%eax, %eax
	js	.L494
	movl	-436(%rbp), %eax
	movl	%eax, -60(%rbp)
.L494:
	movq	-376(%rbp), %rbx
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L495
	movq	-504(%rbp), %rax
	movq	$.LC33, (%rax)
	nop
	jmp	.L517
.L495:
	jmp	.L252
.L247:
	movq	-384(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-480(%rbp), %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %ecx
	movq	-504(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	check_escape
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.L496
	cmpl	$-19, %r12d
	jne	.L497
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L498
	movq	-384(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L498
	movq	-384(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -384(%rbp)
	jmp	.L516
.L498:
	movl	$1, -88(%rbp)
	jmp	.L516
.L497:
	cmpl	$-2, -56(%rbp)
	jne	.L500
	movl	%r12d, %eax
	negl	%eax
	cmpl	$4, %eax
	jle	.L500
	movl	%r12d, %eax
	negl	%eax
	cmpl	$15, %eax
	jg	.L500
	movl	$-1, -56(%rbp)
.L500:
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	%r12d, %eax
	negl	%eax
	cmpl	$19, %eax
	jle	.L501
	movl	$-20, %eax
	subl	%r12d, %eax
	movl	%eax, -360(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$62, (%rax)
	movl	-360(%rbp), %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	leaq	1(%rbx), %rax
	movl	-360(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, %rbx
	jmp	.L516
.L501:
	movl	%r12d, %eax
	negl	%eax
	cmpl	$4, %eax
	jle	.L503
	movl	%r12d, %eax
	negl	%eax
	cmpl	$15, %eax
	jg	.L503
	movq	%rbx, %rax
	jmp	.L504
.L503:
	movl	$0, %eax
.L504:
	movq	%rax, -104(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	%r12d, %edx
	negl	%edx
	movb	%dl, (%rax)
	nop
	jmp	.L516
.L496:
	movl	%r12d, %eax
	movb	%al, -448(%rbp)
	movl	$1, -144(%rbp)
	jmp	.L324
.L228:
	movl	$1, -144(%rbp)
	movl	%r12d, %eax
	movb	%al, -448(%rbp)
.L324:
	movq	%rbx, -104(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movl	-80(%rbp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L505
	movl	$22, %edx
	jmp	.L506
.L505:
	movl	$21, %edx
.L506:
	movb	%dl, (%rax)
	movl	$0, %r12d
	jmp	.L507
.L508:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movslq	%r12d, %rdx
	movzbl	-448(%rbp,%rdx), %edx
	movb	%dl, (%rax)
	addl	$1, %r12d
.L507:
	cmpl	-144(%rbp), %r12d
	jl	.L508
	cmpl	$-2, -56(%rbp)
	jne	.L509
	movl	$-1, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$1, -144(%rbp)
	je	.L510
	cmpl	$0, -72(%rbp)
	jne	.L511
.L510:
	movzbl	-448(%rbp), %eax
	movzbl	%al, %eax
	orl	-72(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$1, -144(%rbp)
	je	.L512
	leaq	-1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movl	72(%rax), %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L513
.L512:
	jmp	.L513
.L511:
	movl	$-1, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.L514
.L513:
	jmp	.L514
.L509:
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$1, -144(%rbp)
	je	.L515
	cmpl	$0, -72(%rbp)
	jne	.L514
.L515:
	leaq	-1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	32(%rbp), %rax
	movl	72(%rax), %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L520
.L514:
.L520:
	nop
.L252:
.L516:
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.L518
.L517:
	movq	-384(%rbp), %rdx
	movq	-496(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
.L519:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	compile_branch, .-compile_branch
	.section	.rodata
	.align 8
.LC34:
	.string	"\\C not allowed in lookbehind assertion"
	.align 8
.LC35:
	.string	"lookbehind assertion is not fixed length"
	.text
	.type	compile_regex, @function
compile_regex:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movq	%r9, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$-2, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rdx
	movl	24(%rbp), %eax
	addl	$3, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
.L539:
	movl	-100(%rbp), %eax
	andl	$7, %eax
	cmpl	-104(%rbp), %eax
	je	.L522
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movb	$18, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	-100(%rbp), %edx
	andl	$7, %edx
	movb	%dl, (%rax)
.L522:
	cmpl	$0, 16(%rbp)
	je	.L523
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movb	$73, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
.L523:
	subq	$8, %rsp
	leaq	-68(%rbp), %r9
	movq	-136(%rbp), %r8
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-112(%rbp), %rsi
	leaq	-100(%rbp), %rax
	pushq	56(%rbp)
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-72(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	compile_branch
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L524
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L540
.L524:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L526
	movl	-68(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L527
.L526:
	cmpl	$0, -20(%rbp)
	js	.L528
	movl	-68(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	je	.L528
	cmpl	$0, -24(%rbp)
	jns	.L529
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L529:
	movl	$-1, -20(%rbp)
.L528:
	cmpl	$0, -20(%rbp)
	jns	.L530
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	js	.L530
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	jns	.L530
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.L530:
	movl	-72(%rbp), %eax
	xorl	-24(%rbp), %eax
	andb	$253, %ah
	testl	%eax, %eax
	je	.L531
	movl	$-1, -24(%rbp)
	jmp	.L527
.L531:
	movl	-72(%rbp), %eax
	orl	%eax, -24(%rbp)
.L527:
	cmpl	$0, 16(%rbp)
	je	.L532
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movl	-100(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	find_fixedlength
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L533
	cmpl	$-2, -44(%rbp)
	jne	.L534
	movl	$.LC34, %edx
	jmp	.L535
.L534:
	movl	$.LC35, %edx
.L535:
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L540
.L533:
	movl	-44(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movl	-44(%rbp), %edx
	movb	%dl, (%rax)
.L532:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	je	.L536
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -28(%rbp)
.L537:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movl	-28(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	movl	-48(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L537
	movq	-64(%rbp), %rax
	movb	$66, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$8, %rdx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	movl	-100(%rbp), %eax
	andl	$7, %eax
	cmpl	-104(%rbp), %eax
	je	.L538
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L538
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movb	$18, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	-104(%rbp), %edx
	movb	%dl, (%rax)
.L538:
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	40(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L540
.L536:
	movq	-64(%rbp), %rax
	movb	$65, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$8, %rdx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.L539
.L540:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	compile_regex, .-compile_regex
	.type	is_anchored, @function
is_anchored:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
.L557:
	leaq	3(%r12), %rax
	movq	-40(%rbp), %rsi
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	first_significant_code
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	cmpl	$80, %ebx
	jle	.L542
	subl	$80, %ebx
	cmpl	$100, %ebx
	jle	.L543
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	%edx, %ebx
.L543:
	cmpl	$31, %ebx
	jg	.L544
	movl	$1, %eax
	movl	%ebx, %ecx
	sall	%cl, %eax
	jmp	.L545
.L544:
	movl	$1, %eax
.L545:
	orl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_anchored
	testl	%eax, %eax
	jne	.L546
	movl	$0, %eax
	jmp	.L547
.L546:
	jmp	.L548
.L542:
	cmpl	$80, %ebx
	je	.L549
	cmpl	$69, %ebx
	je	.L549
	cmpl	$74, %ebx
	je	.L549
	cmpl	$75, %ebx
	jne	.L550
.L549:
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_anchored
	testl	%eax, %eax
	jne	.L551
	movl	$0, %eax
	jmp	.L547
.L551:
	jmp	.L548
.L550:
	cmpl	$42, %ebx
	je	.L552
	cmpl	$43, %ebx
	jne	.L553
.L552:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L553
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$11, %al
	jne	.L554
	movl	-44(%rbp), %eax
	andl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L555
.L554:
	movl	$0, %eax
	jmp	.L547
.L555:
	jmp	.L548
.L553:
	cmpl	$1, %ebx
	je	.L548
	cmpl	$2, %ebx
	je	.L548
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L556
	cmpl	$19, %ebx
	je	.L548
.L556:
	movl	$0, %eax
	jmp	.L547
.L548:
	leaq	1(%r12), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%r12), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %r12
	movzbl	(%r12), %eax
	cmpb	$65, %al
	je	.L557
	movl	$1, %eax
.L547:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	is_anchored, .-is_anchored
	.type	is_startline, @function
is_startline:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
.L573:
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	first_significant_code
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	cmpl	$80, %ebx
	jle	.L559
	subl	$80, %ebx
	cmpl	$100, %ebx
	jle	.L560
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	%edx, %ebx
.L560:
	cmpl	$31, %ebx
	jg	.L561
	movl	$1, %eax
	movl	%ebx, %ecx
	sall	%cl, %eax
	jmp	.L562
.L561:
	movl	$1, %eax
.L562:
	orl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	movl	-48(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_startline
	testl	%eax, %eax
	jne	.L563
	movl	$0, %eax
	jmp	.L564
.L563:
	jmp	.L565
.L559:
	cmpl	$80, %ebx
	je	.L566
	cmpl	$69, %ebx
	je	.L566
	cmpl	$74, %ebx
	je	.L566
	cmpl	$75, %ebx
	jne	.L567
.L566:
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_startline
	testl	%eax, %eax
	jne	.L568
	movl	$0, %eax
	jmp	.L564
.L568:
	jmp	.L565
.L567:
	cmpl	$42, %ebx
	je	.L569
	cmpl	$43, %ebx
	jne	.L570
.L569:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$11, %al
	jne	.L571
	movl	-44(%rbp), %eax
	andl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L572
.L571:
	movl	$0, %eax
	jmp	.L564
.L572:
	jmp	.L565
.L570:
	cmpl	$19, %ebx
	je	.L565
	movl	$0, %eax
	jmp	.L564
.L565:
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L573
	movl	$1, %eax
.L564:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	is_startline, .-is_startline
	.type	find_firstassertedchar, @function
find_firstassertedchar:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$-1, %ebx
.L590:
	movq	-40(%rbp), %rax
	leaq	3(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	call	first_significant_code
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	cmpl	$79, %r12d
	jle	.L575
	movl	$80, %r12d
.L575:
	leal	-21(%r12), %eax
	cmpl	$59, %eax
	ja	.L576
	movl	%eax, %eax
	movq	.L578(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L578:
	.quad	.L577
	.quad	.L577
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L577
	.quad	.L577
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L579
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L580
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L580
	.quad	.L580
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L576
	.quad	.L580
	.text
.L576:
	movl	$-1, %eax
	jmp	.L581
.L580:
	cmpl	$69, %r12d
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_firstassertedchar
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L582
	movl	$-1, %eax
	jmp	.L581
.L582:
	testl	%ebx, %ebx
	jns	.L583
	movl	-28(%rbp), %ebx
	jmp	.L584
.L583:
	cmpl	-28(%rbp), %ebx
	je	.L584
	movl	$-1, %eax
	jmp	.L581
.L584:
	jmp	.L585
.L579:
	addq	$2, -24(%rbp)
.L577:
	cmpl	$0, -52(%rbp)
	jne	.L586
	movl	$-1, %eax
	jmp	.L581
.L586:
	testl	%ebx, %ebx
	jns	.L587
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L589
	orb	$1, %bh
	jmp	.L591
.L587:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%ebx, %eax
	je	.L589
	movl	$-1, %eax
	jmp	.L581
.L589:
.L591:
	nop
.L585:
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L590
	movl	%ebx, %eax
.L581:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	find_firstassertedchar, .-find_firstassertedchar
	.section	.rodata
.LC36:
	.string	"erroffset passed as NULL"
	.align 8
.LC37:
	.string	"this version of PCRE is not compiled with PCRE_UTF8 support"
.LC38:
	.string	"unknown option bit(s) set"
	.align 8
.LC39:
	.string	"support for \\P, \\p, and \\X has not been compiled"
	.align 8
.LC40:
	.string	"range out of order in character class"
	.align 8
.LC41:
	.string	"missing terminating ] for character class"
.LC42:
	.string	"missing ) after comment"
	.align 8
.LC43:
	.string	"(?R or (?digits must be followed by )"
.LC44:
	.string	"closing ) for (?C expected"
.LC45:
	.string	"syntax error after (?P"
	.align 8
.LC46:
	.string	"unrecognized character after (?P"
	.align 8
.LC47:
	.string	"unrecognized character after (?<"
.LC48:
	.string	"malformed number after (?("
.LC49:
	.string	"assertion expected after (?("
	.align 8
.LC50:
	.string	"unrecognized character after (?"
.LC51:
	.string	"parentheses nested too deeply"
.LC52:
	.string	"regular expression too large"
.LC53:
	.string	"failed to get memory"
.LC54:
	.string	"unmatched parentheses"
.LC55:
	.string	"internal error: code overflow"
	.text
	.globl	pcre_compile
	.type	pcre_compile, @function
pcre_compile:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1328, %rsp
	movq	%rdi, -1288(%rbp)
	movl	%esi, -1292(%rbp)
	movq	%rdx, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	%r8, -1320(%rbp)
	movl	$3, -4(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -12(%rbp)
	movl	$-1, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	cmpq	$0, -1304(%rbp)
	jne	.L593
	movl	$0, %eax
	jmp	.L774
.L593:
	movq	-1304(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -1312(%rbp)
	jne	.L595
	movq	-1304(%rbp), %rax
	movq	$.LC36, (%rax)
	movl	$0, %eax
	jmp	.L774
.L595:
	movq	-1312(%rbp), %rax
	movl	$0, (%rax)
	movl	-1292(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L596
	movq	-1304(%rbp), %rax
	movq	$.LC37, (%rax)
	movl	$0, %eax
	jmp	.L774
.L596:
	movl	-1292(%rbp), %eax
	andl	$-31360, %eax
	testl	%eax, %eax
	je	.L597
	movq	-1304(%rbp), %rax
	movq	$.LC38, (%rax)
	movl	$0, %eax
	jmp	.L774
.L597:
	cmpq	$0, -1320(%rbp)
	jne	.L598
	movq	$pcre_default_tables, -1320(%rbp)
.L598:
	movq	-1320(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-1320(%rbp), %rax
	addq	$256, %rax
	movq	%rax, -232(%rbp)
	movq	-1320(%rbp), %rax
	addq	$512, %rax
	movq	%rax, -224(%rbp)
	movq	-1320(%rbp), %rax
	addq	$832, %rax
	movq	%rax, -216(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -172(%rbp)
	movq	-1288(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L599
.L752:
	cmpl	$0, -36(%rbp)
	je	.L600
	movl	-1292(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L601
	addl	$6, -4(%rbp)
	jmp	.L602
.L601:
	jmp	.L602
.L600:
	movl	-1292(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L603
	movq	-216(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L604
	jmp	.L599
.L604:
	cmpl	$35, -8(%rbp)
	jne	.L603
	nop
.L607:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L606
	cmpl	$10, -8(%rbp)
	jne	.L607
.L606:
	cmpl	$0, -8(%rbp)
	je	.L609
	jmp	.L599
.L603:
	addl	$1, -20(%rbp)
	movl	-1292(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L610
	cmpl	$42, -8(%rbp)
	je	.L610
	cmpl	$43, -8(%rbp)
	je	.L610
	cmpl	$63, -8(%rbp)
	je	.L610
	cmpl	$123, -8(%rbp)
	jne	.L611
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	is_counted_repeat
	testl	%eax, %eax
	jne	.L610
.L611:
	addl	$6, -4(%rbp)
.L610:
	movl	-8(%rbp), %eax
	subl	$36, %eax
	cmpl	$88, %eax
	ja	.L602
	movl	%eax, %eax
	movq	.L613(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L613:
	.quad	.L612
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L614
	.quad	.L615
	.quad	.L616
	.quad	.L616
	.quad	.L602
	.quad	.L602
	.quad	.L612
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L616
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L617
	.quad	.L618
	.quad	.L602
	.quad	.L612
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L619
	.quad	.L620
	.text
.L618:
	movl	-132(%rbp), %edx
	movl	-1292(%rbp), %ecx
	movq	-1304(%rbp), %rsi
	leaq	-152(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	check_escape
	movl	%eax, -8(%rbp)
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L621
	jmp	.L751
.L621:
	movl	$1, -32(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L623
	addl	$2, -4(%rbp)
	jmp	.L599
.L623:
	cmpl	$-19, -8(%rbp)
	jne	.L624
	movl	$1, -36(%rbp)
	jmp	.L599
.L624:
	cmpl	$-15, -8(%rbp)
	jne	.L625
	movq	-1304(%rbp), %rax
	movq	$.LC39, (%rax)
	jmp	.L751
.L625:
	cmpl	$-13, -8(%rbp)
	je	.L626
	cmpl	$-14, -8(%rbp)
	jne	.L627
.L626:
	movq	-1304(%rbp), %rax
	movq	$.LC39, (%rax)
	jmp	.L751
.L627:
	addl	$1, -4(%rbp)
	cmpl	$-19, -8(%rbp)
	jge	.L628
	movl	$-20, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-172(%rbp), %edx
	cmpl	$31, -68(%rbp)
	jg	.L629
	movl	-68(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	jmp	.L630
.L629:
	movl	$1, %eax
.L630:
	orl	%edx, %eax
	movl	%eax, -172(%rbp)
	movl	-176(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L631
	movl	-68(%rbp), %eax
	movl	%eax, -176(%rbp)
.L631:
	addl	$2, -4(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L628
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	is_counted_repeat
	testl	%eax, %eax
	je	.L628
	movq	-152(%rbp), %rax
	leaq	2(%rax), %rdi
	movq	-1304(%rbp), %rcx
	leaq	-1256(%rbp), %rdx
	leaq	-1252(%rbp), %rax
	movq	%rax, %rsi
	call	read_repeat_counts
	movq	%rax, -152(%rbp)
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L632
	jmp	.L751
.L632:
	movl	-1252(%rbp), %eax
	testl	%eax, %eax
	jne	.L633
	movl	-1256(%rbp), %eax
	cmpl	$1, %eax
	je	.L634
	movl	-1256(%rbp), %eax
	cmpl	$-1, %eax
	je	.L634
.L633:
	movl	-1252(%rbp), %eax
	cmpl	$1, %eax
	jne	.L635
	movl	-1256(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L635
.L634:
	addl	$1, -4(%rbp)
	jmp	.L636
.L635:
	addl	$5, -4(%rbp)
.L636:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L628
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L599
.L628:
	jmp	.L599
.L612:
	addl	$1, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L599
.L616:
	addl	$1, -4(%rbp)
	jmp	.L637
.L619:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	is_counted_repeat
	testl	%eax, %eax
	jne	.L638
	jmp	.L602
.L638:
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-1304(%rbp), %rcx
	leaq	-1256(%rbp), %rdx
	leaq	-1252(%rbp), %rax
	movq	%rax, %rsi
	call	read_repeat_counts
	movq	%rax, -152(%rbp)
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L639
	jmp	.L751
.L639:
	movl	-1252(%rbp), %eax
	testl	%eax, %eax
	jne	.L640
	movl	-1256(%rbp), %eax
	cmpl	$1, %eax
	je	.L641
	movl	-1256(%rbp), %eax
	cmpl	$-1, %eax
	je	.L641
.L640:
	movl	-1252(%rbp), %eax
	cmpl	$1, %eax
	jne	.L642
	movl	-1256(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L642
.L641:
	addl	$1, -4(%rbp)
	jmp	.L643
.L642:
	movl	-1252(%rbp), %eax
	cmpl	$1, %eax
	je	.L644
	movl	-32(%rbp), %eax
	subl	%eax, -4(%rbp)
	movl	-1252(%rbp), %eax
	testl	%eax, %eax
	jle	.L644
	movl	-32(%rbp), %eax
	addl	$3, %eax
	addl	%eax, -4(%rbp)
.L644:
	movl	-1256(%rbp), %eax
	testl	%eax, %eax
	jle	.L645
	movl	$3, %edx
	jmp	.L646
.L645:
	movl	$1, %edx
.L646:
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -4(%rbp)
.L643:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L637
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
.L637:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L647
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	addl	$6, -4(%rbp)
	jmp	.L599
.L647:
	jmp	.L599
.L620:
	movl	-12(%rbp), %eax
	addl	$3, %eax
	addl	%eax, -4(%rbp)
	jmp	.L599
.L617:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L648
	movl	$10, -44(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L649
.L648:
	movl	$0, -44(%rbp)
.L649:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L650
.L667:
	cmpl	$0, -36(%rbp)
	je	.L651
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L652
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L652
	movl	$0, -36(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L653
.L651:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L654
	movl	-132(%rbp), %edx
	movl	-1292(%rbp), %ecx
	movq	-1304(%rbp), %rsi
	leaq	-152(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	check_escape
	movl	%eax, -8(%rbp)
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L655
	jmp	.L751
.L655:
	cmpl	$-4, -8(%rbp)
	jne	.L656
	movl	$8, -8(%rbp)
	jmp	.L657
.L656:
	cmpl	$-15, -8(%rbp)
	jne	.L658
	movl	$88, -8(%rbp)
	jmp	.L657
.L658:
	cmpl	$-19, -8(%rbp)
	jne	.L657
	movl	$1, -36(%rbp)
	jmp	.L653
.L657:
	cmpl	$0, -8(%rbp)
	js	.L659
	jmp	.L660
.L659:
	movl	$10, -44(%rbp)
	jmp	.L653
.L654:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L652
	movq	-152(%rbp), %rax
	leaq	-240(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_posix_syntax
	testl	%eax, %eax
	je	.L652
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movl	$10, -44(%rbp)
	jmp	.L653
.L652:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
.L660:
	addl	$1, -44(%rbp)
	movl	$-1, -56(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L661
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L662
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movl	-132(%rbp), %edx
	movl	-1292(%rbp), %ecx
	movq	-1304(%rbp), %rsi
	leaq	-152(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	check_escape
	movl	%eax, -56(%rbp)
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L663
	jmp	.L751
.L663:
	cmpl	$-4, -56(%rbp)
	jne	.L664
	movl	$8, -56(%rbp)
	jmp	.L666
.L664:
	cmpl	$-15, -56(%rbp)
	jne	.L666
	movl	$88, -56(%rbp)
	jmp	.L666
.L662:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L666
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	je	.L666
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
.L666:
	cmpl	$0, -56(%rbp)
	jns	.L661
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
.L661:
	cmpl	$0, -56(%rbp)
	js	.L653
	movl	$10, -44(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L653
	movq	-1304(%rbp), %rax
	movq	$.LC40, (%rax)
	jmp	.L751
.L653:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L650
	cmpl	$0, -36(%rbp)
	jne	.L667
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L667
.L650:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L668
	movq	-1304(%rbp), %rax
	movq	$.LC41, (%rax)
	jmp	.L751
.L668:
	cmpl	$1, -44(%rbp)
	jne	.L669
	addl	$3, -4(%rbp)
	jmp	.L670
.L669:
	addl	$33, -4(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L670
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L670
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	is_counted_repeat
	testl	%eax, %eax
	je	.L670
	movq	-152(%rbp), %rax
	leaq	2(%rax), %rdi
	movq	-1304(%rbp), %rcx
	leaq	-1256(%rbp), %rdx
	leaq	-1252(%rbp), %rax
	movq	%rax, %rsi
	call	read_repeat_counts
	movq	%rax, -152(%rbp)
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L671
	jmp	.L751
.L671:
	movl	-1252(%rbp), %eax
	testl	%eax, %eax
	jne	.L672
	movl	-1256(%rbp), %eax
	cmpl	$1, %eax
	je	.L673
	movl	-1256(%rbp), %eax
	cmpl	$-1, %eax
	je	.L673
.L672:
	movl	-1252(%rbp), %eax
	cmpl	$1, %eax
	jne	.L674
	movl	-1256(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L674
.L673:
	addl	$1, -4(%rbp)
	jmp	.L675
.L674:
	addl	$5, -4(%rbp)
.L675:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L676
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	addl	$6, -4(%rbp)
	jmp	.L670
.L676:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L670
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L599
.L670:
	jmp	.L599
.L614:
	movl	$0, -16(%rbp)
	movl	$3, -48(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L677
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$33, %eax
	cmpl	$49, %eax
	ja	.L678
	movl	%eax, %eax
	movq	.L680(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L680:
	.quad	.L679
	.quad	.L678
	.quad	.L681
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L682
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L683
	.quad	.L679
	.quad	.L678
	.quad	.L684
	.quad	.L679
	.quad	.L679
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L685
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L678
	.quad	.L686
	.quad	.L678
	.quad	.L687
	.text
.L681:
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -152(%rbp)
	jmp	.L688
.L690:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
.L688:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L689
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L690
.L689:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L691
	movq	-1304(%rbp), %rax
	movq	$.LC42, (%rax)
	jmp	.L751
.L691:
	jmp	.L599
.L679:
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
	jmp	.L694
.L687:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
.L683:
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
	cmpl	$82, -8(%rbp)
	je	.L695
	nop
.L696:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L696
.L695:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L697
	movq	-1304(%rbp), %rax
	movq	$.LC43, (%rax)
	jmp	.L692
.L697:
	addl	$3, -4(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L698
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L698
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	je	.L698
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L699
.L698:
	addl	$6, -4(%rbp)
	movl	$11, -52(%rbp)
	jmp	.L700
.L699:
	jmp	.L599
.L685:
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
	nop
.L701:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L701
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L702
	movq	-1304(%rbp), %rax
	movq	$.LC44, (%rax)
	jmp	.L692
.L702:
	addl	$6, -4(%rbp)
	jmp	.L599
.L686:
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L703
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L704
.L705:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
.L704:
	movq	-216(%rbp), %rdx
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L705
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	je	.L706
	movq	-1304(%rbp), %rax
	movq	$.LC45, (%rax)
	jmp	.L692
.L706:
	addl	$1, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L707
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -28(%rbp)
	jmp	.L694
.L707:
	jmp	.L694
.L703:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L708
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L709
.L708:
	nop
.L710:
	movq	-216(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L710
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L711
	movq	-1304(%rbp), %rax
	movq	$.LC45, (%rax)
	jmp	.L692
.L711:
	jmp	.L694
.L709:
	movq	-1304(%rbp), %rax
	movq	$.LC46, (%rax)
	jmp	.L692
.L684:
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L712
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L713
.L712:
	movl	$3, -16(%rbp)
	addl	$3, -4(%rbp)
	jmp	.L694
.L713:
	movq	-1304(%rbp), %rax
	movq	$.LC47, (%rax)
	jmp	.L692
.L682:
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$82, %al
	jne	.L714
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L714
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -152(%rbp)
	addl	$3, -4(%rbp)
	jmp	.L715
.L714:
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L716
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -152(%rbp)
	addl	$3, -4(%rbp)
	jmp	.L717
.L718:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
.L717:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	digitab(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L718
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L715
	movq	-1304(%rbp), %rax
	movq	$.LC48, (%rax)
	jmp	.L692
.L716:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L719
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L715
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	je	.L715
	movq	-152(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	je	.L715
.L719:
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
	movq	-1304(%rbp), %rax
	movq	$.LC49, (%rax)
	jmp	.L692
.L715:
	jmp	.L694
.L678:
	movl	$0, -1264(%rbp)
	movl	-1264(%rbp), %eax
	movl	%eax, -1260(%rbp)
	leaq	-1260(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
.L734:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$41, %eax
	cmpl	$79, %eax
	ja	.L720
	movl	%eax, %eax
	movq	.L722(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L722:
	.quad	.L721
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L723
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L724
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L725
	.quad	.L720
	.quad	.L720
	.quad	.L726
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L727
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L728
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L729
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L730
	.text
.L727:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L731
.L728:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L731
.L729:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L731
.L730:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L731
.L726:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L731
.L725:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L731
.L723:
	leaq	-1264(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L731
.L721:
	cmpl	$0, -20(%rbp)
	jne	.L724
	movl	-1260(%rbp), %eax
	orl	-1292(%rbp), %eax
	movl	-1264(%rbp), %edx
	notl	%edx
	andl	%edx, %eax
	movl	%eax, -1292(%rbp)
	movl	$0, -1264(%rbp)
	movl	-1264(%rbp), %eax
	movl	%eax, -1260(%rbp)
	subl	$1, -20(%rbp)
.L724:
	movl	-1260(%rbp), %edx
	movl	-1264(%rbp), %eax
	orl	%edx, %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L732
	addl	$4, -4(%rbp)
	movl	$2, -16(%rbp)
	movl	-1260(%rbp), %edx
	movl	-1264(%rbp), %eax
	orl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L732
	orl	$134217728, -1292(%rbp)
	jmp	.L733
.L732:
	jmp	.L733
.L720:
	movq	-1304(%rbp), %rax
	movq	$.LC50, (%rax)
	jmp	.L692
.L731:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L734
.L733:
	cmpl	$41, -8(%rbp)
	jne	.L694
	cmpl	$2, -16(%rbp)
	jne	.L735
	cmpl	$0, -12(%rbp)
	je	.L736
	cmpl	$3, -12(%rbp)
	jne	.L735
.L736:
	movl	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
	jmp	.L599
.L735:
	nop
	jmp	.L599
.L694:
	jmp	.L737
.L692:
	jmp	.L751
.L677:
	movl	-1292(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L737
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	cmpl	$100, %eax
	jle	.L737
	addl	$3, -48(%rbp)
.L737:
	cmpl	$199, -40(%rbp)
	jbe	.L738
	movq	-1304(%rbp), %rax
	movq	$.LC51, (%rax)
	jmp	.L751
.L738:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	movb	%dl, -1248(%rbp,%rax)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%eax, -1040(%rbp,%rdx,4)
	movl	-48(%rbp), %eax
	addl	%eax, -4(%rbp)
	jmp	.L599
.L615:
	addl	$3, -4(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L739
	subl	$1, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-1040(%rbp,%rax,4), %eax
	movl	-4(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	movzbl	-1248(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	jmp	.L700
.L739:
	movl	$0, -52(%rbp)
.L700:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$123, -8(%rbp)
	jne	.L740
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	is_counted_repeat
	testl	%eax, %eax
	je	.L740
	movq	-152(%rbp), %rax
	leaq	2(%rax), %rdi
	movq	-1304(%rbp), %rcx
	leaq	-1256(%rbp), %rdx
	leaq	-1252(%rbp), %rax
	movq	%rax, %rsi
	call	read_repeat_counts
	movq	%rax, -152(%rbp)
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L741
	nop
	jmp	.L751
.L741:
	jmp	.L742
.L740:
	cmpl	$42, -8(%rbp)
	jne	.L743
	movl	$0, -1252(%rbp)
	movl	$-1, -1256(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L742
.L743:
	cmpl	$43, -8(%rbp)
	jne	.L744
	movl	$1, -1252(%rbp)
	movl	$-1, -1256(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L742
.L744:
	cmpl	$63, -8(%rbp)
	jne	.L745
	movl	$0, -1252(%rbp)
	movl	$1, -1256(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L742
.L745:
	movl	$1, -1252(%rbp)
	movl	$1, -1256(%rbp)
.L742:
	movl	-1252(%rbp), %eax
	testl	%eax, %eax
	jne	.L746
	addl	$1, -4(%rbp)
	movl	-1256(%rbp), %eax
	testl	%eax, %eax
	jle	.L748
	movl	-1256(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-52(%rbp), %eax
	addl	$7, %eax
	imull	%edx, %eax
	addl	%eax, -4(%rbp)
	jmp	.L748
.L746:
	movl	-1252(%rbp), %eax
	subl	$1, %eax
	imull	-52(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-1256(%rbp), %edx
	movl	-1252(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L748
	movl	-1256(%rbp), %edx
	movl	-1252(%rbp), %eax
	subl	%eax, %edx
	movl	-52(%rbp), %eax
	addl	$7, %eax
	imull	%edx, %eax
	subl	$6, %eax
	addl	%eax, -4(%rbp)
.L748:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L749
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	addl	$6, -4(%rbp)
	jmp	.L599
.L749:
	jmp	.L599
.L602:
	cmpl	$0, -36(%rbp)
	je	.L750
	cmpl	$92, -8(%rbp)
	jne	.L750
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L750
	movl	$0, -36(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.L599
.L750:
	addl	$2, -4(%rbp)
	movl	$1, -32(%rbp)
	nop
.L599:
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L752
.L609:
	addl	$4, -4(%rbp)
	movl	-1292(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L753
	addl	$6, -4(%rbp)
.L753:
	cmpl	$65536, -4(%rbp)
	jle	.L754
	movq	-1304(%rbp), %rax
	movq	$.LC52, (%rax)
	movl	$0, %eax
	jmp	.L774
.L754:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	addl	$3, %eax
	imull	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	addq	$48, %rax
	movq	%rax, -96(%rbp)
	movq	pcre_malloc(%rip), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L755
	movq	-1304(%rbp), %rax
	movq	$.LC53, (%rax)
	movl	$0, %eax
	jmp	.L774
.L755:
	movq	-104(%rbp), %rax
	movl	$1346589253, (%rax)
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-1292(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movw	$0, 30(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-104(%rbp), %rax
	movw	$48, 24(%rax)
	movl	-28(%rbp), %eax
	leal	3(%rax), %edx
	movq	-104(%rbp), %rax
	movw	%dx, 26(%rax)
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movw	%dx, 28(%rax)
	cmpq	$pcre_default_tables, -1320(%rbp)
	je	.L756
	movq	-1320(%rbp), %rax
	jmp	.L757
.L756:
	movl	$0, %eax
.L757:
	movq	-104(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-104(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, -184(%rbp)
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -180(%rbp)
	movq	-104(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %edx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdx
	movq	-104(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %ecx
	movq	-104(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %eax
	imull	%ecx, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-1288(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -164(%rbp)
	movq	-1288(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movb	$80, (%rax)
	movl	$0, -132(%rbp)
	movl	-1292(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %edi
	movq	-1304(%rbp), %r9
	leaq	-152(%rbp), %r8
	leaq	-144(%rbp), %rcx
	leaq	-132(%rbp), %rdx
	movl	-1292(%rbp), %eax
	leaq	-240(%rbp), %rsi
	pushq	%rsi
	pushq	$0
	leaq	-128(%rbp), %rsi
	pushq	%rsi
	leaq	-124(%rbp), %rsi
	pushq	%rsi
	pushq	$0
	pushq	$0
	movl	%edi, %esi
	movl	%eax, %edi
	call	compile_regex
	addq	$48, %rsp
	movl	-132(%rbp), %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movw	%dx, 16(%rax)
	movl	-176(%rbp), %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movw	%dx, 18(%rax)
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	je	.L758
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	orl	$67108864, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
.L758:
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L759
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L759
	movq	-1304(%rbp), %rax
	movq	$.LC54, (%rax)
.L759:
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movb	$0, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	subq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L760
	movq	-1304(%rbp), %rax
	movq	$.LC55, (%rax)
.L760:
	movq	-104(%rbp), %rax
	movzwl	18(%rax), %edx
	movq	-104(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	%ax, %dx
	jbe	.L761
	movq	-1304(%rbp), %rax
	movq	$.LC30, (%rax)
.L761:
	movq	-1304(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L762
	movq	pcre_free(%rip), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L751:
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	movq	-1288(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-1312(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L774
.L762:
	movl	-1292(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L763
	movl	-1292(%rbp), %eax
	movl	%eax, -1268(%rbp)
	movl	-172(%rbp), %edx
	leaq	-1268(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	is_anchored
	testl	%eax, %eax
	je	.L764
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L763
.L764:
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	jns	.L766
	leaq	-1268(%rbp), %rcx
	movq	-112(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_firstassertedchar
	movl	%eax, -124(%rbp)
.L766:
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	js	.L767
	movl	-124(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L768
	movq	-232(%rbp), %rdx
	movl	-116(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-116(%rbp), %eax
	jne	.L768
	movl	-116(%rbp), %eax
	movl	%eax, %edx
	jmp	.L769
.L768:
	movl	-124(%rbp), %eax
	movl	%eax, %edx
.L769:
	movq	-104(%rbp), %rax
	movw	%dx, 20(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	orl	$1073741824, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L763
.L767:
	movl	-172(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	is_startline
	testl	%eax, %eax
	je	.L763
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	orl	$268435456, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
.L763:
	movl	-128(%rbp), %eax
	testl	%eax, %eax
	js	.L770
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L771
	movl	-128(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L770
.L771:
	movl	-128(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L772
	movq	-232(%rbp), %rdx
	movl	-120(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-120(%rbp), %eax
	jne	.L772
	movl	-128(%rbp), %eax
	andb	$254, %ah
	movl	%eax, %edx
	jmp	.L773
.L772:
	movl	-128(%rbp), %eax
	movl	%eax, %edx
.L773:
	movq	-104(%rbp), %rax
	movw	%dx, 22(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	orl	$536870912, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
.L770:
	movq	-104(%rbp), %rax
.L774:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	pcre_compile, .-pcre_compile
	.type	match_ref, @function
match_ref:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, %rax
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	88(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -8(%rbp)
	movl	-24(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	movq	96(%rdx), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.L776
	movl	$0, %eax
	jmp	.L777
.L776:
	movq	-40(%rbp), %rdx
	andl	$1, %edx
	testq	%rdx, %rdx
	je	.L778
	jmp	.L779
.L780:
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rsi, %rdx
	movzbl	(%rdx), %ecx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	%rax, %rdx
	leaq	1(%rdx), %rax
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	cmpb	%dl, %cl
	je	.L779
	movl	$0, %eax
	jmp	.L777
.L779:
	movl	-24(%rbp), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -24(%rbp)
	testl	%edx, %edx
	jg	.L780
	jmp	.L781
.L778:
	jmp	.L782
.L783:
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %ecx
	movq	%rax, %rdx
	leaq	1(%rdx), %rax
	movzbl	(%rdx), %edx
	cmpb	%dl, %cl
	je	.L782
	movl	$0, %eax
	jmp	.L777
.L782:
	movl	-24(%rbp), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -24(%rbp)
	testl	%edx, %edx
	jg	.L783
.L781:
	movl	$1, %eax
.L777:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	match_ref, .-match_ref
	.type	match, @function
match:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %r12
	movq	%rsi, %rbx
	movl	%edx, -452(%rbp)
	movq	%rcx, -464(%rbp)
	movq	%r8, -472(%rbp)
	movq	%r9, -480(%rbp)
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-464(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-464(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rdx, %rax
	jb	.L785
	movl	$-8, %eax
	jmp	.L1156
.L785:
	movq	-472(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	16(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L787
	movq	-480(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	%r12, -376(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -480(%rbp)
.L787:
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -68(%rbp)
	movq	-464(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L788
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L788
	movq	-464(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%r12, %rax
	jnb	.L788
	movq	-464(%rbp), %rax
	movl	$1, 76(%rax)
.L788:
	cmpl	$80, -84(%rbp)
	jle	.L789
	movl	-84(%rbp), %eax
	subl	$80, %eax
	movl	%eax, -80(%rbp)
	cmpl	$100, -80(%rbp)
	jle	.L790
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	5(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -80(%rbp)
.L790:
	movl	-80(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -124(%rbp)
	movq	-464(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	-124(%rbp), %eax
	jle	.L791
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -184(%rbp)
	movq	-464(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-464(%rbp), %rax
	movl	24(%rax), %eax
	subl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -188(%rbp)
	movq	-464(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -192(%rbp)
	movq	-464(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-464(%rbp), %rax
	movl	24(%rax), %eax
	subl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movq	%r12, %rcx
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, (%rdx)
.L793:
	leaq	3(%rbx), %rax
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L792
	movl	%r14d, %eax
	jmp	.L1156
.L792:
	movq	-464(%rbp), %rax
	movl	-192(%rbp), %edx
	movl	%edx, 124(%rax)
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L793
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-180(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-184(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-464(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-464(%rbp), %rax
	movl	24(%rax), %eax
	subl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-188(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$0, %eax
	jmp	.L1156
.L791:
	movl	$80, -84(%rbp)
.L789:
	cmpl	$80, -84(%rbp)
	ja	.L794
	movl	-84(%rbp), %eax
	movq	.L796(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L796:
	.quad	.L795
	.quad	.L797
	.quad	.L798
	.quad	.L799
	.quad	.L799
	.quad	.L800
	.quad	.L801
	.quad	.L802
	.quad	.L803
	.quad	.L804
	.quad	.L805
	.quad	.L806
	.quad	.L807
	.quad	.L794
	.quad	.L794
	.quad	.L794
	.quad	.L808
	.quad	.L809
	.quad	.L810
	.quad	.L811
	.quad	.L812
	.quad	.L813
	.quad	.L814
	.quad	.L815
	.quad	.L816
	.quad	.L816
	.quad	.L816
	.quad	.L816
	.quad	.L816
	.quad	.L816
	.quad	.L817
	.quad	.L817
	.quad	.L818
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L820
	.quad	.L820
	.quad	.L821
	.quad	.L822
	.quad	.L822
	.quad	.L822
	.quad	.L822
	.quad	.L822
	.quad	.L822
	.quad	.L823
	.quad	.L823
	.quad	.L824
	.quad	.L794
	.quad	.L794
	.quad	.L794
	.quad	.L794
	.quad	.L794
	.quad	.L794
	.quad	.L794
	.quad	.L794
	.quad	.L825
	.quad	.L825
	.quad	.L794
	.quad	.L826
	.quad	.L827
	.quad	.L828
	.quad	.L829
	.quad	.L830
	.quad	.L830
	.quad	.L830
	.quad	.L831
	.quad	.L832
	.quad	.L831
	.quad	.L832
	.quad	.L833
	.quad	.L834
	.quad	.L835
	.quad	.L836
	.quad	.L837
	.quad	.L838
	.quad	.L836
	.quad	.L839
	.text
.L839:
	leaq	3(%rbx), %rax
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L840
	movl	%r14d, %eax
	jmp	.L1156
.L840:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L839
	movl	$0, %eax
	jmp	.L1156
.L835:
	leaq	3(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$76, %al
	jne	.L841
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	5(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -124(%rbp)
	cmpl	$131070, -124(%rbp)
	jne	.L842
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L843
.L842:
	movl	-124(%rbp), %eax
	cmpl	-452(%rbp), %eax
	jge	.L844
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L844
	movl	$1, %eax
	jmp	.L843
.L844:
	movl	$0, %eax
.L843:
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	jne	.L846
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	$3, %eax
	cltq
	jmp	.L847
.L846:
	movl	$6, %eax
.L847:
	leaq	(%rbx,%rax), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$2
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	movl	%r14d, %eax
	jmp	.L1156
.L841:
	leaq	3(%rbx), %rax
	subq	$8, %rsp
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	pushq	$3
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	cmpl	$1, %r14d
	jne	.L848
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	5(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	$3, %eax
	cltq
	addq	%rax, %rbx
	jmp	.L849
.L850:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
.L849:
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L850
	jmp	.L851
.L848:
	testl	%r14d, %r14d
	je	.L852
	movl	%r14d, %eax
	jmp	.L1156
.L852:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
.L851:
	leaq	3(%rbx), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$2
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	movl	%r14d, %eax
	jmp	.L1156
.L836:
	addq	$3, %rbx
	jmp	.L853
.L795:
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L854
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L854
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-96(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rbx
	jmp	.L853
.L854:
	movq	-464(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L855
	movq	-464(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%r12, %rax
	jne	.L855
	movl	$0, %eax
	jmp	.L1156
.L855:
	movq	-464(%rbp), %rax
	movq	%r12, 112(%rax)
	movq	-464(%rbp), %rax
	movl	-452(%rbp), %edx
	movl	%edx, 120(%rax)
	movl	$1, %eax
	jmp	.L1156
.L810:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -472(%rbp)
	addq	$2, %rbx
	jmp	.L853
.L831:
	leaq	3(%rbx), %rax
	subq	$8, %rsp
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	pushq	$2
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	cmpl	$1, %r14d
	jne	.L856
	jmp	.L857
.L856:
	testl	%r14d, %r14d
	je	.L858
	movl	%r14d, %eax
	jmp	.L1156
.L858:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L831
.L857:
	movzbl	(%rbx), %eax
	cmpb	$66, %al
	jne	.L859
	movl	$0, %eax
	jmp	.L1156
.L859:
	movl	16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L860
	movl	$1, %eax
	jmp	.L1156
.L860:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L860
	addq	$3, %rbx
	movq	-464(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -452(%rbp)
	jmp	.L853
.L832:
	leaq	3(%rbx), %rax
	subq	$8, %rsp
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	pushq	$2
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	cmpl	$1, %r14d
	jne	.L861
	movl	$0, %eax
	jmp	.L1156
.L861:
	testl	%r14d, %r14d
	je	.L862
	movl	%r14d, %eax
	jmp	.L1156
.L862:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L832
	movl	16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L863
	movl	$1, %eax
	jmp	.L1156
.L863:
	addq	$3, %rbx
	jmp	.L853
.L833:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	negq	%rax
	addq	%rax, %r12
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L864
	movl	$0, %eax
	jmp	.L1156
.L864:
	addq	$3, %rbx
	jmp	.L853
.L828:
	movq	pcre_callout(%rip), %rax
	testq	%rax, %rax
	je	.L865
	movl	$1, -448(%rbp)
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -444(%rbp)
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdx
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -424(%rbp)
	movq	-464(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdx
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -420(%rbp)
	movq	%r12, %rdx
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -416(%rbp)
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	3(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -392(%rbp)
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	5(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -388(%rbp)
	movl	-452(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -412(%rbp)
	movq	-464(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -408(%rbp)
	movq	-464(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	pcre_callout(%rip), %rax
	leaq	-448(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jle	.L866
	movl	$0, %eax
	jmp	.L1156
.L866:
	testl	%r14d, %r14d
	jns	.L865
	movl	%r14d, %eax
	jmp	.L1156
.L865:
	addq	$6, %rbx
	jmp	.L853
.L827:
	movq	-464(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$80, %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	cmpl	$100, %eax
	jle	.L869
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -232(%rbp)
.L869:
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-464(%rbp), %rax
	leaq	-240(%rbp), %rdx
	movq	%rdx, 136(%rax)
	addq	$3, %rbx
	movq	%rbx, -224(%rbp)
	movq	-464(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
	cmpl	$30, %eax
	jg	.L870
	leaq	-368(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	.L871
.L870:
	movq	pcre_malloc(%rip), %rax
	movl	-200(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	jne	.L871
	movl	$-6, %eax
	jmp	.L1156
.L871:
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-464(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-464(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-464(%rbp), %rax
	movq	%r12, 104(%rax)
.L875:
	movq	-56(%rbp), %rax
	leaq	3(%rax), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$2
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	cmpl	$1, %r14d
	jne	.L872
	movq	-240(%rbp), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-208(%rbp), %rdx
	leaq	-368(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L873
	movq	pcre_free(%rip), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L873:
	movl	$1, %eax
	jmp	.L1156
.L872:
	testl	%r14d, %r14d
	je	.L874
	movl	%r14d, %eax
	jmp	.L1156
.L874:
	movq	-464(%rbp), %rax
	leaq	-240(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rcx
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L875
	movq	-240(%rbp), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-208(%rbp), %rdx
	leaq	-368(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L876
	movq	pcre_free(%rip), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L876:
	movl	$0, %eax
	jmp	.L1156
.L834:
	movq	%rbx, -112(%rbp)
	movq	%r12, -120(%rbp)
.L880:
	leaq	3(%rbx), %rax
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	cmpl	$1, %r14d
	jne	.L877
	jmp	.L878
.L877:
	testl	%r14d, %r14d
	je	.L879
	movl	%r14d, %eax
	jmp	.L1156
.L879:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L880
.L878:
	movzbl	(%rbx), %eax
	cmpb	$74, %al
	je	.L881
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L881
	movl	$0, %eax
	jmp	.L1156
.L881:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L881
	movq	-464(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -452(%rbp)
	movq	-464(%rbp), %rax
	movq	112(%rax), %r12
	movzbl	(%rbx), %eax
	cmpb	$66, %al
	je	.L882
	cmpq	-120(%rbp), %r12
	jne	.L883
.L882:
	addq	$3, %rbx
	jmp	.L853
.L883:
	leaq	3(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$18, %al
	jne	.L884
	movq	-472(%rbp), %rax
	andq	$-8, %rax
	movq	%rax, %rdx
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -472(%rbp)
.L884:
	movzbl	(%rbx), %eax
	cmpb	$68, %al
	jne	.L885
	leaq	3(%rbx), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L886
	movl	%r14d, %eax
	jmp	.L1156
.L886:
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	movq	-112(%rbp), %rax
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L887
	movl	%r14d, %eax
	jmp	.L1156
.L885:
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	movq	-112(%rbp), %rax
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L888
	movl	%r14d, %eax
	jmp	.L1156
.L888:
	leaq	3(%rbx), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L887
	movl	%r14d, %eax
	jmp	.L1156
.L887:
	movl	$0, %eax
	jmp	.L1156
.L829:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	cmpb	$65, %al
	je	.L829
	jmp	.L853
.L837:
	leaq	1(%rbx), %rax
	movq	%rax, -64(%rbp)
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	movq	-64(%rbp), %rax
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L889
	movl	%r14d, %eax
	jmp	.L1156
.L889:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L889
	movq	-64(%rbp), %rax
	leaq	3(%rax), %rbx
	jmp	.L853
.L838:
	leaq	1(%rbx), %rax
	movq	%rax, -64(%rbp)
.L890:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L890
	movq	-64(%rbp), %rax
	leaq	3(%rax), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$2
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L891
	movl	%r14d, %eax
	jmp	.L1156
.L891:
	addq	$1, %rbx
	jmp	.L853
.L830:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	negq	%rax
	addq	%rbx, %rax
	movq	%rax, -112(%rbp)
	movq	-480(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-480(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	je	.L892
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	je	.L892
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$71, %al
	je	.L892
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$72, %al
	je	.L892
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$74, %al
	jne	.L893
.L892:
	movq	-464(%rbp), %rax
	movq	%r12, 112(%rax)
	movq	-464(%rbp), %rax
	movl	-452(%rbp), %edx
	movl	%edx, 120(%rax)
	movl	$1, %eax
	jmp	.L1156
.L893:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$75, %al
	je	.L894
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$80, %eax
	movl	%eax, -80(%rbp)
	cmpl	$100, -80(%rbp)
	jle	.L895
	movq	-112(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -80(%rbp)
.L895:
	movl	-80(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -124(%rbp)
	cmpl	$0, -80(%rbp)
	jle	.L894
	movq	-464(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	%edx, 124(%rax)
	movq	-464(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	-124(%rbp), %eax
	jg	.L896
	movq	-464(%rbp), %rax
	movl	$1, 48(%rax)
	jmp	.L897
.L896:
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-464(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-464(%rbp), %rax
	movl	24(%rax), %eax
	subl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	%r12, %rcx
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, (%rdx)
	movl	-452(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jg	.L897
	movl	-124(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -452(%rbp)
.L897:
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L894
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-80(%rbp), %eax
	jne	.L894
	movq	-464(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-136(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-136(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-96(%rbp), %rax
	movq	%rax, -472(%rbp)
	jmp	.L853
.L894:
	movq	-96(%rbp), %rax
	movq	%rax, -472(%rbp)
	movzbl	(%rbx), %eax
	cmpb	$66, %al
	je	.L898
	cmpq	-120(%rbp), %r12
	jne	.L899
.L898:
	addq	$3, %rbx
	jmp	.L853
.L899:
	movzbl	(%rbx), %eax
	cmpb	$68, %al
	jne	.L900
	leaq	3(%rbx), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L901
	movl	%r14d, %eax
	jmp	.L1156
.L901:
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	movq	-112(%rbp), %rax
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L902
	movl	%r14d, %eax
	jmp	.L1156
.L900:
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-452(%rbp), %edx
	movq	-112(%rbp), %rax
	pushq	$2
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L903
	movl	%r14d, %eax
	jmp	.L1156
.L903:
	leaq	3(%rbx), %rsi
	subq	$8, %rsp
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L902
	movl	%r14d, %eax
	jmp	.L1156
.L902:
	movl	$0, %eax
	jmp	.L1156
.L811:
	movq	-464(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L904
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%r12, %rax
	jne	.L904
	movl	$0, %eax
	jmp	.L1156
.L904:
	movq	-472(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L797
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%r12, %rax
	je	.L905
	leaq	-1(%r12), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L905
	movl	$0, %eax
	jmp	.L1156
.L905:
	addq	$1, %rbx
	jmp	.L853
.L797:
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%r12, %rax
	je	.L906
	movl	$0, %eax
	jmp	.L1156
.L906:
	addq	$1, %rbx
	jmp	.L853
.L798:
	movq	-464(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-464(%rbp), %rax
	movl	128(%rax), %eax
	cltq
	addq	%rdx, %rax
	cmpq	%r12, %rax
	je	.L907
	movl	$0, %eax
	jmp	.L1156
.L907:
	addq	$1, %rbx
	jmp	.L853
.L812:
	movq	-472(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L908
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L909
	movzbl	(%r12), %eax
	cmpb	$10, %al
	je	.L910
	movl	$0, %eax
	jmp	.L1156
.L909:
	movq	-464(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L910
	movl	$0, %eax
	jmp	.L1156
.L910:
	addq	$1, %rbx
	jmp	.L853
.L908:
	movq	-464(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L911
	movl	$0, %eax
	jmp	.L1156
.L911:
	movq	-464(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L809
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	subq	$1, %rax
	cmpq	%r12, %rax
	ja	.L912
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	subq	$1, %rax
	cmpq	%r12, %rax
	jne	.L913
	movzbl	(%r12), %eax
	cmpb	$10, %al
	je	.L913
.L912:
	movl	$0, %eax
	jmp	.L1156
.L913:
	addq	$1, %rbx
	jmp	.L853
.L809:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L914
	movl	$0, %eax
	jmp	.L1156
.L914:
	addq	$1, %rbx
	jmp	.L853
.L808:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	subq	$1, %rax
	cmpq	%r12, %rax
	ja	.L915
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	subq	$1, %rax
	cmpq	%r12, %rax
	jne	.L916
	movzbl	(%r12), %eax
	cmpb	$10, %al
	je	.L916
.L915:
	movl	$0, %eax
	jmp	.L1156
.L916:
	addq	$1, %rbx
	jmp	.L853
.L799:
	movq	-464(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%r12, %rax
	je	.L917
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	leaq	-1(%r12), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L917
	movl	$1, %eax
	jmp	.L918
.L917:
	movl	$0, %eax
.L918:
	movl	%eax, -140(%rbp)
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L919
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L919
	movl	$1, %eax
	jmp	.L920
.L919:
	movl	$0, %eax
.L920:
	movl	%eax, -144(%rbp)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L921
	movl	-144(%rbp), %eax
	cmpl	-140(%rbp), %eax
	sete	%al
	jmp	.L922
.L921:
	movl	-144(%rbp), %eax
	cmpl	-140(%rbp), %eax
	setne	%al
.L922:
	testb	%al, %al
	je	.L923
	movl	$0, %eax
	jmp	.L1156
.L923:
	jmp	.L853
.L806:
	movq	-472(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L924
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L924
	movzbl	(%r12), %eax
	cmpb	$10, %al
	jne	.L924
	movl	$0, %eax
	jmp	.L1156
.L924:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movq	-464(%rbp), %rdx
	movq	96(%rdx), %rdx
	cmpq	%rdx, %rax
	jb	.L925
	movl	$0, %eax
	jmp	.L1156
.L925:
	addq	$1, %rbx
	jmp	.L853
.L807:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movq	-464(%rbp), %rdx
	movq	96(%rdx), %rdx
	cmpq	%rdx, %rax
	jb	.L926
	movl	$0, %eax
	jmp	.L1156
.L926:
	addq	$1, %rbx
	jmp	.L853
.L800:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L927
	movl	$0, %eax
	jmp	.L1156
.L927:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L928
	movl	$0, %eax
	jmp	.L1156
.L928:
	addq	$1, %rbx
	jmp	.L853
.L801:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L929
	movl	$0, %eax
	jmp	.L1156
.L929:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L930
	movl	$0, %eax
	jmp	.L1156
.L930:
	addq	$1, %rbx
	jmp	.L853
.L802:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L931
	movl	$0, %eax
	jmp	.L1156
.L931:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L932
	movl	$0, %eax
	jmp	.L1156
.L932:
	addq	$1, %rbx
	jmp	.L853
.L803:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L933
	movl	$0, %eax
	jmp	.L1156
.L933:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L934
	movl	$0, %eax
	jmp	.L1156
.L934:
	addq	$1, %rbx
	jmp	.L853
.L804:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L935
	movl	$0, %eax
	jmp	.L1156
.L935:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L936
	movl	$0, %eax
	jmp	.L1156
.L936:
	addq	$1, %rbx
	jmp	.L853
.L805:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L937
	movl	$0, %eax
	jmp	.L1156
.L937:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L938
	movl	$0, %eax
	jmp	.L1156
.L938:
	addq	$1, %rbx
	jmp	.L853
.L826:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -124(%rbp)
	addq	$3, %rbx
	movl	-124(%rbp), %eax
	cmpl	-452(%rbp), %eax
	jge	.L939
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L940
.L939:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdx
	movq	%r12, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$1, %eax
	jmp	.L941
.L940:
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-464(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
.L941:
	movl	%eax, -148(%rbp)
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	cmpl	$51, %eax
	jl	.L942
	cmpl	$56, %eax
	jle	.L943
	cmpl	$58, %eax
	jg	.L942
	jmp	.L1157
.L943:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	-51(%rax), %r15d
	movl	%r15d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_min(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -76(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_max(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L945
	movl	$2147483647, -72(%rbp)
	jmp	.L946
.L945:
	jmp	.L946
.L1157:
	movzbl	(%rbx), %eax
	cmpb	$58, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -76(%rbp)
	leaq	3(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L947
	movl	$2147483647, -72(%rbp)
.L947:
	addq	$5, %rbx
	jmp	.L946
.L942:
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-148(%rbp), %edx
	movl	-124(%rbp), %eax
	movq	%rsi, %r8
	movq	%r12, %rsi
	movl	%eax, %edi
	call	match_ref
	testl	%eax, %eax
	jne	.L948
	movl	$0, %eax
	jmp	.L1156
.L948:
	movl	-148(%rbp), %eax
	cltq
	addq	%rax, %r12
	jmp	.L853
.L946:
	cmpl	$0, -148(%rbp)
	jne	.L949
	jmp	.L853
.L949:
	movl	$1, %r13d
	jmp	.L950
.L952:
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-148(%rbp), %edx
	movl	-124(%rbp), %eax
	movq	%rsi, %r8
	movq	%r12, %rsi
	movl	%eax, %edi
	call	match_ref
	testl	%eax, %eax
	jne	.L951
	movl	$0, %eax
	jmp	.L1156
.L951:
	movl	-148(%rbp), %eax
	cltq
	addq	%rax, %r12
	addl	$1, %r13d
.L950:
	cmpl	-76(%rbp), %r13d
	jle	.L952
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L953
	jmp	.L853
.L953:
	cmpl	$0, -68(%rbp)
	je	.L954
	movl	-76(%rbp), %r13d
.L958:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L955
	movl	%r14d, %eax
	jmp	.L1156
.L955:
	cmpl	-72(%rbp), %r13d
	jge	.L956
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-148(%rbp), %edx
	movl	-124(%rbp), %eax
	movq	%rsi, %r8
	movq	%r12, %rsi
	movl	%eax, %edi
	call	match_ref
	testl	%eax, %eax
	jne	.L957
.L956:
	movl	$0, %eax
	jmp	.L1156
.L957:
	movl	-148(%rbp), %eax
	cltq
	addq	%rax, %r12
	addl	$1, %r13d
	jmp	.L958
.L954:
	movq	%r12, -160(%rbp)
	movl	-76(%rbp), %r13d
	jmp	.L959
.L962:
	movq	-472(%rbp), %rsi
	movq	-464(%rbp), %rcx
	movl	-148(%rbp), %edx
	movl	-124(%rbp), %eax
	movq	%rsi, %r8
	movq	%r12, %rsi
	movl	%eax, %edi
	call	match_ref
	testl	%eax, %eax
	jne	.L960
	jmp	.L961
.L960:
	movl	-148(%rbp), %eax
	cltq
	addq	%rax, %r12
	addl	$1, %r13d
.L959:
	cmpl	-72(%rbp), %r13d
	jl	.L962
.L961:
	jmp	.L963
.L965:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L964
	movl	%r14d, %eax
	jmp	.L1156
.L964:
	movl	-148(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, %r12
.L963:
	cmpq	-160(%rbp), %r12
	jnb	.L965
	movl	$0, %eax
	jmp	.L1156
.L825:
	leaq	1(%rbx), %rax
	movq	%rax, -168(%rbp)
	addq	$33, %rbx
	movzbl	(%rbx), %eax
	movzbl	%al, %eax
	cmpl	$51, %eax
	jl	.L966
	cmpl	$56, %eax
	jle	.L967
	cmpl	$58, %eax
	jg	.L966
	jmp	.L1158
.L967:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	-51(%rax), %r15d
	movl	%r15d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_min(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -76(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_max(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L969
	movl	$2147483647, -72(%rbp)
	jmp	.L970
.L969:
	jmp	.L970
.L1158:
	movzbl	(%rbx), %eax
	cmpb	$58, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -76(%rbp)
	leaq	3(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	4(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L971
	movl	$2147483647, -72(%rbp)
.L971:
	addq	$5, %rbx
	jmp	.L970
.L966:
	movl	$1, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	nop
.L970:
	movl	$1, %r13d
	jmp	.L972
.L975:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L973
	movl	$0, %eax
	jmp	.L1156
.L973:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movl	%r15d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%r15d, %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L974
	movl	$0, %eax
	jmp	.L1156
.L974:
	addl	$1, %r13d
.L972:
	cmpl	-76(%rbp), %r13d
	jle	.L975
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L976
	jmp	.L853
.L976:
	cmpl	$0, -68(%rbp)
	je	.L977
	movl	-76(%rbp), %r13d
.L982:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L978
	movl	%r14d, %eax
	jmp	.L1156
.L978:
	cmpl	-72(%rbp), %r13d
	jge	.L979
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L980
.L979:
	movl	$0, %eax
	jmp	.L1156
.L980:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movl	%r15d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%r15d, %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L981
	movl	$0, %eax
	jmp	.L1156
.L981:
	addl	$1, %r13d
	jmp	.L982
.L977:
	movq	%r12, -160(%rbp)
	movl	-76(%rbp), %r13d
	jmp	.L983
.L987:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L984
	jmp	.L985
.L984:
	movzbl	(%r12), %eax
	movzbl	%al, %r15d
	movl	%r15d, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%r15d, %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L986
	jmp	.L985
.L986:
	addq	$1, %r12
	addl	$1, %r13d
.L983:
	cmpl	-72(%rbp), %r13d
	jl	.L987
.L985:
	jmp	.L988
.L989:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	subq	$1, %r12
	testl	%r14d, %r14d
	je	.L988
	movl	%r14d, %eax
	jmp	.L1156
.L988:
	cmpq	-160(%rbp), %r12
	jnb	.L989
	movl	$0, %eax
	jmp	.L1156
.L813:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdx
	movq	%r12, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	jg	.L990
	movl	$0, %eax
	jmp	.L1156
.L990:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %edx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L991
	movl	$0, %eax
	jmp	.L1156
.L991:
	addq	$2, %rbx
	jmp	.L853
.L814:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdx
	movq	%r12, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	jg	.L992
	movl	$0, %eax
	jmp	.L1156
.L992:
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-464(%rbp), %rax
	movq	32(%rax), %rcx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L993
	movl	$0, %eax
	jmp	.L1156
.L993:
	addq	$2, %rbx
	jmp	.L853
.L818:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	addq	$3, %rbx
	jmp	.L994
.L817:
	movl	$0, -76(%rbp)
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movzbl	(%rbx), %eax
	cmpb	$31, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	addq	$3, %rbx
	jmp	.L994
.L816:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	-24(%rax), %r15d
	movl	%r15d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_min(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -76(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_max(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L994
	movl	$2147483647, -72(%rbp)
.L994:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rcx
	movq	%r12, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	%rax, %rdx
	jle	.L995
	movl	$0, %eax
	jmp	.L1156
.L995:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-472(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L996
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movl	$1, %r13d
	jmp	.L997
.L999:
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	je	.L998
	movl	$0, %eax
	jmp	.L1156
.L998:
	addl	$1, %r13d
.L997:
	cmpl	-76(%rbp), %r13d
	jle	.L999
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L1000
	jmp	.L853
.L1000:
	cmpl	$0, -68(%rbp)
	je	.L1001
	movl	-76(%rbp), %r13d
.L1005:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L1002
	movl	%r14d, %eax
	jmp	.L1156
.L1002:
	cmpl	-72(%rbp), %r13d
	jge	.L1003
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1003
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	je	.L1004
.L1003:
	movl	$0, %eax
	jmp	.L1156
.L1004:
	addl	$1, %r13d
	jmp	.L1005
.L1001:
	movq	%r12, -160(%rbp)
	movl	-76(%rbp), %r13d
	jmp	.L1006
.L1008:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1007
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1007
	addq	$1, %r12
	addl	$1, %r13d
.L1006:
	cmpl	-72(%rbp), %r13d
	jl	.L1008
.L1007:
	jmp	.L1009
.L1010:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	subq	$1, %r12
	testl	%r14d, %r14d
	je	.L1009
	movl	%r14d, %eax
	jmp	.L1156
.L1009:
	cmpq	-160(%rbp), %r12
	jnb	.L1010
	movl	$0, %eax
	jmp	.L1156
.L996:
	movl	$1, %r13d
	jmp	.L1011
.L1013:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	je	.L1012
	movl	$0, %eax
	jmp	.L1156
.L1012:
	addl	$1, %r13d
.L1011:
	cmpl	-76(%rbp), %r13d
	jle	.L1013
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L1014
	jmp	.L853
.L1014:
	cmpl	$0, -68(%rbp)
	je	.L1015
	movl	-76(%rbp), %r13d
.L1019:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L1016
	movl	%r14d, %eax
	jmp	.L1156
.L1016:
	cmpl	-72(%rbp), %r13d
	jge	.L1017
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1017
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	je	.L1018
.L1017:
	movl	$0, %eax
	jmp	.L1156
.L1018:
	addl	$1, %r13d
	jmp	.L1019
.L1015:
	movq	%r12, -160(%rbp)
	movl	-76(%rbp), %r13d
	jmp	.L1020
.L1022:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1021
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1021
	addq	$1, %r12
	addl	$1, %r13d
.L1020:
	cmpl	-72(%rbp), %r13d
	jl	.L1022
.L1021:
	jmp	.L1023
.L1024:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	subq	$1, %r12
	testl	%r14d, %r14d
	je	.L1023
	movl	%r14d, %eax
	jmp	.L1156
.L1023:
	cmpq	-160(%rbp), %r12
	jnb	.L1024
	movl	$0, %eax
	jmp	.L1156
.L815:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L1025
	movl	$0, %eax
	jmp	.L1156
.L1025:
	addq	$1, %rbx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-472(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L1026
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1027
	movl	$0, %eax
	jmp	.L1156
.L1026:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1027
	movl	$0, %eax
	jmp	.L1156
.L1027:
	jmp	.L853
.L821:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	addq	$3, %rbx
	jmp	.L1028
.L820:
	movl	$0, -76(%rbp)
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movzbl	(%rbx), %eax
	cmpb	$40, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	addq	$3, %rbx
	jmp	.L1028
.L819:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	-33(%rax), %r15d
	movl	%r15d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_min(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -76(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_max(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L1028
	movl	$2147483647, -72(%rbp)
.L1028:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rcx
	movq	%r12, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	%rax, %rdx
	jle	.L1029
	movl	$0, %eax
	jmp	.L1156
.L1029:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movq	-472(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L1030
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movl	$1, %r13d
	jmp	.L1031
.L1033:
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1032
	movl	$0, %eax
	jmp	.L1156
.L1032:
	addl	$1, %r13d
.L1031:
	cmpl	-76(%rbp), %r13d
	jle	.L1033
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L1034
	jmp	.L853
.L1034:
	cmpl	$0, -68(%rbp)
	je	.L1035
	movl	-76(%rbp), %r13d
.L1039:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L1036
	movl	%r14d, %eax
	jmp	.L1156
.L1036:
	cmpl	-72(%rbp), %r13d
	jge	.L1037
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1037
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1038
.L1037:
	movl	$0, %eax
	jmp	.L1156
.L1038:
	addl	$1, %r13d
	jmp	.L1039
.L1035:
	movq	%r12, -160(%rbp)
	movl	-76(%rbp), %r13d
	jmp	.L1040
.L1042:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1041
	movq	-464(%rbp), %rax
	movq	32(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	je	.L1041
	addq	$1, %r12
	addl	$1, %r13d
.L1040:
	cmpl	-72(%rbp), %r13d
	jl	.L1042
.L1041:
	jmp	.L1043
.L1045:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L1044
	movl	%r14d, %eax
	jmp	.L1156
.L1044:
	subq	$1, %r12
.L1043:
	cmpq	-160(%rbp), %r12
	jnb	.L1045
	movl	$0, %eax
	jmp	.L1156
.L1030:
	movl	$1, %r13d
	jmp	.L1046
.L1048:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1047
	movl	$0, %eax
	jmp	.L1156
.L1047:
	addl	$1, %r13d
.L1046:
	cmpl	-76(%rbp), %r13d
	jle	.L1048
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L1049
	jmp	.L853
.L1049:
	cmpl	$0, -68(%rbp)
	je	.L1050
	movl	-76(%rbp), %r13d
.L1054:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L1051
	movl	%r14d, %eax
	jmp	.L1156
.L1051:
	cmpl	-72(%rbp), %r13d
	jge	.L1052
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1052
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	jne	.L1053
.L1052:
	movl	$0, %eax
	jmp	.L1156
.L1053:
	addl	$1, %r13d
	jmp	.L1054
.L1050:
	movq	%r12, -160(%rbp)
	movl	-76(%rbp), %r13d
	jmp	.L1055
.L1057:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1056
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	cmpl	%r15d, %eax
	je	.L1056
	addq	$1, %r12
	addl	$1, %r13d
.L1055:
	cmpl	-72(%rbp), %r13d
	jl	.L1057
.L1056:
	jmp	.L1058
.L1060:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L1059
	movl	%r14d, %eax
	jmp	.L1156
.L1059:
	subq	$1, %r12
.L1058:
	cmpq	-160(%rbp), %r12
	jnb	.L1060
	movl	$0, %eax
	jmp	.L1156
.L824:
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	$1, -68(%rbp)
	addq	$3, %rbx
	jmp	.L1061
.L823:
	movl	$0, -76(%rbp)
	leaq	1(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	leaq	2(%rbx), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movzbl	(%rbx), %eax
	cmpb	$49, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	addq	$3, %rbx
	jmp	.L1061
.L822:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	-42(%rax), %r15d
	movl	%r15d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_min(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -76(%rbp)
	movslq	%r15d, %rax
	movzbl	rep_max(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L1061
	movl	$2147483647, -72(%rbp)
.L1061:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -172(%rbp)
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rcx
	movq	%r12, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	%rax, %rdx
	jle	.L1062
	movl	$0, %eax
	jmp	.L1156
.L1062:
	cmpl	$0, -76(%rbp)
	jle	.L1063
	movl	-172(%rbp), %eax
	subl	$5, %eax
	cmpl	$7, %eax
	ja	.L1064
	movl	%eax, %eax
	movq	.L1066(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1066:
	.quad	.L1065
	.quad	.L1067
	.quad	.L1068
	.quad	.L1069
	.quad	.L1070
	.quad	.L1071
	.quad	.L1072
	.quad	.L1073
	.text
.L1072:
	movq	-472(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L1074
	movl	$1, %r13d
	jmp	.L1075
.L1077:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L1076
	movl	$0, %eax
	jmp	.L1156
.L1076:
	addl	$1, %r13d
.L1075:
	cmpl	-76(%rbp), %r13d
	jle	.L1077
	jmp	.L1063
.L1074:
	movl	-76(%rbp), %eax
	cltq
	addq	%rax, %r12
	jmp	.L1063
.L1073:
	movl	-76(%rbp), %eax
	cltq
	addq	%rax, %r12
	jmp	.L1063
.L1065:
	movl	$1, %r13d
	jmp	.L1079
.L1081:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1080
	movl	$0, %eax
	jmp	.L1156
.L1080:
	addl	$1, %r13d
.L1079:
	cmpl	-76(%rbp), %r13d
	jle	.L1081
	jmp	.L1063
.L1067:
	movl	$1, %r13d
	jmp	.L1082
.L1084:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1083
	movl	$0, %eax
	jmp	.L1156
.L1083:
	addl	$1, %r13d
.L1082:
	cmpl	-76(%rbp), %r13d
	jle	.L1084
	jmp	.L1063
.L1068:
	movl	$1, %r13d
	jmp	.L1085
.L1087:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1086
	movl	$0, %eax
	jmp	.L1156
.L1086:
	addl	$1, %r13d
.L1085:
	cmpl	-76(%rbp), %r13d
	jle	.L1087
	jmp	.L1063
.L1069:
	movl	$1, %r13d
	jmp	.L1088
.L1090:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1089
	movl	$0, %eax
	jmp	.L1156
.L1089:
	addl	$1, %r13d
.L1088:
	cmpl	-76(%rbp), %r13d
	jle	.L1090
	jmp	.L1063
.L1070:
	movl	$1, %r13d
	jmp	.L1091
.L1093:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1092
	movl	$0, %eax
	jmp	.L1156
.L1092:
	addl	$1, %r13d
.L1091:
	cmpl	-76(%rbp), %r13d
	jle	.L1093
	jmp	.L1063
.L1071:
	movl	$1, %r13d
	jmp	.L1094
.L1096:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1095
	movl	$0, %eax
	jmp	.L1156
.L1095:
	addl	$1, %r13d
.L1094:
	cmpl	-76(%rbp), %r13d
	jle	.L1096
	jmp	.L1063
.L1064:
	movl	$-14, %eax
	jmp	.L1156
.L1063:
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L1097
	jmp	.L853
.L1097:
	cmpl	$0, -68(%rbp)
	je	.L1098
	movl	-76(%rbp), %r13d
.L1120:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.L1099
	movl	%r14d, %eax
	jmp	.L1156
.L1099:
	cmpl	-72(%rbp), %r13d
	jge	.L1100
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	ja	.L1101
.L1100:
	movl	$0, %eax
	jmp	.L1156
.L1101:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movzbl	%al, %r15d
	movl	-172(%rbp), %eax
	subl	$5, %eax
	cmpl	$7, %eax
	ja	.L1102
	movl	%eax, %eax
	movq	.L1104(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1104:
	.quad	.L1103
	.quad	.L1105
	.quad	.L1106
	.quad	.L1107
	.quad	.L1108
	.quad	.L1109
	.quad	.L1110
	.quad	.L1159
	.text
.L1110:
	movq	-472(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L1112
	cmpl	$10, %r15d
	jne	.L1112
	movl	$0, %eax
	jmp	.L1156
.L1112:
	jmp	.L1113
.L1103:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1114
	movl	$0, %eax
	jmp	.L1156
.L1114:
	jmp	.L1113
.L1105:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1115
	movl	$0, %eax
	jmp	.L1156
.L1115:
	jmp	.L1113
.L1106:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1116
	movl	$0, %eax
	jmp	.L1156
.L1116:
	jmp	.L1113
.L1107:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1117
	movl	$0, %eax
	jmp	.L1156
.L1117:
	jmp	.L1113
.L1108:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1118
	movl	$0, %eax
	jmp	.L1156
.L1118:
	jmp	.L1113
.L1109:
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movslq	%r15d, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1119
	movl	$0, %eax
	jmp	.L1156
.L1119:
	jmp	.L1113
.L1102:
	movl	$-14, %eax
	jmp	.L1156
.L1159:
	nop
.L1113:
	addl	$1, %r13d
	jmp	.L1120
.L1098:
	movq	%r12, -160(%rbp)
	movl	-172(%rbp), %eax
	subl	$5, %eax
	cmpl	$7, %eax
	ja	.L1121
	movl	%eax, %eax
	movq	.L1123(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1123:
	.quad	.L1122
	.quad	.L1124
	.quad	.L1125
	.quad	.L1126
	.quad	.L1127
	.quad	.L1128
	.quad	.L1129
	.quad	.L1130
	.text
.L1129:
	movq	-472(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L1130
	movl	-76(%rbp), %r13d
	jmp	.L1131
.L1133:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1132
	movzbl	(%r12), %eax
	cmpb	$10, %al
	je	.L1132
	addq	$1, %r12
	addl	$1, %r13d
.L1131:
	cmpl	-72(%rbp), %r13d
	jl	.L1133
.L1132:
	jmp	.L1134
.L1130:
	movl	-72(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %r15d
	movslq	%r15d, %rdx
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rcx
	movq	%r12, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	%rax, %rdx
	jle	.L1135
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdx
	movq	%r12, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %r15d
.L1135:
	movslq	%r15d, %rax
	addq	%rax, %r12
	jmp	.L1134
.L1122:
	movl	-76(%rbp), %r13d
	jmp	.L1136
.L1138:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1137
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1137
	addq	$1, %r12
	addl	$1, %r13d
.L1136:
	cmpl	-72(%rbp), %r13d
	jl	.L1138
.L1137:
	jmp	.L1134
.L1124:
	movl	-76(%rbp), %r13d
	jmp	.L1139
.L1141:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1140
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1140
	addq	$1, %r12
	addl	$1, %r13d
.L1139:
	cmpl	-72(%rbp), %r13d
	jl	.L1141
.L1140:
	jmp	.L1134
.L1125:
	movl	-76(%rbp), %r13d
	jmp	.L1142
.L1144:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1143
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1143
	addq	$1, %r12
	addl	$1, %r13d
.L1142:
	cmpl	-72(%rbp), %r13d
	jl	.L1144
.L1143:
	jmp	.L1134
.L1126:
	movl	-76(%rbp), %r13d
	jmp	.L1145
.L1147:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1146
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1146
	addq	$1, %r12
	addl	$1, %r13d
.L1145:
	cmpl	-72(%rbp), %r13d
	jl	.L1147
.L1146:
	jmp	.L1134
.L1127:
	movl	-76(%rbp), %r13d
	jmp	.L1148
.L1150:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1149
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1149
	addq	$1, %r12
	addl	$1, %r13d
.L1148:
	cmpl	-72(%rbp), %r13d
	jl	.L1150
.L1149:
	jmp	.L1134
.L1128:
	movl	-76(%rbp), %r13d
	jmp	.L1151
.L1153:
	movq	-464(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%r12, %rax
	jbe	.L1152
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movzbl	(%r12), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1152
	addq	$1, %r12
	addl	$1, %r13d
.L1151:
	cmpl	-72(%rbp), %r13d
	jl	.L1153
.L1152:
	jmp	.L1134
.L1121:
	movl	$-14, %eax
	jmp	.L1156
.L1134:
	jmp	.L1154
.L1155:
	subq	$8, %rsp
	movq	-480(%rbp), %rsi
	movq	-472(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, %r14d
	subq	$1, %r12
	testl	%r14d, %r14d
	je	.L1154
	movl	%r14d, %eax
	jmp	.L1156
.L1154:
	cmpq	-160(%rbp), %r12
	jnb	.L1155
	movl	$0, %eax
	jmp	.L1156
.L794:
	movl	$-5, %eax
	jmp	.L1156
.L853:
	jmp	.L787
.L1156:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	match, .-match
	.globl	pcre_exec
	.type	pcre_exec, @function
pcre_exec:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$432, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -408(%rbp)
	movq	%rsi, -416(%rbp)
	movq	%rdx, -424(%rbp)
	movl	%ecx, -428(%rbp)
	movl	%r8d, -432(%rbp)
	movl	%r9d, -436(%rbp)
	movl	$-1, -32(%rbp)
	movl	$-1, -36(%rbp)
	movl	$-1, -40(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -72(%rbp)
	movl	-432(%rbp), %eax
	movslq	%eax, %rdx
	movq	-424(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-436(%rbp), %eax
	andl	$-42385, %eax
	testl	%eax, %eax
	je	.L1161
	movl	$-3, %eax
	jmp	.L1226
.L1161:
	cmpq	$0, -104(%rbp)
	je	.L1163
	cmpq	$0, -424(%rbp)
	je	.L1163
	cmpq	$0, 16(%rbp)
	jne	.L1164
	cmpl	$0, 24(%rbp)
	jle	.L1164
.L1163:
	movl	$-2, %eax
	jmp	.L1226
.L1164:
	cmpl	$0, 24(%rbp)
	jns	.L1165
	movl	$-15, %eax
	jmp	.L1226
.L1165:
	movq	$0, -96(%rbp)
	movq	$10000000, -296(%rbp)
	movq	$0, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -416(%rbp)
	je	.L1166
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ebx
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1167
	movq	-416(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
.L1167:
	movl	%ebx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1168
	movq	-416(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -296(%rbp)
.L1168:
	movl	%ebx, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1169
	movq	-416(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -160(%rbp)
.L1169:
	movl	%ebx, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1166
	movq	-416(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
.L1166:
	cmpq	$0, -64(%rbp)
	jne	.L1170
	movq	$pcre_default_tables, -64(%rbp)
.L1170:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1346589253, %eax
	je	.L1171
	leaq	-352(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	-400(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	try_flipped
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L1172
	movl	$-4, %eax
	jmp	.L1226
.L1172:
	cmpq	$0, -96(%rbp)
	je	.L1171
	leaq	-352(%rbp), %rax
	movq	%rax, -96(%rbp)
.L1171:
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movl	-436(%rbp), %eax
	orl	%edx, %eax
	andl	$16, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -124(%rbp)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %edx
	movq	-104(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %ecx
	movq	-104(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	imull	%ecx, %eax
	cltq
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-432(%rbp), %eax
	movl	%eax, -176(%rbp)
	movq	-216(%rbp), %rdx
	movl	-428(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -240(%rbp)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -244(%rbp)
	movl	-436(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -252(%rbp)
	movl	-436(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -248(%rbp)
	movl	-436(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -236(%rbp)
	movl	-436(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -232(%rbp)
	movl	$0, -228(%rbp)
	movq	$0, -168(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-64(%rbp), %rax
	addq	$832, %rax
	movq	%rax, -264(%rbp)
	movl	-232(%rbp), %eax
	testl	%eax, %eax
	je	.L1173
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	andl	$67108864, %eax
	testl	%eax, %eax
	je	.L1173
	movl	$-13, %eax
	jmp	.L1226
.L1173:
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	andl	$7, %eax
	movq	%rax, -112(%rbp)
	movl	24(%rbp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	24(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L1174
	movq	-104(%rbp), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %esi
	movl	-28(%rbp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jl	.L1174
	movq	-104(%rbp), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	pcre_malloc(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	jne	.L1175
	movl	$-6, %eax
	jmp	.L1226
.L1175:
	movl	$1, -44(%rbp)
	jmp	.L1176
.L1174:
	movq	16(%rbp), %rax
	movq	%rax, -288(%rbp)
.L1176:
	movl	-28(%rbp), %eax
	movl	%eax, -280(%rbp)
	movl	-28(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	$0, -256(%rbp)
	movl	$-1, -180(%rbp)
	movq	-104(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	addl	%eax, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	24(%rbp), %eax
	jle	.L1177
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
.L1177:
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	je	.L1178
	movq	-288(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movslq	%eax, %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	$4, %rax
	leaq	(%rbx,%rax), %r12
	jmp	.L1179
.L1180:
	movl	$-1, (%rbx)
.L1179:
	subq	$4, %rbx
	cmpq	%r12, %rbx
	jnb	.L1180
.L1178:
	cmpl	$0, -124(%rbp)
	jne	.L1181
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L1182
	movq	-104(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	andl	$255, %eax
	movl	%eax, -32(%rbp)
	movq	-104(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	cmpl	$1, -48(%rbp)
	jne	.L1181
	movq	-272(%rbp), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	jmp	.L1181
.L1182:
	cmpl	$0, -128(%rbp)
	jne	.L1181
	cmpq	$0, -96(%rbp)
	je	.L1181
	movq	-96(%rbp), %rax
	movl	4(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1181
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
.L1181:
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	.L1184
	movq	-104(%rbp), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %eax
	andl	$255, %eax
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	256(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
.L1184:
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	je	.L1185
	movq	-288(%rbp), %rbx
	movl	-24(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	(%rbx,%rax), %r12
	jmp	.L1186
.L1187:
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	$-1, (%rax)
.L1186:
	cmpq	%r12, %rbx
	jb	.L1187
.L1185:
	cmpl	$0, -32(%rbp)
	js	.L1188
	cmpl	$0, -48(%rbp)
	je	.L1189
	jmp	.L1190
.L1192:
	addq	$1, -80(%rbp)
.L1190:
	movq	-80(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jnb	.L1191
	movq	-272(%rbp), %rdx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-32(%rbp), %eax
	jne	.L1192
	jmp	.L1191
.L1189:
	jmp	.L1193
.L1194:
	addq	$1, -80(%rbp)
.L1193:
	movq	-80(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jnb	.L1191
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-32(%rbp), %eax
	jne	.L1194
	jmp	.L1191
.L1188:
	cmpl	$0, -128(%rbp)
	je	.L1195
	movq	-216(%rbp), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jnb	.L1191
	jmp	.L1196
.L1197:
	addq	$1, -80(%rbp)
.L1196:
	movq	-80(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jnb	.L1191
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L1197
	jmp	.L1191
.L1195:
	cmpq	$0, -72(%rbp)
	je	.L1191
	jmp	.L1198
.L1200:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movl	%ebx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%ebx, %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1199
	addq	$1, -80(%rbp)
	jmp	.L1198
.L1199:
	jmp	.L1191
.L1198:
	movq	-80(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L1200
.L1191:
	cmpl	$0, -36(%rbp)
	js	.L1201
	movq	-136(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$999, %rax
	jg	.L1201
	movl	-232(%rbp), %eax
	testl	%eax, %eax
	jne	.L1201
	cmpl	$0, -32(%rbp)
	js	.L1202
	movl	$1, %edx
	jmp	.L1203
.L1202:
	movl	$0, %edx
.L1203:
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	cmpq	-88(%rbp), %rbx
	jbe	.L1201
	cmpl	$0, -52(%rbp)
	je	.L1204
	jmp	.L1205
.L1208:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	cmpl	-36(%rbp), %r12d
	je	.L1206
	cmpl	-40(%rbp), %r12d
	jne	.L1205
.L1206:
	subq	$1, %rbx
	nop
	jmp	.L1209
.L1205:
	cmpq	-136(%rbp), %rbx
	jb	.L1208
	jmp	.L1209
.L1204:
	jmp	.L1210
.L1211:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-36(%rbp), %eax
	jne	.L1210
	subq	$1, %rbx
	jmp	.L1209
.L1210:
	cmpq	-136(%rbp), %rbx
	jb	.L1211
.L1209:
	cmpq	-136(%rbp), %rbx
	jb	.L1212
	jmp	.L1213
.L1212:
	movq	%rbx, -88(%rbp)
.L1201:
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	$0, -304(%rbp)
	movq	-224(%rbp), %rsi
	subq	$8, %rsp
	movq	-112(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-80(%rbp), %rax
	pushq	$2
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	match
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L1214
	addq	$1, -80(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L1215
	jmp	.L1213
.L1214:
	cmpl	$1, -20(%rbp)
	je	.L1216
	movl	-20(%rbp), %eax
	jmp	.L1226
.L1216:
	cmpl	$0, -44(%rbp)
	je	.L1217
	cmpl	$3, 24(%rbp)
	jle	.L1218
	movl	24(%rbp), %eax
	subl	$2, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
.L1218:
	movl	-184(%rbp), %eax
	cmpl	24(%rbp), %eax
	jle	.L1219
	movl	$1, -256(%rbp)
.L1219:
	movq	pcre_free(%rip), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L1217:
	movl	-256(%rbp), %eax
	testl	%eax, %eax
	jne	.L1220
	movl	-184(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	jmp	.L1221
.L1220:
	movl	$0, %eax
.L1221:
	movl	%eax, -20(%rbp)
	cmpl	$1, 24(%rbp)
	jg	.L1222
	movl	$0, -20(%rbp)
	jmp	.L1223
.L1222:
	movq	-80(%rbp), %rax
	movq	-216(%rbp), %rdx
	subq	%rdx, %rax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	addq	$4, %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-216(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%edx, (%rax)
.L1223:
	movl	-20(%rbp), %eax
	jmp	.L1226
.L1215:
	movq	-80(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jbe	.L1184
.L1213:
	cmpl	$0, -44(%rbp)
	je	.L1224
	movq	pcre_free(%rip), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L1224:
	movl	-232(%rbp), %eax
	testl	%eax, %eax
	je	.L1225
	movl	-228(%rbp), %eax
	testl	%eax, %eax
	je	.L1225
	movl	$-12, %eax
	jmp	.L1226
.L1225:
	movl	$-1, %eax
.L1226:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	pcre_exec, .-pcre_exec
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
