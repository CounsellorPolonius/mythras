.class final Lcom/mrpoid/mrplist/view/MrpListFragment$1;
.super Ljava/lang/Object;
.source "MrpListFragment.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/MrpListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 p1, 0x2e

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 p1, -0x1

    if-eq v3, p1, :cond_1

    const/4 v2, 0x1

    const-string v4, ".mrp"

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 35
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
