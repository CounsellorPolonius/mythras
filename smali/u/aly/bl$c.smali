.class Lu/aly/bl$c;
.super Lu/aly/dr;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 708
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bl$1;)V
    .locals 0

    .line 708
    invoke-direct {p0}, Lu/aly/bl$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 712
    check-cast p1, Lu/aly/dm;

    .line 713
    iget-object v0, p2, Lu/aly/bl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 714
    iget-wide v0, p2, Lu/aly/bl;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 715
    iget-wide v0, p2, Lu/aly/bl;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 716
    iget-wide v0, p2, Lu/aly/bl;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 717
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 718
    invoke-virtual {p2}, Lu/aly/bl;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 719
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 721
    :cond_0
    invoke-virtual {p2}, Lu/aly/bl;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 722
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 724
    :cond_1
    invoke-virtual {p2}, Lu/aly/bl;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 725
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x3

    .line 727
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 728
    invoke-virtual {p2}, Lu/aly/bl;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p2, Lu/aly/bl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 731
    iget-object v0, p2, Lu/aly/bl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bg;

    .line 733
    invoke-virtual {v1, p1}, Lu/aly/bg;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 737
    :cond_3
    invoke-virtual {p2}, Lu/aly/bl;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    iget-object v0, p2, Lu/aly/bl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 740
    iget-object v0, p2, Lu/aly/bl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/be;

    .line 742
    invoke-virtual {v1, p1}, Lu/aly/be;->b(Lu/aly/dg;)V

    goto :goto_1

    .line 746
    :cond_4
    invoke-virtual {p2}, Lu/aly/bl;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 747
    iget-object p2, p2, Lu/aly/bl;->g:Lu/aly/bm;

    invoke-virtual {p2, p1}, Lu/aly/bm;->b(Lu/aly/dg;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 708
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$c;->a(Lu/aly/dg;Lu/aly/bl;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 753
    check-cast p1, Lu/aly/dm;

    .line 754
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bl;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 755
    invoke-virtual {p2, v0}, Lu/aly/bl;->a(Z)V

    .line 756
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bl;->b:J

    .line 757
    invoke-virtual {p2, v0}, Lu/aly/bl;->b(Z)V

    .line 758
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bl;->c:J

    .line 759
    invoke-virtual {p2, v0}, Lu/aly/bl;->c(Z)V

    .line 760
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bl;->d:J

    .line 761
    invoke-virtual {p2, v0}, Lu/aly/bl;->d(Z)V

    const/4 v1, 0x3

    .line 762
    invoke-virtual {p1, v1}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 763
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/16 v4, 0xc

    if-eqz v3, :cond_1

    .line 765
    new-instance v3, Lu/aly/dc;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lu/aly/dc;-><init>(BI)V

    .line 766
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lu/aly/dc;->b:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p2, Lu/aly/bl;->e:Ljava/util/List;

    const/4 v5, 0x0

    .line 767
    :goto_0
    iget v6, v3, Lu/aly/dc;->b:I

    if-ge v5, v6, :cond_0

    .line 770
    new-instance v6, Lu/aly/bg;

    invoke-direct {v6}, Lu/aly/bg;-><init>()V

    .line 771
    invoke-virtual {v6, p1}, Lu/aly/bg;->a(Lu/aly/dg;)V

    .line 772
    iget-object v7, p2, Lu/aly/bl;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p2, v0}, Lu/aly/bl;->e(Z)V

    .line 777
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 779
    new-instance v3, Lu/aly/dc;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lu/aly/dc;-><init>(BI)V

    .line 780
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v3, Lu/aly/dc;->b:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p2, Lu/aly/bl;->f:Ljava/util/List;

    .line 781
    :goto_1
    iget v4, v3, Lu/aly/dc;->b:I

    if-ge v2, v4, :cond_2

    .line 784
    new-instance v4, Lu/aly/be;

    invoke-direct {v4}, Lu/aly/be;-><init>()V

    .line 785
    invoke-virtual {v4, p1}, Lu/aly/be;->a(Lu/aly/dg;)V

    .line 786
    iget-object v5, p2, Lu/aly/bl;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 789
    :cond_2
    invoke-virtual {p2, v0}, Lu/aly/bl;->f(Z)V

    :cond_3
    const/4 v2, 0x2

    .line 791
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 792
    new-instance v1, Lu/aly/bm;

    invoke-direct {v1}, Lu/aly/bm;-><init>()V

    iput-object v1, p2, Lu/aly/bl;->g:Lu/aly/bm;

    .line 793
    iget-object v1, p2, Lu/aly/bl;->g:Lu/aly/bm;

    invoke-virtual {v1, p1}, Lu/aly/bm;->a(Lu/aly/dg;)V

    .line 794
    invoke-virtual {p2, v0}, Lu/aly/bl;->g(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 708
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$c;->b(Lu/aly/dg;Lu/aly/bl;)V

    return-void
.end method
