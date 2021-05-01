.class Lcom/mrpoid/mrplist/view/LocalMrpFragment$1;
.super Ljava/lang/Object;
.source "LocalMrpFragment.java"

# interfaces
.implements Ljava/io/FileFilter;


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

    .line 70
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/LocalMrpFragment$1;->this$0:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 p1, 0x2e

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 p1, -0x1

    if-eq v3, p1, :cond_0

    const/4 v2, 0x1

    const-string v4, ".mrp"

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 78
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
