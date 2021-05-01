.class public abstract Lcom/mrpoid/mrplist/view/FileListFragment;
.super Lcom/mrpoid/mrplist/view/MyListFragment;
.source "FileListFragment.java"


# static fields
.field private static final PATH_SEP:C


# instance fields
.field private cacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mrpoid/mrplist/moduls/MpFile;",
            ">;"
        }
    .end annotation
.end field

.field private curP:I

.field private curPath:Ljava/lang/String;

.field private curY:I

.field private isRootPath:Z

.field private loadTask:Lcom/edroid/common/utils/WorkThread$ITask;

.field private lv:Landroid/widget/ListView;

.field private mFocuseIndex:I

.field private final mPathStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/mrpoid/mrplist/view/FileListFragment;->PATH_SEP:C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3eb

    .line 71
    invoke-direct {p0, v0}, Lcom/mrpoid/mrplist/view/MyListFragment;-><init>(I)V

    .line 63
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->mPathStack:Ljava/util/Stack;

    .line 160
    new-instance v0, Lcom/mrpoid/mrplist/view/FileListFragment$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/FileListFragment$1;-><init>(Lcom/mrpoid/mrplist/view/FileListFragment;)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->loadTask:Lcom/edroid/common/utils/WorkThread$ITask;

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mrpoid/mrplist/view/FileListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->cacheList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mrpoid/mrplist/view/FileListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->cacheList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mrpoid/mrplist/view/FileListFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->isRootPath:Z

    return p0
.end method

.method static synthetic access$300(Lcom/mrpoid/mrplist/view/FileListFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curP:I

    return p0
.end method

.method static synthetic access$400(Lcom/mrpoid/mrplist/view/FileListFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curY:I

    return p0
.end method

.method private initPathStack()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const-string v0, "/"

    .line 96
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->pushPath(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->startPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->pushPath(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->startPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getFileFilter()Ljava/io/FileFilter;
.end method

.method protected getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method inDir(Ljava/lang/String;I)V
    .locals 1

    .line 117
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mrpoid/mrplist/view/FileListFragment;->pushPath(Ljava/lang/String;)V

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curP:I

    .line 120
    iput p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curY:I

    .line 121
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->reload()V

    return-void
.end method

.method public isRootDir()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method load()V
    .locals 2

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->setRefreshing(Z)V

    .line 200
    invoke-static {}, Lcom/edroid/common/utils/WorkThread;->getDefault()Lcom/edroid/common/utils/WorkThread;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->loadTask:Lcom/edroid/common/utils/WorkThread$ITask;

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/WorkThread;->postTask(Lcom/edroid/common/utils/WorkThread$ITask;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 220
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->initPathStack()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 225
    invoke-super {p0, p1, p2}, Lcom/mrpoid/mrplist/view/MyListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0003

    .line 227
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 259
    invoke-super {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {v0, p3}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/MpFile;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->isParent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->outDir()V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/mrpoid/mrplist/view/FileListFragment;->inDir(Ljava/lang/String;I)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/mrpoid/mrplist/view/MyListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090080

    if-ne v0, v2, :cond_0

    .line 233
    sget-object p1, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->toPathLoad(Ljava/lang/String;)V

    return v1

    .line 235
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09008b

    if-ne v0, v2, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->reload()V

    return v1

    .line 240
    :cond_1
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh()V
    .locals 0

    .line 253
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->reload()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 245
    invoke-super {p0, p1, p2}, Lcom/mrpoid/mrplist/view/MyListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->lv:Landroid/widget/ListView;

    .line 248
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->reload()V

    return-void
.end method

.method outDir()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->parsePath(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curP:I

    .line 145
    iput v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curY:I

    const-string v0, "/"

    .line 146
    iput-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    .line 150
    :goto_1
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->reload()V

    return-void
.end method

.method parsePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, ","

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 88
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 89
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curP:I

    const/4 v0, 0x2

    .line 90
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curY:I

    return-void
.end method

.method protected pushPath(Ljava/lang/String;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 80
    iget-object v2, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 83
    :goto_1
    iget-object v2, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->mPathStack:Ljava/util/Stack;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reload()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->load()V

    return-void
.end method

.method public setStartPath(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->startPath:Ljava/lang/String;

    return-void
.end method

.method public toPathLoad(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/FileListFragment;->pushPath(Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curP:I

    .line 133
    iput v0, p0, Lcom/mrpoid/mrplist/view/FileListFragment;->curY:I

    .line 134
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/FileListFragment;->pushPath(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;->reload()V

    return-void
.end method
