PGDMP             
        	    x            loja_de_veiculos     13.0    13.0 #    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16518    loja_de_veiculos     DATABASE     s   CREATE DATABASE "loja_de_veiculos " WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 #   DROP DATABASE "loja_de_veiculos ";
                postgres    false            �            1259    16519    administrador     TABLE     R  CREATE TABLE public."administrador " (
    id_adm integer NOT NULL,
    nome character varying(30),
    cpf integer,
    senha character varying(30),
    rua character varying(30),
    bairro character varying(30),
    cidade character varying(30),
    estado character varying(30),
    numero integer,
    email character varying(50)
);
 $   DROP TABLE public."administrador ";
       public         heap    postgres    false            �            1259    16547    carro    TABLE     X   CREATE TABLE public.carro (
    id_car integer,
    descricao character varying(200)
);
    DROP TABLE public.carro;
       public         heap    postgres    false            �            1259    16534    cliente    TABLE     I  CREATE TABLE public.cliente (
    id_cli integer NOT NULL,
    nome character varying(30),
    cpf integer,
    email character varying(50),
    senha character varying(30),
    rua character varying(30),
    bairro character varying(30),
    cidade character varying(30),
    estado character varying(30),
    numero integer
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16573    efetuada    TABLE     K   CREATE TABLE public.efetuada (
    id_vend integer,
    id_func integer
);
    DROP TABLE public.efetuada;
       public         heap    postgres    false            �            1259    16524 
   fornecedor    TABLE     N  CREATE TABLE public.fornecedor (
    id_forn integer NOT NULL,
    nome character varying(30),
    cnpj integer,
    email character varying(50),
    senha character varying(30),
    rua character varying(30),
    bairro character varying(30),
    cidade character varying(30),
    estado character varying(30),
    numero integer
);
    DROP TABLE public.fornecedor;
       public         heap    postgres    false            �            1259    16529    funcionario    TABLE     N  CREATE TABLE public.funcionario (
    id_func integer NOT NULL,
    nome character varying(30),
    cpf integer,
    email character varying(50),
    senha character varying(30),
    rua character varying(30),
    bairro character varying(30),
    cidade character varying(30),
    estado character varying(30),
    numero integer
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    16550    moto    TABLE     X   CREATE TABLE public.moto (
    descricao character varying(100),
    id_moto integer
);
    DROP TABLE public.moto;
       public         heap    postgres    false            �            1259    16539    veiculos    TABLE     d  CREATE TABLE public.veiculos (
    id_vei integer NOT NULL,
    descricao character varying(200),
    ano integer,
    chassi character varying(20),
    valor double precision,
    marca character varying(30),
    modelo character varying(30),
    cor character varying(30),
    tipo_veic character varying(30),
    id_forn integer,
    id_vend integer
);
    DROP TABLE public.veiculos;
       public         heap    postgres    false            �            1259    16553    venda    TABLE     e   CREATE TABLE public.venda (
    id_vend integer NOT NULL,
    data_venda date,
    id_cli integer
);
    DROP TABLE public.venda;
       public         heap    postgres    false            �          0    16519    administrador  
   TABLE DATA           p   COPY public."administrador " (id_adm, nome, cpf, senha, rua, bairro, cidade, estado, numero, email) FROM stdin;
    public          postgres    false    200   �*       �          0    16547    carro 
   TABLE DATA           2   COPY public.carro (id_car, descricao) FROM stdin;
    public          postgres    false    205   >+       �          0    16534    cliente 
   TABLE DATA           g   COPY public.cliente (id_cli, nome, cpf, email, senha, rua, bairro, cidade, estado, numero) FROM stdin;
    public          postgres    false    203   +,       �          0    16573    efetuada 
   TABLE DATA           4   COPY public.efetuada (id_vend, id_func) FROM stdin;
    public          postgres    false    208   $.       �          0    16524 
   fornecedor 
   TABLE DATA           l   COPY public.fornecedor (id_forn, nome, cnpj, email, senha, rua, bairro, cidade, estado, numero) FROM stdin;
    public          postgres    false    201   �.       �          0    16529    funcionario 
   TABLE DATA           l   COPY public.funcionario (id_func, nome, cpf, email, senha, rua, bairro, cidade, estado, numero) FROM stdin;
    public          postgres    false    202   �0       �          0    16550    moto 
   TABLE DATA           2   COPY public.moto (descricao, id_moto) FROM stdin;
    public          postgres    false    206   p2       �          0    16539    veiculos 
   TABLE DATA           z   COPY public.veiculos (id_vei, descricao, ano, chassi, valor, marca, modelo, cor, tipo_veic, id_forn, id_vend) FROM stdin;
    public          postgres    false    204   )3       �          0    16553    venda 
   TABLE DATA           <   COPY public.venda (id_vend, data_venda, id_cli) FROM stdin;
    public          postgres    false    207   A8       A           2606    16523    administrador  cliente_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."administrador "
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_adm);
 G   ALTER TABLE ONLY public."administrador " DROP CONSTRAINT cliente_pkey;
       public            postgres    false    200            G           2606    16538    cliente cliente_pkey1 
   CONSTRAINT     W   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey1 PRIMARY KEY (id_cli);
 ?   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey1;
       public            postgres    false    203            C           2606    16528    fornecedor fornecedor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id_forn);
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public            postgres    false    201            E           2606    16533    funcionario funcionario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_func);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    202            I           2606    16546    veiculos veiculos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT veiculos_pkey PRIMARY KEY (id_vei);
 @   ALTER TABLE ONLY public.veiculos DROP CONSTRAINT veiculos_pkey;
       public            postgres    false    204            K           2606    16557    venda venda_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id_vend);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public            postgres    false    207            N           2606    16590    carro carro_id_car_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_id_car_fkey FOREIGN KEY (id_car) REFERENCES public.veiculos(id_vei);
 A   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_id_car_fkey;
       public          postgres    false    204    2889    205            R           2606    16581    efetuada efetuada_id_func_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.efetuada
    ADD CONSTRAINT efetuada_id_func_fkey FOREIGN KEY (id_func) REFERENCES public.funcionario(id_func);
 H   ALTER TABLE ONLY public.efetuada DROP CONSTRAINT efetuada_id_func_fkey;
       public          postgres    false    2885    208    202            Q           2606    16576    efetuada efetuada_id_vend_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.efetuada
    ADD CONSTRAINT efetuada_id_vend_fkey FOREIGN KEY (id_vend) REFERENCES public.venda(id_vend);
 H   ALTER TABLE ONLY public.efetuada DROP CONSTRAINT efetuada_id_vend_fkey;
       public          postgres    false    207    2891    208            O           2606    16595    moto moto_id_moto_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.moto
    ADD CONSTRAINT moto_id_moto_fkey FOREIGN KEY (id_moto) REFERENCES public.veiculos(id_vei);
 @   ALTER TABLE ONLY public.moto DROP CONSTRAINT moto_id_moto_fkey;
       public          postgres    false    2889    204    206            L           2606    16600    veiculos veiculos_id_forn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT veiculos_id_forn_fkey FOREIGN KEY (id_forn) REFERENCES public.fornecedor(id_forn);
 H   ALTER TABLE ONLY public.veiculos DROP CONSTRAINT veiculos_id_forn_fkey;
       public          postgres    false    204    2883    201            M           2606    16605    veiculos veiculos_id_vend_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT veiculos_id_vend_fkey FOREIGN KEY (id_vend) REFERENCES public.venda(id_vend);
 H   ALTER TABLE ONLY public.veiculos DROP CONSTRAINT veiculos_id_vend_fkey;
       public          postgres    false    2891    207    204            P           2606    16568    venda venda_id_cli_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_id_cli_fkey FOREIGN KEY (id_cli) REFERENCES public.cliente(id_cli);
 A   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_id_cli_fkey;
       public          postgres    false    207    2887    203            �   �   x�360�t��KT�L.�/�L�4��4153�44R�n�9��
