.class public abstract Lcom/edroid/common/utils/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/edroid/common/utils/Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/edroid/common/utils/Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/edroid/common/utils/Singleton;->mInstance:Ljava/lang/Object;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/edroid/common/utils/Singleton;->mInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
