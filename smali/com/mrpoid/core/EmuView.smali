.class public Lcom/mrpoid/core/EmuView;
.super Landroid/opengl/GLSurfaceView;
.source "EmuView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EmulatorSurface"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/mrpoid/core/EmuView;->setFocusableInTouchMode(Z)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/mrpoid/core/EmuView;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/mrpoid/core/EmuView;->setKeepScreenOn(Z)V

    return-void
.end method
