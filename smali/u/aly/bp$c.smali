.class Lu/aly/bp$c;
.super Lu/aly/dr;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 816
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bp$1;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Lu/aly/bp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 820
    check-cast p1, Lu/aly/dm;

    .line 821
    iget-object v0, p2, Lu/aly/bp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 822
    iget-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 823
    iget-object v0, p2, Lu/aly/bp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 824
    iget v0, p2, Lu/aly/bp;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 825
    iget v0, p2, Lu/aly/bp;->e:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 826
    iget v0, p2, Lu/aly/bp;->f:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 827
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/nio/ByteBuffer;)V

    .line 828
    iget-object v0, p2, Lu/aly/bp;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 829
    iget-object v0, p2, Lu/aly/bp;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 831
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 832
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 834
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 835
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget p2, p2, Lu/aly/bp;->j:I

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 816
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->a(Lu/aly/dg;Lu/aly/bp;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 842
    check-cast p1, Lu/aly/dm;

    .line 843
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 844
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Z)V

    .line 845
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bp;->b:Ljava/lang/String;

    .line 846
    invoke-virtual {p2, v0}, Lu/aly/bp;->b(Z)V

    .line 847
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bp;->c:Ljava/lang/String;

    .line 848
    invoke-virtual {p2, v0}, Lu/aly/bp;->c(Z)V

    .line 849
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v1

    iput v1, p2, Lu/aly/bp;->d:I

    .line 850
    invoke-virtual {p2, v0}, Lu/aly/bp;->d(Z)V

    .line 851
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v1

    iput v1, p2, Lu/aly/bp;->e:I

    .line 852
    invoke-virtual {p2, v0}, Lu/aly/bp;->e(Z)V

    .line 853
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v1

    iput v1, p2, Lu/aly/bp;->f:I

    .line 854
    invoke-virtual {p2, v0}, Lu/aly/bp;->f(Z)V

    .line 855
    invoke-virtual {p1}, Lu/aly/dm;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    .line 856
    invoke-virtual {p2, v0}, Lu/aly/bp;->g(Z)V

    .line 857
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bp;->h:Ljava/lang/String;

    .line 858
    invoke-virtual {p2, v0}, Lu/aly/bp;->h(Z)V

    .line 859
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bp;->i:Ljava/lang/String;

    .line 860
    invoke-virtual {p2, v0}, Lu/aly/bp;->i(Z)V

    .line 861
    invoke-virtual {p1, v0}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 862
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result p1

    iput p1, p2, Lu/aly/bp;->j:I

    .line 864
    invoke-virtual {p2, v0}, Lu/aly/bp;->j(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 816
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->b(Lu/aly/dg;Lu/aly/bp;)V

    return-void
.end method
