PGDMP     )                     {         	   DesafioBD    15.2    15.2     +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16452 	   DesafioBD    DATABASE     �   CREATE DATABASE "DesafioBD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "DesafioBD";
                postgres    false                       0    16463 
   categorias 
   TABLE DATA           .   COPY public.categorias (id, nome) FROM stdin;
    public          postgres    false    217   '       (          0    16513    clientes 
   TABLE DATA           ,   COPY public.clientes (id, nome) FROM stdin;
    public          postgres    false    225   �       $          0    16487    pedidos 
   TABLE DATA           P   COPY public.pedidos (id, data, endereco_entrega, total, cliente_id) FROM stdin;
    public          postgres    false    221   ;                 0    16454    produtos 
   TABLE DATA           >   COPY public.produtos (id, nome, descricao, preco) FROM stdin;
    public          postgres    false    215   B       &          0    16496    pedidos_itens 
   TABLE DATA           N   COPY public.pedidos_itens (id, pedido_id, produto_id, quantidade) FROM stdin;
    public          postgres    false    223   )       "          0    16470    produtos_categorias 
   TABLE DATA           K   COPY public.produtos_categorias (id, produto_id, categoria_id) FROM stdin;
    public          postgres    false    219   7       /           0    0    categorias_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.categorias_id_seq', 100, true);
          public          postgres    false    216            0           0    0    clientes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.clientes_id_seq', 100, true);
          public          postgres    false    224            1           0    0    pedidos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pedidos_id_seq', 100, true);
          public          postgres    false    220            2           0    0    pedidos_itens_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pedidos_itens_id_seq', 100, true);
          public          postgres    false    222            3           0    0    produtos_categorias_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.produtos_categorias_id_seq', 100, true);
          public          postgres    false    218            4           0    0    produtos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.produtos_id_seq', 100, true);
          public          postgres    false    214                ~  x�U�;UYDј=
