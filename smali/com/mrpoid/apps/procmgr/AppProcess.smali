.class public Lcom/mrpoid/apps/procmgr/AppProcess;
.super Ljava/lang/Object;
.source "AppProcess.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mrpoid/apps/procmgr/IMssageCodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;
    }
.end annotation


# static fields
.field public static final log:Lcom/edroid/common/utils/Logger;


# instance fields
.field private lastActiveTime:J

.field private mLifeListener:Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;

.field private final mLocal:Landroid/os/Messenger;

.field private mProcIndex:I

.field private mRemoteMessenger:Landroid/os/Messenger;

.field private final manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;

.field private pid:I

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget-boolean v0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    const-string v1, "AppProcess"

    invoke-static {v0, v1}, Lcom/edroid/common/utils/Logger;->create(ZLjava/lang/String;)Lcom/edroid/common/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/apps/procmgr/AppProcess;->log:Lcom/edroid/common/utils/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/mrpoid/apps/procmgr/AppProcessManager;ILandroid/os/IBinder;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLocal:Landroid/os/Messenger;

    .line 48
    iput p2, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    .line 49
    iput-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    .line 50
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mRemoteMessenger:Landroid/os/Messenger;

    .line 52
    iget p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    const/16 p2, 0x1001

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/mrpoid/apps/procmgr/AppProcess;->sendMsg(IIILandroid/os/Bundle;)Z

    return-void
.end method

.method private reStart()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->pid:I

    return-void
.end method

.method private sendMsg(IIILandroid/os/Bundle;)Z
    .locals 1

    .line 84
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 85
    iput p1, v0, Landroid/os/Message;->what:I

    .line 86
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 87
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 88
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLocal:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 92
    :try_start_0
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mRemoteMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public exit(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1014

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, v1, v0, v0, v2}, Lcom/mrpoid/apps/procmgr/AppProcess;->sendMsg(IIILandroid/os/Bundle;)Z

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    invoke-virtual {p1, v0}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->kill(I)V

    :cond_0
    return-void
.end method

.method public getLastActiveTime()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->lastActiveTime:J

    return-wide v0
.end method

.method public getPid()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->pid:I

    return v0
.end method

.method public getProcIndex()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->startTime:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 130
    :pswitch_0
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcess;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exited!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLifeListener:Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLifeListener:Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;

    invoke-interface {p1}, Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;->onGoodbye()V

    goto/16 :goto_0

    .line 120
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->lastActiveTime:J

    .line 121
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcess;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resumed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLifeListener:Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLifeListener:Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;

    invoke-interface {p1}, Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;->onResume()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->startTime:J

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->lastActiveTime:J

    .line 106
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->pid:I

    .line 108
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcess;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hello fb from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    invoke-virtual {p1, v0}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->markAsRunning(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcess;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mProcIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is running!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLifeListener:Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;

    if-eqz p1, :cond_2

    .line 114
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->mLifeListener:Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;

    invoke-interface {p1}, Lcom/mrpoid/apps/procmgr/AppProcess$ProcessLifeListener;->onHello()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1013
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public killSelf()V
    .locals 1

    .line 80
    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcess;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1013

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, v1, v0, v0, v2}, Lcom/mrpoid/apps/procmgr/AppProcess;->sendMsg(IIILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/mrpoid/apps/procmgr/AppProcess;->reStart()V

    :cond_0
    return-void
.end method
