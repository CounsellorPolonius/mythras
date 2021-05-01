.class Lu/aly/bp$a;
.super Lu/aly/dq;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 644
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bp$1;)V
    .locals 0

    .line 644
    invoke-direct {p0}, Lu/aly/bp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bp;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 648
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 651
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 652
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_3

    .line 741
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 744
    invoke-virtual {p2}, Lu/aly/bp;->o()Z

    move-result p1

    if-nez p1, :cond_0

    .line 745
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 747
    :cond_0
    invoke-virtual {p2}, Lu/aly/bp;->r()Z

    move-result p1

    if-nez p1, :cond_1

    .line 748
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 750
    :cond_1
    invoke-virtual {p2}, Lu/aly/bp;->u()Z

    move-result p1

    if-nez p1, :cond_2

    .line 751
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 753
    :cond_2
    invoke-virtual {p2}, Lu/aly/bp;->I()V

    return-void

    .line 655
    :cond_3
    iget-short v1, v0, Lu/aly/db;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 737
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 729
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_4

    .line 730
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bp;->j:I

    .line 731
    invoke-virtual {p2, v4}, Lu/aly/bp;->j(Z)V

    goto/16 :goto_1

    .line 733
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 721
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_5

    .line 722
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->i:Ljava/lang/String;

    .line 723
    invoke-virtual {p2, v4}, Lu/aly/bp;->i(Z)V

    goto/16 :goto_1

    .line 725
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 713
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_6

    .line 714
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->h:Ljava/lang/String;

    .line 715
    invoke-virtual {p2, v4}, Lu/aly/bp;->h(Z)V

    goto/16 :goto_1

    .line 717
    :cond_6
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 705
    :pswitch_3
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_7

    .line 706
    invoke-virtual {p1}, Lu/aly/dg;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {p2, v4}, Lu/aly/bp;->g(Z)V

    goto/16 :goto_1

    .line 709
    :cond_7
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_1

    .line 697
    :pswitch_4
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_8

    .line 698
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bp;->f:I

    .line 699
    invoke-virtual {p2, v4}, Lu/aly/bp;->f(Z)V

    goto/16 :goto_1

    .line 701
    :cond_8
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 689
    :pswitch_5
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_9

    .line 690
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bp;->e:I

    .line 691
    invoke-virtual {p2, v4}, Lu/aly/bp;->e(Z)V

    goto :goto_1

    .line 693
    :cond_9
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 681
    :pswitch_6
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_a

    .line 682
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bp;->d:I

    .line 683
    invoke-virtual {p2, v4}, Lu/aly/bp;->d(Z)V

    goto :goto_1

    .line 685
    :cond_a
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 673
    :pswitch_7
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_b

    .line 674
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->c:Ljava/lang/String;

    .line 675
    invoke-virtual {p2, v4}, Lu/aly/bp;->c(Z)V

    goto :goto_1

    .line 677
    :cond_b
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 665
    :pswitch_8
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_c

    .line 666
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    .line 667
    invoke-virtual {p2, v4}, Lu/aly/bp;->b(Z)V

    goto :goto_1

    .line 669
    :cond_c
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 657
    :pswitch_9
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_d

    .line 658
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->a:Ljava/lang/String;

    .line 659
    invoke-virtual {p2, v4}, Lu/aly/bp;->a(Z)V

    goto :goto_1

    .line 661
    :cond_d
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 739
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

    .line 644
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$a;->b(Lu/aly/dg;Lu/aly/bp;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 757
    invoke-virtual {p2}, Lu/aly/bp;->I()V

    .line 759
    invoke-static {}, Lu/aly/bp;->J()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 760
    iget-object v0, p2, Lu/aly/bp;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Lu/aly/bp;->K()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 762
    iget-object v0, p2, Lu/aly/bp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 765
    :cond_0
    iget-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 766
    invoke-static {}, Lu/aly/bp;->L()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 767
    iget-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 770
    :cond_1
    iget-object v0, p2, Lu/aly/bp;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 771
    invoke-static {}, Lu/aly/bp;->M()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 772
    iget-object v0, p2, Lu/aly/bp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 775
    :cond_2
    invoke-static {}, Lu/aly/bp;->N()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 776
    iget v0, p2, Lu/aly/bp;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 777
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 778
    invoke-static {}, Lu/aly/bp;->O()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 779
    iget v0, p2, Lu/aly/bp;->e:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 780
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 781
    invoke-static {}, Lu/aly/bp;->P()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 782
    iget v0, p2, Lu/aly/bp;->f:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 783
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 784
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 785
    invoke-static {}, Lu/aly/bp;->Q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 786
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/nio/ByteBuffer;)V

    .line 787
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 789
    :cond_3
    iget-object v0, p2, Lu/aly/bp;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 790
    invoke-static {}, Lu/aly/bp;->R()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 791
    iget-object v0, p2, Lu/aly/bp;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 794
    :cond_4
    iget-object v0, p2, Lu/aly/bp;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 795
    invoke-static {}, Lu/aly/bp;->S()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 796
    iget-object v0, p2, Lu/aly/bp;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 799
    :cond_5
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
    invoke-static {}, Lu/aly/bp;->T()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 801
    iget p2, p2, Lu/aly/bp;->j:I

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(I)V

    .line 802
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 804
    :cond_6
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 805
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

    .line 644
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$a;->a(Lu/aly/dg;Lu/aly/bp;)V

    return-void
.end method
