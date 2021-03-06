PGDMP         !                z            GFINEST    14.1    14.1 z    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16562    GFINEST    DATABASE     i   CREATE DATABASE "GFINEST" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.utf8';
    DROP DATABASE "GFINEST";
                postgres    false            ?            1259    16829    clientes    TABLE     ?   CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    id_pessoa integer NOT NULL,
    cod_venda integer NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            ?            1259    16828    clientes_id_cliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public          postgres    false    231            ?           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public          postgres    false    230            ?            1259    16765    compras    TABLE     ?   CREATE TABLE public.compras (
    id_compra integer NOT NULL,
    dt_compra timestamp without time zone NOT NULL,
    valor_total_compra numeric NOT NULL,
    id_nota integer NOT NULL,
    id_fornecedor integer NOT NULL,
    cod_prod integer NOT NULL
);
    DROP TABLE public.compras;
       public         heap    postgres    false            ?            1259    16718    cupom_fiscal    TABLE     ?   CREATE TABLE public.cupom_fiscal (
    cod_cupom integer NOT NULL,
    qtd_item integer NOT NULL,
    dt_venda timestamp without time zone NOT NULL,
    total_item numeric NOT NULL,
    id_pgmt integer NOT NULL,
    cod_prod integer NOT NULL
);
     DROP TABLE public.cupom_fiscal;
       public         heap    postgres    false            ?            1259    16717    cupom_fiscal_cod_cupom_seq    SEQUENCE     ?   CREATE SEQUENCE public.cupom_fiscal_cod_cupom_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cupom_fiscal_cod_cupom_seq;
       public          postgres    false    222            ?           0    0    cupom_fiscal_cod_cupom_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cupom_fiscal_cod_cupom_seq OWNED BY public.cupom_fiscal.cod_cupom;
          public          postgres    false    221            ?            1259    16787    estoque    TABLE     ?   CREATE TABLE public.estoque (
    id_estoque integer NOT NULL,
    qtd_estoque integer NOT NULL,
    movimento_estoque integer NOT NULL,
    cod_prod integer NOT NULL
);
    DROP TABLE public.estoque;
       public         heap    postgres    false            ?            1259    16709 
   forma_pgmt    TABLE     k   CREATE TABLE public.forma_pgmt (
    id_pgmt integer NOT NULL,
    desc_pgmt character varying NOT NULL
);
    DROP TABLE public.forma_pgmt;
       public         heap    postgres    false            ?            1259    16708    forma_pgmt_id_pgmt_seq    SEQUENCE     ?   CREATE SEQUENCE public.forma_pgmt_id_pgmt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.forma_pgmt_id_pgmt_seq;
       public          postgres    false    220            ?           0    0    forma_pgmt_id_pgmt_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.forma_pgmt_id_pgmt_seq OWNED BY public.forma_pgmt.id_pgmt;
          public          postgres    false    219            ?            1259    16745    fornecedores    TABLE        CREATE TABLE public.fornecedores (
    id_fornecedor integer NOT NULL,
    razao_social_forn character varying(50) NOT NULL,
    nm_fantasia_forn character varying(50) NOT NULL,
    cnpj_forn integer NOT NULL,
    ins_estadual_forn integer,
    ins_municipal_forn integer,
    email1forn character varying(50) NOT NULL,
    nm_contato1 character varying(50) NOT NULL,
    tel_contato1 integer NOT NULL,
    nm_contato2 character varying(50),
    email2_contato character varying(50),
    tel_contato2 integer
);
     DROP TABLE public.fornecedores;
       public         heap    postgres    false            ?            1259    16744    fornecedores_id_fornecedor_seq    SEQUENCE     ?   CREATE SEQUENCE public.fornecedores_id_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.fornecedores_id_fornecedor_seq;
       public          postgres    false    225            ?           0    0    fornecedores_id_fornecedor_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.fornecedores_id_fornecedor_seq OWNED BY public.fornecedores.id_fornecedor;
          public          postgres    false    224            ?            1259    16662    funcionarios    TABLE     ?  CREATE TABLE public.funcionarios (
    matricula_func integer NOT NULL,
    nome_func character varying(50) NOT NULL,
    cpf_func character varying(11) NOT NULL,
    rg_func integer,
    sexo character varying(10),
    dt_nasc date NOT NULL,
    senha character varying(20) NOT NULL,
    cargo character varying(50) NOT NULL,
    dt_admissao date NOT NULL,
    dt_demissao date,
    id_pessoa integer NOT NULL
);
     DROP TABLE public.funcionarios;
       public         heap    postgres    false            ?            1259    16578    grupos    TABLE     e   CREATE TABLE public.grupos (
    cod_grupo integer NOT NULL,
    nome_grupo character varying(40)
);
    DROP TABLE public.grupos;
       public         heap    postgres    false            ?            1259    16577    grupos_cod_grupo_seq    SEQUENCE     ?   CREATE SEQUENCE public.grupos_cod_grupo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.grupos_cod_grupo_seq;
       public          postgres    false    214            ?           0    0    grupos_cod_grupo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.grupos_cod_grupo_seq OWNED BY public.grupos.cod_grupo;
          public          postgres    false    213            ?            1259    16571    localizacao_estoque    TABLE     v   CREATE TABLE public.localizacao_estoque (
    id_local integer NOT NULL,
    descricao_local character varying(40)
);
 '   DROP TABLE public.localizacao_estoque;
       public         heap    postgres    false            ?            1259    16570     localizacao_estoque_id_local_seq    SEQUENCE     ?   CREATE SEQUENCE public.localizacao_estoque_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.localizacao_estoque_id_local_seq;
       public          postgres    false    212            ?           0    0     localizacao_estoque_id_local_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.localizacao_estoque_id_local_seq OWNED BY public.localizacao_estoque.id_local;
          public          postgres    false    211            ?            1259    16737 
   nf_compras    TABLE     ?   CREATE TABLE public.nf_compras (
    id_nota_compra integer NOT NULL,
    dt_nota date NOT NULL,
    valor_total_nota numeric NOT NULL
);
    DROP TABLE public.nf_compras;
       public         heap    postgres    false            ?            1259    16876 	   nf_vendas    TABLE     ?   CREATE TABLE public.nf_vendas (
    id_nota_venda integer NOT NULL,
    dt_nota_venda timestamp without time zone NOT NULL,
    valor_nota_venda numeric NOT NULL,
    id_pj integer NOT NULL,
    cod_prod integer NOT NULL
);
    DROP TABLE public.nf_vendas;
       public         heap    postgres    false            ?            1259    16906 
   permissoes    TABLE     ?   CREATE TABLE public.permissoes (
    id_permissoes integer NOT NULL,
    nome_permissao character varying(30) NOT NULL,
    matricula_func integer NOT NULL
);
    DROP TABLE public.permissoes;
       public         heap    postgres    false            ?            1259    16894    pessoa_fisica    TABLE       CREATE TABLE public.pessoa_fisica (
    id_pf integer NOT NULL,
    nome_pf character varying(40) NOT NULL,
    sexo character varying(20) NOT NULL,
    cpf_pf character varying(11) NOT NULL,
    rg_pf integer,
    dt_nasc date NOT NULL,
    id_cliente integer NOT NULL
);
 !   DROP TABLE public.pessoa_fisica;
       public         heap    postgres    false            ?            1259    16893    pessoa_fisica_id_pf_seq    SEQUENCE     ?   CREATE SEQUENCE public.pessoa_fisica_id_pf_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pessoa_fisica_id_pf_seq;
       public          postgres    false    236            ?           0    0    pessoa_fisica_id_pf_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pessoa_fisica_id_pf_seq OWNED BY public.pessoa_fisica.id_pf;
          public          postgres    false    235            ?            1259    16865    pessoa_juridica    TABLE       CREATE TABLE public.pessoa_juridica (
    id_pj integer NOT NULL,
    razao_social_pj character varying(50) NOT NULL,
    nm_fantasia_pj character varying(50) NOT NULL,
    cnpj_pj integer NOT NULL,
    ins_estadual_pj integer,
    ins_municipal_pj integer,
    email1_pj character varying(50) NOT NULL,
    nm_contato1 character varying(50) NOT NULL,
    tel_contato1 integer NOT NULL,
    nm_contato2 character varying(50),
    email2_contato character varying(50),
    tel_contato2 integer,
    id_cliente integer NOT NULL
);
 #   DROP TABLE public.pessoa_juridica;
       public         heap    postgres    false            ?            1259    16864    pessoa_juridica_id_pj_seq    SEQUENCE     ?   CREATE SEQUENCE public.pessoa_juridica_id_pj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pessoa_juridica_id_pj_seq;
       public          postgres    false    233            ?           0    0    pessoa_juridica_id_pj_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pessoa_juridica_id_pj_seq OWNED BY public.pessoa_juridica.id_pj;
          public          postgres    false    232            ?            1259    16623    pessoas    TABLE     ?  CREATE TABLE public.pessoas (
    id_pessoa integer NOT NULL,
    rua character varying(50) NOT NULL,
    cep integer NOT NULL,
    bairro character varying(50) NOT NULL,
    cidade character varying(50) NOT NULL,
    estado character varying(50) NOT NULL,
    numero integer,
    complemento character varying(50),
    email character varying(50),
    telefone integer NOT NULL,
    dt_cadastro date NOT NULL,
    ind_inativo integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.pessoas;
       public         heap    postgres    false            ?            1259    16622    pessoas_id_pessoa_seq    SEQUENCE     ?   CREATE SEQUENCE public.pessoas_id_pessoa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pessoas_id_pessoa_seq;
       public          postgres    false    216            ?           0    0    pessoas_id_pessoa_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pessoas_id_pessoa_seq OWNED BY public.pessoas.id_pessoa;
          public          postgres    false    215            ?            1259    16637    produtos    TABLE     ?  CREATE TABLE public.produtos (
    cod_prod integer NOT NULL,
    nome_prod character varying(40) NOT NULL,
    quant_prod integer NOT NULL,
    ind_prod integer DEFAULT 0 NOT NULL,
    valor_compra numeric NOT NULL,
    cod_ean character varying(15),
    est_min integer,
    porc_lucro character varying(5),
    porc_custo character varying(5),
    dt_validade date,
    valor_venda numeric NOT NULL,
    ind_unidade integer NOT NULL,
    cod_grupo integer NOT NULL,
    id_local integer NOT NULL
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            ?            1259    16564    unidades_medidas    TABLE     z   CREATE TABLE public.unidades_medidas (
    id_unidade integer NOT NULL,
    nome_medida character varying(40) NOT NULL
);
 $   DROP TABLE public.unidades_medidas;
       public         heap    postgres    false            ?            1259    16563    unidades_medidas_id_unidade_seq    SEQUENCE     ?   CREATE SEQUENCE public.unidades_medidas_id_unidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.unidades_medidas_id_unidade_seq;
       public          postgres    false    210            ?           0    0    unidades_medidas_id_unidade_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.unidades_medidas_id_unidade_seq OWNED BY public.unidades_medidas.id_unidade;
          public          postgres    false    209            ?            1259    16798    vendas    TABLE     .  CREATE TABLE public.vendas (
    cod_venda integer NOT NULL,
    dt_venda timestamp without time zone NOT NULL,
    preco_venda numeric NOT NULL,
    desconto integer,
    preco_total numeric NOT NULL,
    cod_prod integer NOT NULL,
    matricula_func integer NOT NULL,
    id_pgmt integer NOT NULL
);
    DROP TABLE public.vendas;
       public         heap    postgres    false            ?            1259    16797    vendas_cod_venda_seq    SEQUENCE     ?   CREATE SEQUENCE public.vendas_cod_venda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.vendas_cod_venda_seq;
       public          postgres    false    229            ?           0    0    vendas_cod_venda_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.vendas_cod_venda_seq OWNED BY public.vendas.cod_venda;
          public          postgres    false    228            ?           2604    16832    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    230    231    231            ?           2604    16721    cupom_fiscal cod_cupom    DEFAULT     ?   ALTER TABLE ONLY public.cupom_fiscal ALTER COLUMN cod_cupom SET DEFAULT nextval('public.cupom_fiscal_cod_cupom_seq'::regclass);
 E   ALTER TABLE public.cupom_fiscal ALTER COLUMN cod_cupom DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    16712    forma_pgmt id_pgmt    DEFAULT     x   ALTER TABLE ONLY public.forma_pgmt ALTER COLUMN id_pgmt SET DEFAULT nextval('public.forma_pgmt_id_pgmt_seq'::regclass);
 A   ALTER TABLE public.forma_pgmt ALTER COLUMN id_pgmt DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    16748    fornecedores id_fornecedor    DEFAULT     ?   ALTER TABLE ONLY public.fornecedores ALTER COLUMN id_fornecedor SET DEFAULT nextval('public.fornecedores_id_fornecedor_seq'::regclass);
 I   ALTER TABLE public.fornecedores ALTER COLUMN id_fornecedor DROP DEFAULT;
       public          postgres    false    225    224    225            ?           2604    16581    grupos cod_grupo    DEFAULT     t   ALTER TABLE ONLY public.grupos ALTER COLUMN cod_grupo SET DEFAULT nextval('public.grupos_cod_grupo_seq'::regclass);
 ?   ALTER TABLE public.grupos ALTER COLUMN cod_grupo DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    16574    localizacao_estoque id_local    DEFAULT     ?   ALTER TABLE ONLY public.localizacao_estoque ALTER COLUMN id_local SET DEFAULT nextval('public.localizacao_estoque_id_local_seq'::regclass);
 K   ALTER TABLE public.localizacao_estoque ALTER COLUMN id_local DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    16897    pessoa_fisica id_pf    DEFAULT     z   ALTER TABLE ONLY public.pessoa_fisica ALTER COLUMN id_pf SET DEFAULT nextval('public.pessoa_fisica_id_pf_seq'::regclass);
 B   ALTER TABLE public.pessoa_fisica ALTER COLUMN id_pf DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    16868    pessoa_juridica id_pj    DEFAULT     ~   ALTER TABLE ONLY public.pessoa_juridica ALTER COLUMN id_pj SET DEFAULT nextval('public.pessoa_juridica_id_pj_seq'::regclass);
 D   ALTER TABLE public.pessoa_juridica ALTER COLUMN id_pj DROP DEFAULT;
       public          postgres    false    233    232    233            ?           2604    16626    pessoas id_pessoa    DEFAULT     v   ALTER TABLE ONLY public.pessoas ALTER COLUMN id_pessoa SET DEFAULT nextval('public.pessoas_id_pessoa_seq'::regclass);
 @   ALTER TABLE public.pessoas ALTER COLUMN id_pessoa DROP DEFAULT;
       public          postgres    false    216    215    216            ?           2604    16567    unidades_medidas id_unidade    DEFAULT     ?   ALTER TABLE ONLY public.unidades_medidas ALTER COLUMN id_unidade SET DEFAULT nextval('public.unidades_medidas_id_unidade_seq'::regclass);
 J   ALTER TABLE public.unidades_medidas ALTER COLUMN id_unidade DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    16801    vendas cod_venda    DEFAULT     t   ALTER TABLE ONLY public.vendas ALTER COLUMN cod_venda SET DEFAULT nextval('public.vendas_cod_venda_seq'::regclass);
 ?   ALTER TABLE public.vendas ALTER COLUMN cod_venda DROP DEFAULT;
       public          postgres    false    229    228    229            ?          0    16829    clientes 
   TABLE DATA           D   COPY public.clientes (id_cliente, id_pessoa, cod_venda) FROM stdin;
    public          postgres    false    231   ?       ?          0    16765    compras 
   TABLE DATA           m   COPY public.compras (id_compra, dt_compra, valor_total_compra, id_nota, id_fornecedor, cod_prod) FROM stdin;
    public          postgres    false    226   8?       ?          0    16718    cupom_fiscal 
   TABLE DATA           d   COPY public.cupom_fiscal (cod_cupom, qtd_item, dt_venda, total_item, id_pgmt, cod_prod) FROM stdin;
    public          postgres    false    222   U?       ?          0    16787    estoque 
   TABLE DATA           W   COPY public.estoque (id_estoque, qtd_estoque, movimento_estoque, cod_prod) FROM stdin;
    public          postgres    false    227   r?       ?          0    16709 
   forma_pgmt 
   TABLE DATA           8   COPY public.forma_pgmt (id_pgmt, desc_pgmt) FROM stdin;
    public          postgres    false    220   ??       ?          0    16745    fornecedores 
   TABLE DATA           ?   COPY public.fornecedores (id_fornecedor, razao_social_forn, nm_fantasia_forn, cnpj_forn, ins_estadual_forn, ins_municipal_forn, email1forn, nm_contato1, tel_contato1, nm_contato2, email2_contato, tel_contato2) FROM stdin;
    public          postgres    false    225   ٠       ?          0    16662    funcionarios 
   TABLE DATA           ?   COPY public.funcionarios (matricula_func, nome_func, cpf_func, rg_func, sexo, dt_nasc, senha, cargo, dt_admissao, dt_demissao, id_pessoa) FROM stdin;
    public          postgres    false    218   ??                 0    16578    grupos 
   TABLE DATA           7   COPY public.grupos (cod_grupo, nome_grupo) FROM stdin;
    public          postgres    false    214   ?       }          0    16571    localizacao_estoque 
   TABLE DATA           H   COPY public.localizacao_estoque (id_local, descricao_local) FROM stdin;
    public          postgres    false    212   _?       ?          0    16737 
   nf_compras 
   TABLE DATA           O   COPY public.nf_compras (id_nota_compra, dt_nota, valor_total_nota) FROM stdin;
    public          postgres    false    223   |?       ?          0    16876 	   nf_vendas 
   TABLE DATA           d   COPY public.nf_vendas (id_nota_venda, dt_nota_venda, valor_nota_venda, id_pj, cod_prod) FROM stdin;
    public          postgres    false    234   ??       ?          0    16906 
   permissoes 
   TABLE DATA           S   COPY public.permissoes (id_permissoes, nome_permissao, matricula_func) FROM stdin;
    public          postgres    false    237   ??       ?          0    16894    pessoa_fisica 
   TABLE DATA           a   COPY public.pessoa_fisica (id_pf, nome_pf, sexo, cpf_pf, rg_pf, dt_nasc, id_cliente) FROM stdin;
    public          postgres    false    236   ӡ       ?          0    16865    pessoa_juridica 
   TABLE DATA           ?   COPY public.pessoa_juridica (id_pj, razao_social_pj, nm_fantasia_pj, cnpj_pj, ins_estadual_pj, ins_municipal_pj, email1_pj, nm_contato1, tel_contato1, nm_contato2, email2_contato, tel_contato2, id_cliente) FROM stdin;
    public          postgres    false    233   ??       ?          0    16623    pessoas 
   TABLE DATA           ?   COPY public.pessoas (id_pessoa, rua, cep, bairro, cidade, estado, numero, complemento, email, telefone, dt_cadastro, ind_inativo) FROM stdin;
    public          postgres    false    216   ?       ?          0    16637    produtos 
   TABLE DATA           ?   COPY public.produtos (cod_prod, nome_prod, quant_prod, ind_prod, valor_compra, cod_ean, est_min, porc_lucro, porc_custo, dt_validade, valor_venda, ind_unidade, cod_grupo, id_local) FROM stdin;
    public          postgres    false    217   *?       {          0    16564    unidades_medidas 
   TABLE DATA           C   COPY public.unidades_medidas (id_unidade, nome_medida) FROM stdin;
    public          postgres    false    210   G?       ?          0    16798    vendas 
   TABLE DATA           |   COPY public.vendas (cod_venda, dt_venda, preco_venda, desconto, preco_total, cod_prod, matricula_func, id_pgmt) FROM stdin;
    public          postgres    false    229   *?       ?           0    0    clientes_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);
          public          postgres    false    230            ?           0    0    cupom_fiscal_cod_cupom_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cupom_fiscal_cod_cupom_seq', 1, false);
          public          postgres    false    221            ?           0    0    forma_pgmt_id_pgmt_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.forma_pgmt_id_pgmt_seq', 4, true);
          public          postgres    false    219            ?           0    0    fornecedores_id_fornecedor_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.fornecedores_id_fornecedor_seq', 1, false);
          public          postgres    false    224            ?           0    0    grupos_cod_grupo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.grupos_cod_grupo_seq', 4, true);
          public          postgres    false    213            ?           0    0     localizacao_estoque_id_local_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.localizacao_estoque_id_local_seq', 1, false);
          public          postgres    false    211            ?           0    0    pessoa_fisica_id_pf_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pessoa_fisica_id_pf_seq', 1, false);
          public          postgres    false    235            ?           0    0    pessoa_juridica_id_pj_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pessoa_juridica_id_pj_seq', 1, false);
          public          postgres    false    232            ?           0    0    pessoas_id_pessoa_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pessoas_id_pessoa_seq', 1, false);
          public          postgres    false    215            ?           0    0    unidades_medidas_id_unidade_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.unidades_medidas_id_unidade_seq', 17, true);
          public          postgres    false    209            ?           0    0    vendas_cod_venda_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.vendas_cod_venda_seq', 1, false);
          public          postgres    false    228            ?           2606    16834    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    231            ?           2606    16771    compras compras_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id_compra);
 >   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_pkey;
       public            postgres    false    226            ?           2606    16725    cupom_fiscal cupom_fiscal_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.cupom_fiscal
    ADD CONSTRAINT cupom_fiscal_pkey PRIMARY KEY (cod_cupom);
 H   ALTER TABLE ONLY public.cupom_fiscal DROP CONSTRAINT cupom_fiscal_pkey;
       public            postgres    false    222            ?           2606    16791    estoque estoque_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (id_estoque);
 >   ALTER TABLE ONLY public.estoque DROP CONSTRAINT estoque_pkey;
       public            postgres    false    227            ?           2606    16716    forma_pgmt forma_pgmt_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.forma_pgmt
    ADD CONSTRAINT forma_pgmt_pkey PRIMARY KEY (id_pgmt);
 D   ALTER TABLE ONLY public.forma_pgmt DROP CONSTRAINT forma_pgmt_pkey;
       public            postgres    false    220            ?           2606    16750    fornecedores fornecedores_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_pkey PRIMARY KEY (id_fornecedor);
 H   ALTER TABLE ONLY public.fornecedores DROP CONSTRAINT fornecedores_pkey;
       public            postgres    false    225            ?           2606    16666    funcionarios funcionarios_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (matricula_func);
 H   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_pkey;
       public            postgres    false    218            ?           2606    16583    grupos grupos_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (cod_grupo);
 <   ALTER TABLE ONLY public.grupos DROP CONSTRAINT grupos_pkey;
       public            postgres    false    214            ?           2606    16576 ,   localizacao_estoque localizacao_estoque_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.localizacao_estoque
    ADD CONSTRAINT localizacao_estoque_pkey PRIMARY KEY (id_local);
 V   ALTER TABLE ONLY public.localizacao_estoque DROP CONSTRAINT localizacao_estoque_pkey;
       public            postgres    false    212            ?           2606    16743    nf_compras nf_compras_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.nf_compras
    ADD CONSTRAINT nf_compras_pkey PRIMARY KEY (id_nota_compra);
 D   ALTER TABLE ONLY public.nf_compras DROP CONSTRAINT nf_compras_pkey;
       public            postgres    false    223            ?           2606    16882    nf_vendas nf_vendas_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.nf_vendas
    ADD CONSTRAINT nf_vendas_pkey PRIMARY KEY (id_nota_venda);
 B   ALTER TABLE ONLY public.nf_vendas DROP CONSTRAINT nf_vendas_pkey;
       public            postgres    false    234            ?           2606    16910    permissoes permissoes_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.permissoes
    ADD CONSTRAINT permissoes_pkey PRIMARY KEY (id_permissoes);
 D   ALTER TABLE ONLY public.permissoes DROP CONSTRAINT permissoes_pkey;
       public            postgres    false    237            ?           2606    16899     pessoa_fisica pessoa_fisica_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.pessoa_fisica
    ADD CONSTRAINT pessoa_fisica_pkey PRIMARY KEY (id_pf);
 J   ALTER TABLE ONLY public.pessoa_fisica DROP CONSTRAINT pessoa_fisica_pkey;
       public            postgres    false    236            ?           2606    16870 $   pessoa_juridica pessoa_juridica_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.pessoa_juridica
    ADD CONSTRAINT pessoa_juridica_pkey PRIMARY KEY (id_pj);
 N   ALTER TABLE ONLY public.pessoa_juridica DROP CONSTRAINT pessoa_juridica_pkey;
       public            postgres    false    233            ?           2606    16629    pessoas pessoas_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pessoas
    ADD CONSTRAINT pessoas_pkey PRIMARY KEY (id_pessoa);
 >   ALTER TABLE ONLY public.pessoas DROP CONSTRAINT pessoas_pkey;
       public            postgres    false    216            ?           2606    16644    produtos produtos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (cod_prod);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    217            ?           2606    16569 &   unidades_medidas unidades_medidas_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.unidades_medidas
    ADD CONSTRAINT unidades_medidas_pkey PRIMARY KEY (id_unidade);
 P   ALTER TABLE ONLY public.unidades_medidas DROP CONSTRAINT unidades_medidas_pkey;
       public            postgres    false    210            ?           2606    16805    vendas vendas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (cod_venda);
 <   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_pkey;
       public            postgres    false    229            ?           2606    16840     clientes clientes_cod_venda_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_cod_venda_fkey FOREIGN KEY (cod_venda) REFERENCES public.vendas(cod_venda) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_cod_venda_fkey;
       public          postgres    false    3280    229    231            ?           2606    16835     clientes clientes_id_pessoa_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES public.pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_id_pessoa_fkey;
       public          postgres    false    216    3262    231            ?           2606    16782    compras compras_cod_prod_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_cod_prod_fkey FOREIGN KEY (cod_prod) REFERENCES public.produtos(cod_prod) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_cod_prod_fkey;
       public          postgres    false    3264    226    217            ?           2606    16777 "   compras compras_id_fornecedor_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_id_fornecedor_fkey FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedores(id_fornecedor) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_id_fornecedor_fkey;
       public          postgres    false    226    225    3274            ?           2606    16772    compras compras_id_nota_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_id_nota_fkey FOREIGN KEY (id_nota) REFERENCES public.nf_compras(id_nota_compra) ON UPDATE CASCADE ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_id_nota_fkey;
       public          postgres    false    3272    223    226            ?           2606    16731 '   cupom_fiscal cupom_fiscal_cod_prod_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cupom_fiscal
    ADD CONSTRAINT cupom_fiscal_cod_prod_fkey FOREIGN KEY (cod_prod) REFERENCES public.produtos(cod_prod) ON UPDATE CASCADE ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.cupom_fiscal DROP CONSTRAINT cupom_fiscal_cod_prod_fkey;
       public          postgres    false    217    222    3264            ?           2606    16726 &   cupom_fiscal cupom_fiscal_id_pgmt_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cupom_fiscal
    ADD CONSTRAINT cupom_fiscal_id_pgmt_fkey FOREIGN KEY (id_pgmt) REFERENCES public.forma_pgmt(id_pgmt) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.cupom_fiscal DROP CONSTRAINT cupom_fiscal_id_pgmt_fkey;
       public          postgres    false    222    220    3268            ?           2606    16792    estoque estoque_cod_prod_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_cod_prod_fkey FOREIGN KEY (cod_prod) REFERENCES public.produtos(cod_prod) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.estoque DROP CONSTRAINT estoque_cod_prod_fkey;
       public          postgres    false    227    3264    217            ?           2606    16667 (   funcionarios funcionarios_id_pessoa_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES public.pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_id_pessoa_fkey;
       public          postgres    false    218    3262    216            ?           2606    16888 !   nf_vendas nf_vendas_cod_prod_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.nf_vendas
    ADD CONSTRAINT nf_vendas_cod_prod_fkey FOREIGN KEY (cod_prod) REFERENCES public.produtos(cod_prod) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.nf_vendas DROP CONSTRAINT nf_vendas_cod_prod_fkey;
       public          postgres    false    217    3264    234            ?           2606    16883    nf_vendas nf_vendas_id_pj_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.nf_vendas
    ADD CONSTRAINT nf_vendas_id_pj_fkey FOREIGN KEY (id_pj) REFERENCES public.pessoa_juridica(id_pj) ON UPDATE CASCADE ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.nf_vendas DROP CONSTRAINT nf_vendas_id_pj_fkey;
       public          postgres    false    233    3284    234            ?           2606    16911 )   permissoes permissoes_matricula_func_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.permissoes
    ADD CONSTRAINT permissoes_matricula_func_fkey FOREIGN KEY (matricula_func) REFERENCES public.funcionarios(matricula_func) ON UPDATE CASCADE ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.permissoes DROP CONSTRAINT permissoes_matricula_func_fkey;
       public          postgres    false    218    3266    237            ?           2606    16900 +   pessoa_fisica pessoa_fisica_id_cliente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pessoa_fisica
    ADD CONSTRAINT pessoa_fisica_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public.pessoa_fisica DROP CONSTRAINT pessoa_fisica_id_cliente_fkey;
       public          postgres    false    236    3282    231            ?           2606    16871 /   pessoa_juridica pessoa_juridica_id_cliente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pessoa_juridica
    ADD CONSTRAINT pessoa_juridica_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente) ON UPDATE CASCADE ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.pessoa_juridica DROP CONSTRAINT pessoa_juridica_id_cliente_fkey;
       public          postgres    false    233    231    3282            ?           2606    16650     produtos produtos_cod_grupo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_cod_grupo_fkey FOREIGN KEY (cod_grupo) REFERENCES public.grupos(cod_grupo) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_cod_grupo_fkey;
       public          postgres    false    217    214    3260            ?           2606    16655    produtos produtos_id_local_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_id_local_fkey FOREIGN KEY (id_local) REFERENCES public.localizacao_estoque(id_local) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_id_local_fkey;
       public          postgres    false    217    3258    212            ?           2606    16645 "   produtos produtos_ind_unidade_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_ind_unidade_fkey FOREIGN KEY (ind_unidade) REFERENCES public.unidades_medidas(id_unidade) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_ind_unidade_fkey;
       public          postgres    false    210    3256    217            ?           2606    16806    vendas vendas_cod_prod_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_cod_prod_fkey FOREIGN KEY (cod_prod) REFERENCES public.produtos(cod_prod) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_cod_prod_fkey;
       public          postgres    false    217    229    3264            ?           2606    16816    vendas vendas_id_pgmt_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_id_pgmt_fkey FOREIGN KEY (id_pgmt) REFERENCES public.forma_pgmt(id_pgmt) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_id_pgmt_fkey;
       public          postgres    false    220    3268    229            ?           2606    16811 !   vendas vendas_matricula_func_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_matricula_func_fkey FOREIGN KEY (matricula_func) REFERENCES public.funcionarios(matricula_func) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_matricula_func_fkey;
       public          postgres    false    218    3266    229            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   :   x?3?t???H?,??2?tN,*9?8_???ʤ̒|.c??s???) !΀?
?=... {?O      ?      x?????? ? ?      ?      x?????? ? ?         <   x?3???L)J,??LN?2?t?9????6?tK-*J?M?+I,?2?tLNL????b???? @??      }      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      {   ?   x?-?Kn?@D?ݧ????????d?x?#E?M???????B?C?\???i=?RU+?,hӊe?0?Y?ӌ[????Y~?n)??qe3? ?(??c?g?????[2??
9u_??qWR/`?;?-{?? ??!??/up1????4?N?????J?P??T???????ɡ?ZӚk~'??P?/???k??~Tȱ??s!?\MG?      ?      x?????? ? ?     