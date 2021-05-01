.class Lcom/mrpoid/game/keysprite/ChooserFragment$2;
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


# direct methods
.method constructor <init>(Lcom/mrpoid/game/keysprite/ChooserFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$2;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$2;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$2;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    invoke-virtual {v0}, Lcom/mrpoid/game/keysprite/ChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/mrpoid/game/keysprite/ChooserFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
