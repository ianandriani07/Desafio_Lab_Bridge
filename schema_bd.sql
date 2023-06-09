PGDMP         
                 {         	   DesafioBD    15.2    15.2 '    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    16452 	   DesafioBD    DATABASE     �   CREATE DATABASE "DesafioBD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "DesafioBD";
                postgres    false            �            1259    16463 
   categorias    TABLE     e   CREATE TABLE public.categorias (
    id integer NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    16462    categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public          postgres    false    217            )           0    0    categorias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;
          public          postgres    false    216            �            1259    16513    clientes    TABLE     d   CREATE TABLE public.clientes (
    id integer NOT NULL,
    nome character varying(150) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16512    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public          postgres    false    225            *           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public          postgres    false    224            �            1259    16487    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    id integer NOT NULL,
    data timestamp without time zone NOT NULL,
    endereco_entrega text NOT NULL,
    total numeric(10,2),
    cliente_id integer
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    16486    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public          postgres    false    221            +           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public          postgres    false    220            �            1259    16496    pedidos_itens    TABLE     �   CREATE TABLE public.pedidos_itens (
    id integer NOT NULL,
    pedido_id integer,
    produto_id integer,
    quantidade integer NOT NULL
);
 !   DROP TABLE public.pedidos_itens;
       public         heap    postgres    false            �            1259    16495    pedidos_itens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_itens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pedidos_itens_id_seq;
       public          postgres    false    223            ,           0    0    pedidos_itens_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pedidos_itens_id_seq OWNED BY public.pedidos_itens.id;
          public          postgres    false    222            �            1259    16454    produtos    TABLE     �   CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    descricao text,
    preco numeric(10,2) NOT NULL
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    16470    produtos_categorias    TABLE     w   CREATE TABLE public.produtos_categorias (
    id integer NOT NULL,
    produto_id integer,
    categoria_id integer
);
 '   DROP TABLE public.produtos_categorias;
       public         heap    postgres    false            �            1259    16469    produtos_categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.produtos_categorias_id_seq;
       public          postgres    false    219            -           0    0    produtos_categorias_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.produtos_categorias_id_seq OWNED BY public.produtos_categorias.id;
          public          postgres    false    218            �            1259    16453    produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    215            .           0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public          postgres    false    214                       2604    16466    categorias id    DEFAULT     n   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16516    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16490 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16499    pedidos_itens id    DEFAULT     t   ALTER TABLE ONLY public.pedidos_itens ALTER COLUMN id SET DEFAULT nextval('public.pedidos_itens_id_seq'::regclass);
 ?   ALTER TABLE public.pedidos_itens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            ~           2604    16457    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16473    produtos_categorias id    DEFAULT     �   ALTER TABLE ONLY public.produtos_categorias ALTER COLUMN id SET DEFAULT nextval('public.produtos_categorias_id_seq'::regclass);
 E   ALTER TABLE public.produtos_categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2606    16468    categorias pk_categorias 
   CONSTRAINT     V   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT pk_categorias PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categorias DROP CONSTRAINT pk_categorias;
       public            postgres    false    217            �           2606    16518    clientes pk_clientes 
   CONSTRAINT     R   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_clientes PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clientes DROP CONSTRAINT pk_clientes;
       public            postgres    false    225            �           2606    16494    pedidos pk_pedidos 
   CONSTRAINT     P   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_pedidos PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_pedidos;
       public            postgres    false    221            �           2606    16501    pedidos_itens pk_pedidos_itens 
   CONSTRAINT     \   ALTER TABLE ONLY public.pedidos_itens
    ADD CONSTRAINT pk_pedidos_itens PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pedidos_itens DROP CONSTRAINT pk_pedidos_itens;
       public            postgres    false    223            �           2606    16461    produtos pk_produtos 
   CONSTRAINT     R   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT pk_produtos PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produtos DROP CONSTRAINT pk_produtos;
       public            postgres    false    215            �           2606    16475 *   produtos_categorias pk_produtos_categorias 
   CONSTRAINT     h   ALTER TABLE ONLY public.produtos_categorias
    ADD CONSTRAINT pk_produtos_categorias PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.produtos_categorias DROP CONSTRAINT pk_produtos_categorias;
       public            postgres    false    219            �           2606    16575    pedidos fk_pedidos_cliente    FK CONSTRAINT        ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedidos_cliente FOREIGN KEY (cliente_id) REFERENCES public.clientes(id);
 D   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedidos_cliente;
       public          postgres    false    221    3215    225            �           2606    16502 %   pedidos_itens fk_pedidos_itens_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_itens
    ADD CONSTRAINT fk_pedidos_itens_pedido FOREIGN KEY (pedido_id) REFERENCES public.pedidos(id);
 O   ALTER TABLE ONLY public.pedidos_itens DROP CONSTRAINT fk_pedidos_itens_pedido;
       public          postgres    false    3211    221    223            �           2606    16507 &   pedidos_itens fk_pedidos_itens_produto    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_itens
    ADD CONSTRAINT fk_pedidos_itens_produto FOREIGN KEY (produto_id) REFERENCES public.produtos(id);
 P   ALTER TABLE ONLY public.pedidos_itens DROP CONSTRAINT fk_pedidos_itens_produto;
       public          postgres    false    215    3205    223            �           2606    16481 4   produtos_categorias fk_produtos_categorias_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtos_categorias
    ADD CONSTRAINT fk_produtos_categorias_categoria FOREIGN KEY (categoria_id) REFERENCES public.categorias(id);
 ^   ALTER TABLE ONLY public.produtos_categorias DROP CONSTRAINT fk_produtos_categorias_categoria;
       public          postgres    false    3207    217    219            �           2606    16476 2   produtos_categorias fk_produtos_categorias_produto    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtos_categorias
    ADD CONSTRAINT fk_produtos_categorias_produto FOREIGN KEY (produto_id) REFERENCES public.produtos(id);
 \   ALTER TABLE ONLY public.produtos_categorias DROP CONSTRAINT fk_produtos_categorias_produto;
       public          postgres    false    219    215    3205           