.class Lcom/mrpoid/app/EmulatorActivity$17;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/app/EmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/app/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/mrpoid/app/EmulatorActivity;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$17;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(I)Z
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$17;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v0}, Lcom/mrpoid/app/EmulatorActivity;->access$000(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/EmuConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->enableKeyVirb:Z

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$17;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v0}, Lcom/mrpoid/app/EmulatorActivity;->access$700(Lcom/mrpoid/app/EmulatorActivity;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$17;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v0}, Lcom/mrpoid/app/EmulatorActivity;->access$100(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/Emulator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    return v1
.end method

.method public onKeyUp(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x401

    if-ne p1, v1, :cond_0

    .line 945
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$17;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity$17;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v1}, Lcom/mrpoid/app/EmulatorActivity;->access$600(Lcom/mrpoid/app/EmulatorActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mrpoid/app/EmulatorActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity$17;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v1}, Lcom/mrpoid/app/EmulatorActivity;->access$100(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/Emulator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    :goto_0
    return v0
.end method
