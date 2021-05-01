.class public abstract Lcom/edroid/common/dl/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"

# interfaces
.implements Lcom/edroid/common/dl/IDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onExist()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onLengthGet(JJ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onProgress(JB)V
    .locals 0

    return-void
.end method

.method public onStart(JJ)V
    .locals 0

    return-void
.end method

.method public onWait()V
    .locals 0

    return-void
.end method
