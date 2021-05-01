.class public interface abstract Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;
.super Ljava/lang/Object;
.source "AppProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/apps/procmgr/AppProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(ILcom/mrpoid/apps/procmgr/AppProcess;Z)V
.end method
