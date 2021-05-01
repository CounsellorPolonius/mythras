.class Lcom/mrpoid/mrplist/view/FileListFragment$1;
.super Ljava/lang/Object;
.source "FileListFragment.java"

# interfaces
.implements Lcom/edroid/common/utils/WorkThread$ITask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/FileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/FileListFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/FileListFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onDo([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 164
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------curPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {v1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$000(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$000(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$102(Lcom/mrpoid/mrplist/view/FileListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$200(Lcom/mrpoid/mrplist/view/FileListFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/mrpoid/mrplist/moduls/MpFile;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$000(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->getFileFilter()Ljava/io/FileFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 176
    array-length v0, p1

    if-lez v0, :cond_3

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 178
    iget-object v3, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {v3}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/mrpoid/mrplist/moduls/MpFile;

    invoke-direct {v4, v2}, Lcom/mrpoid/mrplist/moduls/MpFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 182
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/FileListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->setData(Ljava/util/List;)V

    .line 193
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-virtual {p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$300(Lcom/mrpoid/mrplist/view/FileListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    invoke-static {v1}, Lcom/mrpoid/mrplist/view/FileListFragment;->access$400(Lcom/mrpoid/mrplist/view/FileListFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 194
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FileListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->setRefreshing(Z)V

    return-void
.end method