ŉy%�����ə)�)�
�y�e�E��%� -n�E%�9�U��ή�FFF��@Rs3s��9}A��m05Z ��Ԅ<9sA�P+b���� �0?      �   �   x�M�AN1E��)|�jD��*��MŊ���CPI����K���?[k0K�$�)6�q	1�$��m{/��HE��.x�r�^v���ce�t���|ë��Tn`�=�*8U*�wJω����4V�U�h�ܸ�&7����k�\�8S{ʿV����\7��NzB"�Y�Kpּ��#8g�]�}�7�����;��9��+���FsL=6p�5�� �j�      �   �  x�e�ߒ�0Ư�O�'�@ 
w=b��Q�	8�7閱tX�!ҋ>}Owv饟�/ߟÃ v���3M��B� J��.:�}�_m�B�HR̠bO�,7�v��T�$�믶��Z�$�@�3��˲����Gɂ�$�xe/b����@W�V��ӫ�X���mj78���"��핑Ds��M��J+8Ty1uGϥD�`=��%��g����w�y�a����s�;<��g��@��vh)pGH����/�8o1 
��R�Rn�sS�B{�d[_�NH#���q��AJ]�ȶՉ|�6J���D��s0�뮍�Pv��'���n���9�id��24�V�G����,o��T��8{����>y�#"V�J�e�-�J�Zmd��I��w�����w��Y<w�&"���śv�>��SΖ����:|5���b�tުN��7�x\��bG��	�Ɏ`�����0�f�k��6��4���G��_f��?�1�x      �   M   x�̱ !C���D 1���qN�����tL��Ē!)[Gn\y�Cs{8꧷�\mT�ٞ*�K�������      �     x�e����0�ϓ��Tĉ�pkAE{��JEU����`H��-��G�uL�w7����7���g�S���`�}e ��XY���߫u����F5�Y���7����a�̀���� �I�s@ߛ�J;f�C�e.�e�<���s(ˡE���0G�����?�m�7�sK-�0���{�R�<-ǃ��I]��g���j��ϭ'������bW)j\�4/ �=��n���H���o�6���(�g�$�H^�V��>}�	�hBD^R��k�!��Gwg�/��1^gO��R��t'xg��)�R���X����U�Tgu�4��&8��.I�-b�/��h=H)x�S5)2Noۢ���6l�l�B.3wN{�������H��i�E�H'�i8�q��ʢ#��gMY�#*iM2�^��`M�z��z�.�I�����|�ei�o��h�fѻ7��'֪��"�2&b(4q�s��񷙽���`�}�^
;}���Y�/���>����VM��|�$�?U�>[      �   �  x����r�0�ϫ��t��U��K₃l<�(&Q��Tؙ��N�}*�XW@�5�^`�[�����P5��?5T[�j ��<aR��q�����kL&)T;Eg@���'�²�'�����*svT�����E�G�vl��0.�.N��ޔ:���84�9a07�5-�P{��\C�x��:���!9M$g1`l�-ixy	���]~���pPǣ�{|��o ����A�2�!;T��ϊ|�"*��5�}^l3�ѻ��V�u�D2"����ѕq�g ��)#x���C�����e��y��%��Z�J_�SA$ܜ�Ei��v�;H֍>��9�!���Agx�EF����Q����):3A�	lpn]�ۓym@Nb�q	^}��?f���./]��ܿ58��𔤐��y����'8Q��l���o��EX�m^�E��5����s�#�#�d��7�?+���\G�]ɧw��?`���      �   �   x�5M;�0��S� �6A�v��bdq�"��
)NO����%��L��Ũ�B��O�5�$�Q���X��^�3��S`0�E�&��)��9y!/�k8)EɮV��Hs�q��i�g<��8������Q4���9s�����vx�W�q�=�.�9)�G��/kD�ÚDh      �     x�uU�r�6>/��0H���v�x���87��"a1I� ��~���2齗^�b�@ɴ��jF$v��~R����i���
{����ӊN��	-:6^������Q+����JdE�G2�UQV��8Is:����i�]��KK5;gI��d�DRj�ସ�n`�>���neЗ��[qaZ���8�C��}c Q������+-xm�`E��JTB���2�T�$�����Ro�m�@k�j�۱�q��%#��v�ѭ��w��ه�M��h�gD~�� y!��m�[���J�B��y�v7�k�������~�b�U�t'xía��\Uf��\e�JR���2���tt���9=<��<*��5�'AC_ �G����!��X�/�W�m�SO@�{re�RV�UU���6��-�@* I#�y+NnF|d�ɡJ.x�L����G���Ns�n&}g�&J��>�u��+�Z�3�=��(Z�_����=�@!�I���Dq��?1k���{O���7��h!�Rԛ`�k;l��kՅLJ\�/��0!��r����E\Q3�<��v�(A���0����#YPp�/2I�S�1��}-Y�N\8���:ݭ0����'����
��c����v:��ֵn�u�{{��������c��"��˪�%-��*3��c�W�&P��f��{�HI�����y��
%e����ħ��2���������L�<;�y �2��c��Cn�wN�j�vI�2������
��+��e��9�Z� Ա�-@�㾙<'6ۻv3��6p܁��$��_co�	M8͂W��߼��e��u��a>b't������ Q`Rxq��ݽ/���B��E���k�S���.����@t��C$��R)�ؓt®�7�^��4��z�#�H�2
�ŉ����	f*[��a8]��c1���4�ær�%O��a����hm�f@�;й�
���N�������mC3�+졇@WF=1�`���ټ�0Z��y��ܶW�7^�^�+�>�+�~R����R����D�9���t��n[~������3ey�ʂ�,��"�ˮ�~�H�QعsHS%� %β�rx����7�vZ��q4���f/`;i
s���[Z��Cx s���t�شϏ���͋���*+�8�|8��<�R@QD�y͟�P��E'qw�K���p\�x�~�.�"%��H}�W�y~j���RBڔT/��~�i���,I	����uR�:U�1���_���      �   �   x�E�Q!D��]h �.��9:�&����S1~)�&6E�!&�++I�*P.�c�fnP���i�	�.���%
b!݈�O}����C��SY�x�NN-b�z�me�)��Ɵ=�����q�_{ᲇ���y��>�w���e�;z�{��q���������y|�c�/V�A0     