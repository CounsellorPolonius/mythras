.class Lcom/edroid/common/utils/WorkThread$DoRunable;
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
    name = "DoRunable"
.end annotation


# instance fields
.field private mDoCallback:Lcom/edroid/common/utils/WorkThread$IDoCallback;

.field private mDoData:Ljava/lang/Object;

.field private mFinishCallback:Lcom/edroid/common/utils/WorkThread$IFinishCallback;

.field final synthetic this$0:Lcom/edroid/common/utils/WorkThread;


# direct methods
.method private constructor <init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IDoCallback;Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$IFinishCallback;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->this$0:Lcom/edroid/common/utils/WorkThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->mDoCallback:Lcom/edroid/common/utils/WorkThread$IDoCallback;

    .line 138
    iput-object p3, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->mDoData:Ljava/lang/Object;

    .line 139
    iput-object p4, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->mFinishCallback:Lcom/edroid/common/utils/WorkThread$IFinishCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IDoCallback;Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$IFinishCallback;Lcom/edroid/common/utils/WorkThread$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/edroid/common/utils/WorkThread$DoRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IDoCallback;Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$IFinishCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->mDoCallback:Lcom/edroid/common/utils/WorkThread$IDoCallback;

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->mDoData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/edroid/common/utils/WorkThread$IDoCallback;->onDo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/edroid/common/utils/WorkThread;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/edroid/common/utils/WorkThread$FinishRunable;

    iget-object v3, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->this$0:Lcom/edroid/common/utils/WorkThread;

    iget-object v4, p0, Lcom/edroid/common/utils/WorkThread$DoRunable;->mFinishCallback:Lcom/edroid/common/utils/WorkThread$IFinishCallback;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/edroid/common/utils/WorkThread$FinishRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IFinishCallback;Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
