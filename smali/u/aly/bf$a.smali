.class Lu/aly/bf$a;
.super Lu/aly/dq;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 620
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bf$1;)V
    .locals 0

    .line 620
    invoke-direct {p0}, Lu/aly/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 624
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 627
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 628
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_0

    .line 717
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 720
    invoke-virtual {p2}, Lu/aly/bf;->H()V

    return-void

    .line 631
    :cond_0
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 713
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 705
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v4, :cond_1

    .line 706
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->j:Ljava/lang/String;

    .line 707
    invoke-virtual {p2, v5}, Lu/aly/bf;->j(Z)V

    goto/16 :goto_1

    .line 709
    :cond_1
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 697
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_2

    .line 698
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/al;->a(I)Lu/aly/al;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->i:Lu/aly/al;

    .line 699
    invoke-virtual {p2, v5}, Lu/aly/bf;->i(Z)V

    goto/16 :goto_1

    .line 701
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 689
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v4, :cond_3

    .line 690
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->h:Ljava/lang/String;

    .line 691
    invoke-virtual {p2, v5}, Lu/aly/bf;->h(Z)V

    goto/16 :goto_1

    .line 693
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 681
    :pswitch_3
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_4

    .line 682
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bf;->g:I

    .line 683
    invoke-virtual {p2, v5}, Lu/aly/bf;->g(Z)V

    goto/16 :goto_1

    .line 685
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 673
    :pswitch_4
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v4, :cond_5

    .line 674
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->f:Ljava/lang/String;

    .line 675
    invoke-virtual {p2, v5}, Lu/aly/bf;->f(Z)V

    goto/16 :goto_1

    .line 677
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 665
    :pswitch_5
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_6

    .line 666
    invoke-virtual {p1}, Lu/aly/dg;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bf;->e:D

    .line 667
    invoke-virtual {p2, v5}, Lu/aly/bf;->e(Z)V

    goto :goto_1

    .line 669
    :cond_6
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 657
    :pswitch_6
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_7

    .line 658
    invoke-virtual {p1}, Lu/aly/dg;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bf;->d:D

    .line 659
    invoke-virtual {p2, v5}, Lu/aly/bf;->d(Z)V

    goto :goto_1

    .line 661
    :cond_7
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 649
    :pswitch_7
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v4, :cond_8

    .line 650
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    .line 651
    invoke-virtual {p2, v5}, Lu/aly/bf;->c(Z)V

    goto :goto_1

    .line 653
    :cond_8
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 641
    :pswitch_8
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v4, :cond_9

    .line 642
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->b:Ljava/lang/String;

    .line 643
    invoke-virtual {p2, v5}, Lu/aly/bf;->b(Z)V

    goto :goto_1

    .line 645
    :cond_9
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 633
    :pswitch_9
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_a

    .line 634
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bf;->a:I

    .line 635
    invoke-virtual {p2, v5}, Lu/aly/bf;->a(Z)V

    goto :goto_1

    .line 637
    :cond_a
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 715
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 620
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$a;->b(Lu/aly/dg;Lu/aly/bf;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 724
    invoke-virtual {p2}, Lu/aly/bf;->H()V

    .line 726
    invoke-static {}, Lu/aly/bf;->I()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 727
    invoke-virtual {p2}, Lu/aly/bf;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lu/aly/bf;->J()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 729
    iget v0, p2, Lu/aly/bf;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 730
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 732
    :cond_0
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p2}, Lu/aly/bf;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-static {}, Lu/aly/bf;->K()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 735
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 739
    :cond_1
    iget-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {p2}, Lu/aly/bf;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    invoke-static {}, Lu/aly/bf;->L()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 742
    iget-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 746
    :cond_2
    invoke-virtual {p2}, Lu/aly/bf;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    invoke-static {}, Lu/aly/bf;->M()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 748
    iget-wide v0, p2, Lu/aly/bf;->d:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(D)V

    .line 749
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 751
    :cond_3
    invoke-virtual {p2}, Lu/aly/bf;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    invoke-static {}, Lu/aly/bf;->N()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 753
    iget-wide v0, p2, Lu/aly/bf;->e:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(D)V

    .line 754
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 756
    :cond_4
    iget-object v0, p2, Lu/aly/bf;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 757
    invoke-virtual {p2}, Lu/aly/bf;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 758
    invoke-static {}, Lu/aly/bf;->O()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 759
    iget-object v0, p2, Lu/aly/bf;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 763
    :cond_5
    invoke-virtual {p2}, Lu/aly/bf;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 764
    invoke-static {}, Lu/aly/bf;->P()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 765
    iget v0, p2, Lu/aly/bf;->g:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 766
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 768
    :cond_6
    iget-object v0, p2, Lu/aly/bf;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 769
    invoke-virtual {p2}, Lu/aly/bf;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 770
    invoke-static {}, Lu/aly/bf;->Q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 771
    iget-object v0, p2, Lu/aly/bf;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 775
    :cond_7
    iget-object v0, p2, Lu/aly/bf;->i:Lu/aly/al;

    if-eqz v0, :cond_8

    .line 776
    invoke-virtual {p2}, Lu/aly/bf;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    invoke-static {}, Lu/aly/bf;->R()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 778
    iget-object v0, p2, Lu/aly/bf;->i:Lu/aly/al;

    invoke-virtual {v0}, Lu/aly/al;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 779
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 782
    :cond_8
    iget-object v0, p2, Lu/aly/bf;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 783
    invoke-virtual {p2}, Lu/aly/bf;->G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    invoke-static {}, Lu/aly/bf;->S()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 785
    iget-object p2, p2, Lu/aly/bf;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 789
    :cond_9
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 790
    invoke-virtual {p1}, Lu/aly/dg;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 620
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$a;->a(Lu/aly/dg;Lu/aly/bf;)V

    return-void
.end method
