.class Lcom/mrpoid/game/keysprite/ChooserFragment$1;
.super Ljava/lang/Object;
.source "ChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 61
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$1;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$1;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    invoke-static {p1}, Lcom/mrpoid/game/keysprite/ChooserFragment;->access$000(Lcom/mrpoid/game/keysprite/ChooserFragment;)Lcom/mrpoid/game/keysprite/OnChooseLitener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment$1;->this$0:Lcom/mrpoid/game/keysprite/ChooserFragment;

    invoke-static {p1}, Lcom/mrpoid/game/keysprite/ChooserFragment;->access$000(Lcom/mrpoid/game/keysprite/ChooserFragment;)Lcom/mrpoid/game/keysprite/OnChooseLitener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mrpoid/game/keysprite/OnChooseLitener;->onCancel()V

    :cond_0
    return-void
.end method
