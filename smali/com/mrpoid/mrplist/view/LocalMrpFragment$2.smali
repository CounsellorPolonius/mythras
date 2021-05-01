.class Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;
.super Ljava/lang/Object;
.source "LocalMrpFragment.java"

# interfaces
.implements Lcom/edroid/common/utils/WorkThread$ITask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/LocalMrpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/LocalMrpFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onDo([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 90
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object v1, v1, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->path:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->cacheList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->cacheList:Ljava/util/ArrayList;

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->cacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->ft:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    array-length v0, p1

    if-lez v0, :cond_1

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 100
    iget-object v3, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object v3, v3, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->cacheList:Ljava/util/ArrayList;

    new-instance v4, Lcom/mrpoid/mrplist/moduls/MpFile;

    invoke-direct {v4, v2}, Lcom/mrpoid/mrplist/moduls/MpFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->cacheList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->cacheList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->cacheList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->setData(Ljava/util/List;)V

    .line 116
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$2;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->setRefreshing(Z)V

    return-void
.end method
