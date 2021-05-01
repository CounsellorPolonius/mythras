.class public Lcom/mrpoid/mrplist/view/LocalMrpFragment;
.super Lcom/mrpoid/mrplist/view/MyListFragment;
.source "LocalMrpFragment.java"


# instance fields
.field cacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mrpoid/mrplist/moduls/MpFile;",
            ">;"
        }
    .end annotation
.end field

.field final ft:Ljava/io/FileFilter;

.field private loadTask:Lcom/edroid/common/utils/WorkThread$ITask;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3ea

    .line 31
    invoke-direct {p0, v0}, Lcom/mrpoid/mrplist/view/MyListFragment;-><init>(I)V

    .line 70
    new-instance v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment$1;-><init>(Lcom/mrpoid/mrplist/view/LocalMrpFragment;)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->ft:Ljava/io/FileFilter;

    .line 86
    new-instance v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;-><init>(Lcom/mrpoid/mrplist/view/LocalMrpFragment;)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->loadTask:Lcom/edroid/common/utils/WorkThread$ITask;

    return-void
.end method

.method private load()V
    .locals 2

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->setRefreshing(Z)V

    .line 50
    invoke-static {}, Lcom/edroid/common/utils/WorkThread;->getDefault()Lcom/edroid/common/utils/WorkThread;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->loadTask:Lcom/edroid/common/utils/WorkThread$ITask;

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/WorkThread;->postTask(Lcom/edroid/common/utils/WorkThread$ITask;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->load()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->load()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mrpoid/mrplist/app/HomeActivity;

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/app/HomeActivity;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScnsize(Ljava/lang/String;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mythroad/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->path:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/app/HomeActivity;

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/app/HomeActivity;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->load()V

    :cond_0
    return-void
.end method
