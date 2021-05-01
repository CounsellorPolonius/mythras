.class Lcom/edroid/common/utils/WorkThread$ITaskRunable;
.super Ljava/lang/Object;
.source "WorkThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/WorkThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ITaskRunable"
.end annotation


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mRet:Ljava/lang/Object;

.field private mTask:Lcom/edroid/common/utils/WorkThread$ITask;

.field final synthetic this$0:Lcom/edroid/common/utils/WorkThread;


# direct methods
.method private varargs constructor <init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$ITask;[Ljava/lang/Object;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->this$0:Lcom/edroid/common/utils/WorkThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->mTask:Lcom/edroid/common/utils/WorkThread$ITask;

    .line 232
    iput-object p3, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->mArgs:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$ITask;[Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/edroid/common/utils/WorkThread$ITaskRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$ITask;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/edroid/common/utils/WorkThread$ITaskRunable;)Ljava/lang/Object;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->mRet:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/edroid/common/utils/WorkThread$ITaskRunable;)Lcom/edroid/common/utils/WorkThread$ITask;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->mTask:Lcom/edroid/common/utils/WorkThread$ITask;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->mTask:Lcom/edroid/common/utils/WorkThread$ITask;

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->mArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/edroid/common/utils/WorkThread$ITask;->onDo([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->mRet:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    :goto_0
    invoke-static {}, Lcom/edroid/common/utils/WorkThread;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/edroid/common/utils/WorkThread$ITaskRunable$1;

    invoke-direct {v1, p0}, Lcom/edroid/common/utils/WorkThread$ITaskRunable$1;-><init>(Lcom/edroid/common/utils/WorkThread$ITaskRunable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
