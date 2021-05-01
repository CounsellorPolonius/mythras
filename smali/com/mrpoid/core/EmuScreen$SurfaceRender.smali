.class Lcom/mrpoid/core/EmuScreen$SurfaceRender;
.super Ljava/lang/Object;
.source "EmuScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/core/EmuScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceRender"
.end annotation


# instance fields
.field private drawHandler:Landroid/os/Handler;

.field private drawThread:Landroid/os/HandlerThread;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceOk:Z

.field final synthetic this$0:Lcom/mrpoid/core/EmuScreen;


# direct methods
.method constructor <init>(Lcom/mrpoid/core/EmuScreen;Landroid/view/SurfaceView;)V
    .locals 3

    .line 543
    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "draw"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawThread:Landroid/os/HandlerThread;

    .line 545
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 546
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawHandler:Landroid/os/Handler;

    .line 547
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/32 v1, 0x186a0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 549
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 550
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 551
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceOk:Z

    :cond_0
    return-void
.end method


# virtual methods
.method drawFrame()V
    .locals 9

    .line 594
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceOk:Z

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 602
    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v3}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object v3

    iget v3, v3, Lcom/mrpoid/core/EmuConfig;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 603
    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v3, v2}, Lcom/mrpoid/core/EmuScreen;->access$200(Lcom/mrpoid/core/EmuScreen;Landroid/graphics/Canvas;)V

    const-wide/16 v3, 0x3e8

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v7, v5, v0

    div-long/2addr v3, v7

    long-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/mrpoid/core/Emulator;->fps:I

    .line 605
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v0}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->showFps:Z

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {v0, v2}, Lcom/mrpoid/core/EmuScreen;->dfps(Landroid/graphics/Canvas;)V

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 610
    sget-object v1, Lcom/mrpoid/core/EmuScreen;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockCanvas fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method flush()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawFrame()V

    goto :goto_0

    .line 559
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawFrame()V

    .line 561
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->drawHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 578
    sget-object p1, Lcom/mrpoid/core/EmuScreen;->log:Lcom/edroid/common/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-------surfaceChanged "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {p1, p3, p4}, Lcom/mrpoid/core/EmuScreen;->setViewportSize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 569
    sget-object v0, Lcom/mrpoid/core/EmuScreen;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------surfaceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceOk:Z

    .line 571
    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 573
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v0}, Lcom/mrpoid/core/EmuScreen;->access$000(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/Emulator;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mrpoid/core/Emulator;->native_surfaceCreate(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 585
    sget-object v0, Lcom/mrpoid/core/EmuScreen;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------surfaceDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 586
    iput-boolean p1, p0, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->surfaceOk:Z

    return-void
.end method
