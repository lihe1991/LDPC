function H_sparse = N96M48()
H = [34	93	26	50	8	49
32	76	42	72	6	67
30	54	14	80	38	81
46	88	8	90	47	55
13	84	38	69	26	59
41	92	30	88	13	76
44	68	29	55	21	89
35	70	11	74	34	88
1	55	20	94	37	63
40	80	32	77	29	52
4	52	2	83	1	50
7	81	27	59	46	64
5	69	4	92	9	93
45	74	6	52	14	92
38	67	15	71	27	74
21	65	31	57	7	73
3	62	37	54	33	71
23	94	45	84	4	95
12	89	23	65	32	58
15	77	35	58	42	54
17	60	21	75	5	87
22	64	5	78	20	79
42	83	33	79	12	85
16	50	13	62	40	86
2	63	44	70	28	57
26	91	46	56	23	82
33	57	25	60	15	80
27	72	9	61	48	75
48	71	47	81	16	77
9	82	17	68	45	62
11	51	43	73	22	72
31	90	28	82	3	96
19	73	10	63	30	56
43	59	3	67	18	70
37	85	41	86	17	66
39	86	18	95	10	60
10	58	16	91	31	51
18	56	40	76	44	78
6	66	7	49	11	53
29	78	36	93	19	65
20	96	24	89	36	83
25	49	39	64	2	90
36	61	22	53	35	91
28	95	34	85	25	61
47	53	19	87	41	84
24	79	48	51	39	69
8	75	1	96	43	68
14	87	12	66	24	94];
H_sparse = zeros(size(H, 1), max(max(H)));
for m = 1 : size(H, 1)
    ones_index = H(m, :);
    ones_index = ones_index(ones_index ~= 0);
    H_sparse(m, ones_index) = 1;
end
end