.class Lcom/mrpoid/mrplist/view/LocalFragemt$1;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "LocalFragemt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/LocalFragemt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/LocalFragemt;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/LocalFragemt;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/LocalFragemt$1;->this$0:Lcom/mrpoid/mrplist/view/LocalFragemt;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt$1;->this$0:Lcom/mrpoid/mrplist/view/LocalFragemt;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/LocalFragemt;->access$200(Lcom/mrpoid/mrplist/view/LocalFragemt;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/LocalFragemt$1;->this$0:Lcom/mrpoid/mrplist/view/LocalFragemt;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/LocalFragemt;->access$000(Lcom/mrpoid/mrplist/view/LocalFragemt;)Lcom/mrpoid/mrplist/view/FavFragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/LocalFragemt$1;->this$0:Lcom/mrpoid/mrplist/view/LocalFragemt;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/LocalFragemt;->access$100(Lcom/mrpoid/mrplist/view/LocalFragemt;)Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt$1;->this$0:Lcom/mrpoid/mrplist/view/LocalFragemt;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/LocalFragemt;->access$200(Lcom/mrpoid/mrplist/view/LocalFragemt;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/LocalFragemt$1;->this$0:Lcom/mrpoid/mrplist/view/LocalFragemt;

    invoke-static {v1}, Lcom/mrpoid/mrplist/view/LocalFragemt;->access$200(Lcom/mrpoid/mrplist/view/LocalFragemt;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method
