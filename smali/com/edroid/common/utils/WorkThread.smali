.class public final Lcom/edroid/common/utils/WorkThread;
.super Ljava/lang/Object;
.source "WorkThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/edroid/common/utils/WorkThread$ITaskRunable;,
        Lcom/edroid/common/utils/WorkThread$ITask;,
        Lcom/edroid/common/utils/WorkThread$IRunable;,
        Lcom/edroid/common/utils/WorkThread$DoRunable;,
        Lcom/edroid/common/utils/WorkThread$FinishRunable;,
        Lcom/edroid/common/utils/WorkThread$IDoCallback;,
        Lcom/edroid/common/utils/WorkThread$IFinishCallback;
    }
.end annotation


# static fields
.field public static final ALIVE_TIME_MAX:I = 0xafc8

.field private static final ALIVE_TIME_MAX_R:I = 0x9c40

.field private static final gDefault:Lcom/edroid/common/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/edroid/common/utils/Singleton<",
            "Lcom/edroid/common/utils/WorkThread;",
            ">;"
        }
    .end annotation
.end field

.field public static final log:Lcom/edroid/common/utils/Logger;

.field private static final mUiHandler:Landroid/os/Handler;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;

.field private name:Ljava/lang/String;

.field private t_last_alive:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkThread"

    .line 21
    invoke-static {v0}, Lcom/edroid/common/utils/Logger;->create(Ljava/lang/String;)Lcom/edroid/common/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/edroid/common/utils/WorkThread;->log:Lcom/edroid/common/utils/Logger;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/edroid/common/utils/WorkThread;->mUiHandler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/edroid/common/utils/WorkThread$1;

    invoke-direct {v0}, Lcom/edroid/common/utils/WorkThread$1;-><init>()V

    sput-object v0, Lcom/edroid/common/utils/WorkThread;->gDefault:Lcom/edroid/common/utils/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "default"

    .line 42
    invoke-direct {p0, v0}, Lcom/edroid/common/utils/WorkThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/edroid/common/utils/WorkThread;->t_last_alive:J

    .line 46
    iput-object p1, p0, Lcom/edroid/common/utils/WorkThread;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/edroid/common/utils/WorkThread;->create()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getDefault()Lcom/edroid/common/utils/WorkThread;
    .locals 1

    .line 326
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->gDefault:Lcom/edroid/common/utils/Singleton;

    invoke-virtual {v0}, Lcom/edroid/common/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/edroid/common/utils/WorkThread;

    return-object v0
.end method


# virtual methods
.method public checkAlive()Z
    .locals 6

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/edroid/common/utils/WorkThread;->t_last_alive:J

    sub-long v4, v0, v2

    const-wide/32 v0, 0xafc8

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 65
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/edroid/common/utils/WorkThread;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " thread die recreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 68
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 69
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/edroid/common/utils/WorkThread;->create()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method create()V
    .locals 2

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, p0}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 54
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    .line 57
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    const/high16 v1, -0x10000000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public exit()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :catch_0
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "join finish!"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "exited"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .line 301
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 80
    iget p1, p1, Landroid/os/Message;->what:I

    const/high16 v0, -0x10000000

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/edroid/common/utils/WorkThread;->t_last_alive:J

    .line 83
    iget-object p1, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x9c40

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    sget-object p1, Lcom/edroid/common/utils/WorkThread;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/edroid/common/utils/WorkThread;->t_last_alive:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postCb(Lcom/edroid/common/utils/WorkThread$IDoCallback;Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$IFinishCallback;)V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/edroid/common/utils/WorkThread$DoRunable;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/edroid/common/utils/WorkThread$DoRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IDoCallback;Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$IFinishCallback;Lcom/edroid/common/utils/WorkThread$1;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postEx(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/utils/WorkThread$IRunable;

    invoke-direct {v1, p0, p1, p2}, Lcom/edroid/common/utils/WorkThread$IRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postTask(Lcom/edroid/common/utils/WorkThread$ITask;)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/utils/WorkThread$ITaskRunable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/edroid/common/utils/WorkThread$ITaskRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$ITask;[Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs postTask(Lcom/edroid/common/utils/WorkThread$ITask;[Ljava/lang/Object;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/utils/WorkThread$ITaskRunable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/edroid/common/utils/WorkThread$ITaskRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$ITask;[Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postTaskDelay(ILcom/edroid/common/utils/WorkThread$ITask;)V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/utils/WorkThread$ITaskRunable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-direct {v1, p0, p2, v3, v2}, Lcom/edroid/common/utils/WorkThread$ITaskRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$ITask;[Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$1;)V

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postUi(Ljava/lang/Runnable;)V
    .locals 1

    .line 289
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postUiDelay(Ljava/lang/Runnable;I)V
    .locals 3

    .line 293
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->mUiHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postd(Ljava/lang/Runnable;I)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 37
    sget-object v0, Lcom/edroid/common/utils/WorkThread;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crashed by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/edroid/common/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
