.class Lu/aly/bn$c;
.super Lu/aly/dr;
.source "UALogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 990
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bn$1;)V
    .locals 0

    .line 990
    invoke-direct {p0}, Lu/aly/bn$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 994
    check-cast p1, Lu/aly/dm;

    .line 995
    iget-object v0, p2, Lu/aly/bn;->a:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->b(Lu/aly/dg;)V

    .line 996
    iget-object v0, p2, Lu/aly/bn;->b:Lu/aly/ao;

    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/dg;)V

    .line 997
    iget-object v0, p2, Lu/aly/bn;->c:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->b(Lu/aly/dg;)V

    .line 998
    iget-object v0, p2, Lu/aly/bn;->d:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Lu/aly/dg;)V

    .line 999
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1000
    invoke-virtual {p2}, Lu/aly/bn;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1001
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1003
    :cond_0
    invoke-virtual {p2}, Lu/aly/bn;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1004
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1006
    :cond_1
    invoke-virtual {p2}, Lu/aly/bn;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 1007
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1009
    :cond_2
    invoke-virtual {p2}, Lu/aly/bn;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 1010
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1012
    :cond_3
    invoke-virtual {p2}, Lu/aly/bn;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 1013
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1015
    :cond_4
    invoke-virtual {p2}, Lu/aly/bn;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 1016
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1018
    :cond_5
    invoke-virtual {p2}, Lu/aly/bn;->N()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 1019
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    const/4 v1, 0x7

    .line 1021
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 1022
    invoke-virtual {p2}, Lu/aly/bn;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1023
    iget-object v0, p2, Lu/aly/bn;->e:Lu/aly/am;

    invoke-virtual {v0, p1}, Lu/aly/am;->b(Lu/aly/dg;)V

    .line 1025
    :cond_7
    invoke-virtual {p2}, Lu/aly/bn;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1027
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 1028
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bc;

    .line 1030
    invoke-virtual {v1, p1}, Lu/aly/bc;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 1034
    :cond_8
    invoke-virtual {p2}, Lu/aly/bn;->B()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1036
    iget-object v0, p2, Lu/aly/bn;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 1037
    iget-object v0, p2, Lu/aly/bn;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bl;

    .line 1039
    invoke-virtual {v1, p1}, Lu/aly/bl;->b(Lu/aly/dg;)V

    goto :goto_1

    .line 1043
    :cond_9
    invoke-virtual {p2}, Lu/aly/bn;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1044
    iget-object v0, p2, Lu/aly/bn;->h:Lu/aly/ba;

    invoke-virtual {v0, p1}, Lu/aly/ba;->b(Lu/aly/dg;)V

    .line 1046
    :cond_a
    invoke-virtual {p2}, Lu/aly/bn;->H()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1047
    iget-object v0, p2, Lu/aly/bn;->i:Lu/aly/az;

    invoke-virtual {v0, p1}, Lu/aly/az;->b(Lu/aly/dg;)V

    .line 1049
    :cond_b
    invoke-virtual {p2}, Lu/aly/bn;->K()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1050
    iget-object v0, p2, Lu/aly/bn;->j:Lu/aly/an;

    invoke-virtual {v0, p1}, Lu/aly/an;->b(Lu/aly/dg;)V

    .line 1052
    :cond_c
    invoke-virtual {p2}, Lu/aly/bn;->N()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1053
    iget-object p2, p2, Lu/aly/bn;->k:Lu/aly/aq;

    invoke-virtual {p2, p1}, Lu/aly/aq;->b(Lu/aly/dg;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 990
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$c;->a(Lu/aly/dg;Lu/aly/bn;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 1059
    check-cast p1, Lu/aly/dm;

    .line 1060
    new-instance v0, Lu/aly/ap;

    invoke-direct {v0}, Lu/aly/ap;-><init>()V

    iput-object v0, p2, Lu/aly/bn;->a:Lu/aly/ap;

    .line 1061
    iget-object v0, p2, Lu/aly/bn;->a:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->a(Lu/aly/dg;)V

    const/4 v0, 0x1

    .line 1062
    invoke-virtual {p2, v0}, Lu/aly/bn;->a(Z)V

    .line 1063
    new-instance v1, Lu/aly/ao;

    invoke-direct {v1}, Lu/aly/ao;-><init>()V

    iput-object v1, p2, Lu/aly/bn;->b:Lu/aly/ao;

    .line 1064
    iget-object v1, p2, Lu/aly/bn;->b:Lu/aly/ao;

    invoke-virtual {v1, p1}, Lu/aly/ao;->a(Lu/aly/dg;)V

    .line 1065
    invoke-virtual {p2, v0}, Lu/aly/bn;->b(Z)V

    .line 1066
    new-instance v1, Lu/aly/ar;

    invoke-direct {v1}, Lu/aly/ar;-><init>()V

    iput-object v1, p2, Lu/aly/bn;->c:Lu/aly/ar;

    .line 1067
    iget-object v1, p2, Lu/aly/bn;->c:Lu/aly/ar;

    invoke-virtual {v1, p1}, Lu/aly/ar;->a(Lu/aly/dg;)V

    .line 1068
    invoke-virtual {p2, v0}, Lu/aly/bn;->c(Z)V

    .line 1069
    new-instance v1, Lu/aly/bf;

    invoke-direct {v1}, Lu/aly/bf;-><init>()V

    iput-object v1, p2, Lu/aly/bn;->d:Lu/aly/bf;

    .line 1070
    iget-object v1, p2, Lu/aly/bn;->d:Lu/aly/bf;

    invoke-virtual {v1, p1}, Lu/aly/bf;->a(Lu/aly/dg;)V

    .line 1071
    invoke-virtual {p2, v0}, Lu/aly/bn;->d(Z)V

    const/4 v1, 0x7

    .line 1072
    invoke-virtual {p1, v1}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 1073
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1074
    new-instance v3, Lu/aly/am;

    invoke-direct {v3}, Lu/aly/am;-><init>()V

    iput-object v3, p2, Lu/aly/bn;->e:Lu/aly/am;

    .line 1075
    iget-object v3, p2, Lu/aly/bn;->e:Lu/aly/am;

    invoke-virtual {v3, p1}, Lu/aly/am;->a(Lu/aly/dg;)V

    .line 1076
    invoke-virtual {p2, v0}, Lu/aly/bn;->e(Z)V

    .line 1078
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/16 v4, 0xc

    if-eqz v3, :cond_2

    .line 1080
    new-instance v3, Lu/aly/dc;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lu/aly/dc;-><init>(BI)V

    .line 1081
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lu/aly/dc;->b:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p2, Lu/aly/bn;->f:Ljava/util/List;

    const/4 v5, 0x0

    .line 1082
    :goto_0
    iget v6, v3, Lu/aly/dc;->b:I

    if-ge v5, v6, :cond_1

    .line 1085
    new-instance v6, Lu/aly/bc;

    invoke-direct {v6}, Lu/aly/bc;-><init>()V

    .line 1086
    invoke-virtual {v6, p1}, Lu/aly/bc;->a(Lu/aly/dg;)V

    .line 1087
    iget-object v7, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1090
    :cond_1
    invoke-virtual {p2, v0}, Lu/aly/bn;->f(Z)V

    :cond_2
    const/4 v3, 0x2

    .line 1092
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1094
    new-instance v3, Lu/aly/dc;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lu/aly/dc;-><init>(BI)V

    .line 1095
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v3, Lu/aly/dc;->b:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p2, Lu/aly/bn;->g:Ljava/util/List;

    .line 1096
    :goto_1
    iget v4, v3, Lu/aly/dc;->b:I

    if-ge v2, v4, :cond_3

    .line 1099
    new-instance v4, Lu/aly/bl;

    invoke-direct {v4}, Lu/aly/bl;-><init>()V

    .line 1100
    invoke-virtual {v4, p1}, Lu/aly/bl;->a(Lu/aly/dg;)V

    .line 1101
    iget-object v5, p2, Lu/aly/bn;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1104
    :cond_3
    invoke-virtual {p2, v0}, Lu/aly/bn;->g(Z)V

    :cond_4
    const/4 v2, 0x3

    .line 1106
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1107
    new-instance v2, Lu/aly/ba;

    invoke-direct {v2}, Lu/aly/ba;-><init>()V

    iput-object v2, p2, Lu/aly/bn;->h:Lu/aly/ba;

    .line 1108
    iget-object v2, p2, Lu/aly/bn;->h:Lu/aly/ba;

    invoke-virtual {v2, p1}, Lu/aly/ba;->a(Lu/aly/dg;)V

    .line 1109
    invoke-virtual {p2, v0}, Lu/aly/bn;->h(Z)V

    :cond_5
    const/4 v2, 0x4

    .line 1111
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1112
    new-instance v2, Lu/aly/az;

    invoke-direct {v2}, Lu/aly/az;-><init>()V

    iput-object v2, p2, Lu/aly/bn;->i:Lu/aly/az;

    .line 1113
    iget-object v2, p2, Lu/aly/bn;->i:Lu/aly/az;

    invoke-virtual {v2, p1}, Lu/aly/az;->a(Lu/aly/dg;)V

    .line 1114
    invoke-virtual {p2, v0}, Lu/aly/bn;->i(Z)V

    :cond_6
    const/4 v2, 0x5

    .line 1116
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1117
    new-instance v2, Lu/aly/an;

    invoke-direct {v2}, Lu/aly/an;-><init>()V

    iput-object v2, p2, Lu/aly/bn;->j:Lu/aly/an;

    .line 1118
    iget-object v2, p2, Lu/aly/bn;->j:Lu/aly/an;

    invoke-virtual {v2, p1}, Lu/aly/an;->a(Lu/aly/dg;)V

    .line 1119
    invoke-virtual {p2, v0}, Lu/aly/bn;->j(Z)V

    :cond_7
    const/4 v2, 0x6

    .line 1121
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1122
    new-instance v1, Lu/aly/aq;

    invoke-direct {v1}, Lu/aly/aq;-><init>()V

    iput-object v1, p2, Lu/aly/bn;->k:Lu/aly/aq;

    .line 1123
    iget-object v1, p2, Lu/aly/bn;->k:Lu/aly/aq;

    invoke-virtual {v1, p1}, Lu/aly/aq;->a(Lu/aly/dg;)V

    .line 1124
    invoke-virtual {p2, v0}, Lu/aly/bn;->k(Z)V

    :cond_8
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 990
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$c;->b(Lu/aly/dg;Lu/aly/bn;)V

    return-void
.end method
