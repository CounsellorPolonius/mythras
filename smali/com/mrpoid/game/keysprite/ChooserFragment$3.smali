.class Lcom/mrpoid/game/keysprite/ChooserFragment$3;
.super Ljava/lang/Object;
.source "ChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/game/keysprite/ChooserFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$files:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mrpoid/game/keysprite/ChooserFragment;Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$3;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    iput-object p2, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$3;->val$dir:Ljava/io/File;

    iput-object p3, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$3;->val$files:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 51
    iget-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$3;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$3;->val$dir:Ljava/io/File;

    iget-object v2, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$3;->val$files:[Ljava/lang/String;

    aget-object p2, v2, p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/mrpoid/game/keysprite/ChooserFragment;->access$100(Lcom/mrpoid/game/keysprite/ChooserFragment;Ljava/io/File;)V

    return-void
.end method
