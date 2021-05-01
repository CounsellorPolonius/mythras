.class public Lcom/mrpoid/apps/procmgr/AppProcessService;
.super Landroid/app/Service;
.source "AppProcessService.java"

# interfaces
.implements Lcom/mrpoid/apps/procmgr/IMssageCodes;
.implements Landroid/os/Handler$Callback;


# static fields
.field static final TAG:Ljava/lang/String; = "AppProcessService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocalMessenger:Landroid/os/Messenger;

.field private mProcIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mLocalMessenger:Landroid/os/Messenger;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mProcIndex:I

    return-void
.end method

.method private sendMsg(Landroid/os/Messenger;IIILandroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    const-string p2, "AppProcessService"

    const-string p3, "who am I talking with? remote lost!"

    invoke-virtual {p1, p2, p3}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 63
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 64
    iput p2, v1, Landroid/os/Message;->what:I

    .line 65
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 66
    iput p4, v1, Landroid/os/Message;->arg2:I

    .line 67
    iput-object p5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mLocalMessenger:Landroid/os/Messenger;

    iput-object p2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 71
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method


# virtual methods
.method public getProcIndex()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mProcIndex:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1014

    if-eq v0, v1, :cond_0

    .line 50
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mrpoid/apps/procmgr/AppProcessService;->sendMsg(Landroid/os/Messenger;IIILandroid/os/Bundle;)Z

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    sget-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "AppProcessService"

    const-string v2, "byby!"

    invoke-virtual {v0, v1, v2}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/mrpoid/apps/procmgr/AppProcessService;->sendMsg(Landroid/os/Messenger;IIILandroid/os/Bundle;)Z

    goto :goto_0

    .line 38
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mProcIndex:I

    .line 39
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mrpoid/apps/procmgr/AppProcessService;->sendMsg(Landroid/os/Messenger;IIILandroid/os/Bundle;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 81
    sget-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "AppProcessService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "pid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessService;->mLocalMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
