.class Lcom/mrpoid/app/EmulatorActivity$8;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/mrpoid/game/keysprite/KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->runKeySprite(Lcom/mrpoid/game/keysprite/KeySprite;)V
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

    .line 666
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$8;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILcom/mrpoid/game/keysprite/Sprite;)V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$8;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v0}, Lcom/mrpoid/app/EmulatorActivity;->access$400(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/game/keysprite/KeySprite;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$8;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iget-object v0, v0, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 681
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$8;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iget-object p1, p1, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    const/16 v0, 0x3ec

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mrpoid/game/keysprite/Sprite;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u70b9\u6b64\u505c\u6b62"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onKeyUp(ILcom/mrpoid/game/keysprite/Sprite;)V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$8;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v0}, Lcom/mrpoid/app/EmulatorActivity;->access$400(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/game/keysprite/KeySprite;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$8;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iget-object v0, v0, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 673
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$8;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iget-object p1, p1, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    const/16 v0, 0x3ec

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mrpoid/game/keysprite/Sprite;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u70b9\u6b64\u505c\u6b62"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
