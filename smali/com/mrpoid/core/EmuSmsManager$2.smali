.class Lcom/mrpoid/core/EmuSmsManager$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mrpoid/core/EmuSmsManager;Landroid/os/Handler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mrpoid/core/EmuSmsManager$2;->this$0:Lcom/mrpoid/core/EmuSmsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "EmuSmsManager"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/mrpoid/core/EmuSmsManager$2;->this$0:Lcom/mrpoid/core/EmuSmsManager;

    invoke-static {p1}, Lcom/mrpoid/core/EmuSmsManager;->access$100(Lcom/mrpoid/core/EmuSmsManager;)V

    return-void
.end method
