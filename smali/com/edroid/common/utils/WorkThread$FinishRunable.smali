.class Lcom/edroid/common/utils/WorkThread$FinishRunable;
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
    name = "FinishRunable"
.end annotation


# instance fields
.field private mCallback:Lcom/edroid/common/utils/WorkThread$IFinishCallback;

.field private mData:Ljava/lang/Object;

.field final synthetic this$0:Lcom/edroid/common/utils/WorkThread;


# direct methods
.method private constructor <init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IFinishCallback;Ljava/lang/Object;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/edroid/common/utils/WorkThread$FinishRunable;->this$0:Lcom/edroid/common/utils/WorkThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/edroid/common/utils/WorkThread$FinishRunable;->mCallback:Lcom/edroid/common/utils/WorkThread$IFinishCallback;

    .line 121
    iput-object p3, p0, Lcom/edroid/common/utils/WorkThread$FinishRunable;->mData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IFinishCallback;Ljava/lang/Object;Lcom/edroid/common/utils/WorkThread$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/edroid/common/utils/WorkThread$FinishRunable;-><init>(Lcom/edroid/common/utils/WorkThread;Lcom/edroid/common/utils/WorkThread$IFinishCallback;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread$FinishRunable;->mCallback:Lcom/edroid/common/utils/WorkThread$IFinishCallback;

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread$FinishRunable;->mData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/edroid/common/utils/WorkThread$IFinishCallback;->onFinish(Ljava/lang/Object;)V

    return-void
.end method
