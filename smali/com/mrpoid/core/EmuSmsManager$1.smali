.class Lcom/mrpoid/core/EmuSmsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EmuSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/core/EmuSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/core/EmuSmsManager;


# direct methods
.method constructor <init>(Lcom/mrpoid/core/EmuSmsManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mrpoid/core/EmuSmsManager$1;->this$0:Lcom/mrpoid/core/EmuSmsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/mrpoid/core/EmuSmsManager$1;->this$0:Lcom/mrpoid/core/EmuSmsManager;

    invoke-static {v0, p1, p2}, Lcom/mrpoid/core/EmuSmsManager;->access$000(Lcom/mrpoid/core/EmuSmsManager;Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "EmuSmsManager"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inner receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
