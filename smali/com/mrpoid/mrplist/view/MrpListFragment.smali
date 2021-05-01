.class public abstract Lcom/mrpoid/mrplist/view/MrpListFragment;
.super Lcom/mrpoid/mrplist/view/FileListFragment;
.source "MrpListFragment.java"


# static fields
.field public static final mrpFilter:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/mrpoid/mrplist/view/MrpListFragment$1;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/MrpListFragment$1;-><init>()V

    sput-object v0, Lcom/mrpoid/mrplist/view/MrpListFragment;->mrpFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/FileListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFileFilter()Ljava/io/FileFilter;
    .locals 1

    .line 22
    sget-object v0, Lcom/mrpoid/mrplist/view/MrpListFragment;->mrpFilter:Ljava/io/FileFilter;

    return-object v0
.end method

.method public isContainMrp(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isContainMrp1(Ljava/io/File;)Z
    .locals 6

    .line 54
    sget-object v0, Lcom/mrpoid/mrplist/view/MrpListFragment;->mrpFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 56
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    return v5

    .line 63
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mrpoid/mrplist/view/MrpListFragment;->isContainMrp(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method
