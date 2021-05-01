.class public Lcom/mrpoid/apps/procmgr/AppProcessManager;
.super Ljava/lang/Object;
.source "AppProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;,
        Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;,
        Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;,
        Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;
    }
.end annotation


# static fields
.field public static final log:Lcom/edroid/common/utils/Logger;


# instance fields
.field private final MAX_PROC_COUNT:I

.field private final SERVICE_NAME_PERFIX:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget-boolean v0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    const-string v1, "AppProcManager"

    invoke-static {v0, v1}, Lcom/edroid/common/utils/Logger;->create(ZLjava/lang/String;)Lcom/edroid/common/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->SERVICE_NAME_PERFIX:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->MAX_PROC_COUNT:I

    .line 66
    iget p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->MAX_PROC_COUNT:I

    new-array p1, p1, [Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    iput-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    const/4 p1, 0x0

    .line 68
    :goto_0
    iget p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->MAX_PROC_COUNT:I

    if-ge p1, p2, :cond_0

    .line 69
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    new-instance p3, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    invoke-direct {p3}, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;-><init>()V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/apps/procmgr/AppProcessManager;ILcom/mrpoid/apps/procmgr/AppProcess;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->markAsConnected(ILcom/mrpoid/apps/procmgr/AppProcess;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mrpoid/apps/procmgr/AppProcessManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->unbindProc(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mrpoid/apps/procmgr/AppProcessManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->resetProc(I)V

    return-void
.end method

.method private binProc(ILjava/lang/String;Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;)V
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->SERVICE_NAME_PERFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;

    invoke-direct {v1, p0, p1, p3}, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;-><init>(Lcom/mrpoid/apps/procmgr/AppProcessManager;ILcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;)V

    .line 76
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 77
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    iget-object p3, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter p3

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v0, v0, p1

    iput-object v1, v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->conn:Landroid/content/ServiceConnection;

    .line 83
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->mark:Ljava/lang/String;

    .line 84
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p2, p2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->readyTime:J

    .line 85
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p2, p2, p1

    sget-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->WAITING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    iput-object v0, p2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    .line 87
    sget-object p2, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " wait service connection cb!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 88
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkRuning(Ljava/lang/String;)I
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    const/4 v1, 0x0

    .line 238
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->MAX_PROC_COUNT:I

    if-ge v1, v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->mark:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    monitor-exit v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private exitProc(I)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->unbindProc(I)V

    .line 141
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mrpoid/apps/procmgr/AppProcess;->exit(Z)V

    .line 143
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->reset()V

    .line 148
    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exited!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getIdleIndex(IZ)I
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->IDLE:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_0

    .line 178
    monitor-exit v0

    return p1

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->WAITING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    .line 181
    sget-object p2, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foce exit waiting proc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->resetProc(I)V

    .line 184
    monitor-exit v0

    return p1

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_2

    if-eqz p2, :cond_2

    .line 187
    sget-object p2, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foce exit waiting proc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->exitProc(I)V

    .line 190
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 194
    :goto_0
    iget v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->MAX_PROC_COUNT:I

    if-ge p2, v2, :cond_4

    .line 195
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->IDLE:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_3

    .line 196
    monitor-exit v0

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 200
    :goto_1
    iget v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->MAX_PROC_COUNT:I

    if-ge p2, v2, :cond_6

    .line 201
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->WAITING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_5

    .line 202
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->reset()V

    .line 203
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use ready proc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 204
    monitor-exit v0

    return p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 209
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p2, -0x1

    .line 211
    :goto_2
    iget v4, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->MAX_PROC_COUNT:I

    if-ge p1, v4, :cond_8

    .line 212
    iget-object v4, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v5, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v4, v5, :cond_7

    .line 213
    iget-object v4, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    invoke-virtual {v4}, Lcom/mrpoid/apps/procmgr/AppProcess;->getLastActiveTime()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_7

    .line 215
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p2, p2, p1

    iget-object p2, p2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    invoke-virtual {p2}, Lcom/mrpoid/apps/procmgr/AppProcess;->getLastActiveTime()J

    move-result-wide v2

    move p2, p1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    if-eq p2, v1, :cond_9

    .line 221
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit running proc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p2}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->exitProc(I)V

    .line 223
    monitor-exit v0

    return p2

    .line 225
    :cond_9
    monitor-exit v0

    return v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private killProc(I)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->unbindProc(I)V

    .line 156
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mrpoid/apps/procmgr/AppProcess;->exit(Z)V

    .line 158
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->reset()V

    .line 163
    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " killed!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 164
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private markAsConnected(ILcom/mrpoid/apps/procmgr/AppProcess;)V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    .line 94
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p2, p2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->connectedTime:J

    .line 95
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p2, p2, p1

    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->CONNECTED:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    iput-object v1, p2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    .line 97
    sget-object p2, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connected time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p1, v4, p1

    iget-wide v4, p1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->readyTime:J

    const/4 p1, 0x0

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p2, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resetProc(I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->unbindProc(I)V

    .line 133
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->reset()V

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private unbindProc(I)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->conn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 123
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->conn:Landroid/content/ServiceConnection;

    .line 125
    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbind proc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 127
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public kill(I)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->killProc(I)V

    return-void
.end method

.method protected markAsRunning(I)Z
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v1, v2, :cond_0

    .line 105
    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has Preemptived by"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p1, v3, p1

    invoke-virtual {p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 106
    monitor-exit v0

    return p1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v1, v1, p1

    sget-object v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    iput-object v2, v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    .line 111
    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " running time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p1, v5, p1

    iget-wide v5, p1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->connectedTime:J

    const/4 p1, 0x0

    sub-long v7, v3, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v1, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 113
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized requestIdleProcess(IZLjava/lang/String;Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;)V
    .locals 8

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-direct {p0, p3}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->checkRuning(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 300
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_0

    .line 301
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    invoke-virtual {p1}, Lcom/mrpoid/apps/procmgr/AppProcess;->resume()V

    .line 302
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    const/4 p2, 0x1

    invoke-interface {p4, v0, p1, p2}, Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;->onSuccess(ILcom/mrpoid/apps/procmgr/AppProcess;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 306
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->WAITING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_2

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->readyTime:J

    const/4 v6, 0x0

    sub-long v6, v2, v4

    const-wide/16 v2, 0x2710

    cmp-long v4, v6, v2

    if-lez v4, :cond_1

    .line 308
    invoke-direct {p0, v0}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->resetProc(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 313
    :cond_2
    iget-object v2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager;->mProcList:[Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v3, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->IDLE:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    if-ne v2, v3, :cond_3

    .line 314
    invoke-direct {p0, v0}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->resetProc(I)V

    :cond_3
    :goto_0
    if-ne v0, v1, :cond_4

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->getIdleIndex(IZ)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 323
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    const-string p2, "no idle process now!"

    invoke-virtual {p1, p2}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    const-string p1, "no idle process now!"

    .line 324
    invoke-interface {p4, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;->onFailure(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 330
    :cond_4
    :try_start_2
    invoke-direct {p0, v0, p3, p4}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->binProc(ILjava/lang/String;Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 293
    monitor-exit p0

    throw p1
.end method