Fк��1� !@���Z�_<��aEg�>.��������_�䄤 %%%�hI�HV�r�{��3͆)�S��(KLYV�¬1��`��Ŕg���\}���k`���W�'�>/\}޸�|p�����#���0B}���k�A�/�P_��hB}1��b	�ő�ˇT_��tR}��s�O����H�e���!՗K�/�R_=���(��Sꫠ�W��x�EQꫦ�WC���R_��~h����k���A���V_��u�M���V_/��>F}�0�c�7Ψo�Q�$��)F}�i�W���YF}s���aշƪo�U���MV}[���Y����^巬��8��é�S�9��N}����8�]s���w�v~���~~����?@�Ǌ      (   v  x�M�;n1��:�)rc���\í� ����4;ۍ*}�ȱ����������';�� ��ԓ�~r3O���y��.]va��a����� ��V�֘6� ��(vpY��e��^�,�,��,^�,޸,>�,��,~Y�"d	#d��W^��,��,Q�,ф,1�,��,qHY�"eI#eI'e�{F^C��,Y�,٤,9�,��,y(Y�d)�d)�d��d�{b_#[�,Ք,5�,��,uhY��ei�ei�e�e�e�{^Դ,=�,��,}Y�bdcdgd�`d�dd�bd�{�_�<�,��,sXY�beYceYge�`e�de�be�feٻ[^岬,{8���#�1�,�9����r�#�)�,�9����r�{U���{�����a�x>      $   �  x��X1ne7��S�_ER���6'�&��6�"w�Ar����~G0��CH"���UF�A�1��o��|���������������~���盬"���\�v}�,0�����8���chG�W�QU�ك{7
q���T�+N�nlo�E��}^�,X����U�~`_YF��ͼ�׵3�8�A�k�/�u���}dq�Po]�q]|H�N�J��c]���'���\�ץׁ�1f�E��D��7�(��ӑR	�,�S:�@+қ[Y(�_μ��*�b�����<n��_��7��{��v���#�	�����Wջ�yO�.�{1�t�"�!��K/ju�-H�5Gq�ڊ�zؙ(�H�ar��2r
ȥm���uG�+��'�E�Zu��dO����xۥ4򌀐���u��#{�4��8�&K�<z �O6�� +k3�{��U���u��
�qX�1 N�wN9����{u��U0�)`�Gn������g����J ;��7����´����#��t�gY�,�Lǐ�<��Ҽ {���|�Q���u�P3A��)}��^�� W%��� ,��V�Yu��,9��\M��U_8�+�+�B��Zjpծ�P������4�[���:��i���B�Q̤IG4���Ј+�t?���e���?�T`դEQp�/h>��� �8�5�����<���~�S�2��#����/j0���;+n����6���A3�Q�b K��qU��i���^��I�A��֡��෽����-�(4N���B��X��eث��'���)J��ya&����\�/��R�3X�/t���
��hpm�P>O���y߄����`FFo`/U\(ř��N,A2b�#�L�T���8vú���N6���*_pj.�91�D>�H*�q
�a��a[�F�
k���3ѷs�V��u�md[!��� �u��"�w`U��T��i`����mK�0֊����2g�q,����7�O����Gw8^(�|��aj%
��S�ӫbа�e���z�u"��zx0X)�G���:1|�53�F�iZ��b[���Y�|���o�?H�8�ω�C�@�-��"����b��'���i1Dwn�#�l��2l{�o��/t�ƶ���������԰`8��`��B�����e��e`�HNg� �h/ƕ�~a�|��y�R:OG������٤v����M_p`�b���ӺOKM;��U/����m�NV�0c��v����l�����?T��H         �  x�}ؽ��6��Wū ���� ��R��yd�".D�yA�p�����@��v������}~�뗯���ۏ�������'�(^�?�]��+{���S:T�|��̟RW�~E��6�ҩJ�Z���S�T麆�Oi�Ҹb���O�V��r/{X>��J�ڵԴViP%B=c�m��Z��k�҆5�5��d�{$tk���&]�vHZ-#�Q�I>$݋7klRI���4lIkea�ؤ#�d�F�&)��.kZ�e��H��}X�e��Hf?��_���5�8FB�.-�my�M�.-�x�h�i٥%�z�$)��D��\a��]R"iqW��KJ$}��	$e��Hj�i��CJ"�l�j��CJ"�,�#%��DҲ$�_���NǕ�d�A�!%��v��A�!%�,�װA�!)��(sB�!)�8�V<��CR����)��D��E�ti�dıtZ��D�}#qZ��D�[�ۜ�.-���q4��F}8�Y&�(��.)�l?g���%%�^�HI��H��au;%]J"�v�W��KI?e� 䔐HNÒ6	9%$�5ϧ0	9%$����:	9%$��vd٤䔒H���jtt���2K�6)9�$�Ě��rJJ$8���$唔H�(դ���>��"咔Hb��H�$%|
��"咔H�*�m�rIJ$'%�M�%)��{u/R.I���v�~���o�G9K[�\�Ib��-R.I���9�)��D���*h�I�2�-CZ"�Q�Mː�H�}�-CZ"�|���i�w
�`�2�%����i�w ��x�B�5$���Z�2�%�8GN�2$%/7Jn)��ȰM�-%�D��lSrKI$c�nwSrKI$x6�oSrKI$^O��)��$�#�䖒H~�s6%��D��~��J������m�rKJ$8p�JZ��D��niI˔�Hv�Ks�2�%t��-i���8�_�2%%�$.sIʔ�Hָo�LI�����	$eJJ$��6=I��2�=����C��mt\B�����$��=�J����i �      &   �  x�%���0C��a��-/�	��=�E� pd��馦����UK�C<[�SSm����`e���訶�K�v�}��Yi��lT�&0ҽu�s�܆���j�B��0�,������RU��W�O�'���e�pg��ٳ:�d�>&��K`�l��~�e�v��|5�Ez�Q�:8����TGژ����v�F�h<����aO��`�5J�E��l�i�o���U �=m�6.�������{SP1�陌��s}Z���n��q�����2�̶i^��
��G���U9/�����/C3B �ͻp�ȅ���)@�7>��Ǝ��X��y���U���<���� �E�2�u����s�9�0�J��\��9��1-���I�HR��o<nnR�E�Pm��;���ba�I��_ -�>�|-���{�p���r�_��'T-5�>����D�H�)��ԯvEVL4��[�u"�Կ鎓��Ks�rſ��l����:      "   �  x����D!�t0�>��L�ql�e�/�4n�����g+v�����We�턶�mqt��֧�T]˲*9�R�V�$��J�I$�9�hy�&rD����U%�<���g�������e�wX�Zh��;֨�^|Ze<]�i."�V)��9�k����
���U,k�FL��wڡ`+��`0{h#��QY=�\�+[K �5�G�R��w���z>�j�o.�`k�A`}�=/6"�8]�7�-W�Q�5(2U1���U36~��>��
CY�S��G�j��m��F�ف�Y�X�+"�v͘�7{B�5Z<�_עQ:a���^>A�v��<����s�*3����zA���a^k�Ɍst���O�{���Kz����̧�5���	3�~~�H��|z�o�_�%?Kw��R���!Q�F�=�Y� a	�̹I�D���6;@`�w��'�M�     