.class Lcom/mrpoid/core/EmuScreen$GLRender;
.super Ljava/lang/Object;
.source "EmuScreen.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/core/EmuScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRender"
.end annotation


# instance fields
.field glBitmap:Lcom/mrpoid/core/EmuScreen$GLBitmap;

.field mgl:Ljavax/microedition/khronos/opengles/GL10;

.field resize:Z

.field final synthetic this$0:Lcom/mrpoid/core/EmuScreen;


# direct methods
.method constructor <init>(Lcom/mrpoid/core/EmuScreen;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .line 688
    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance p1, Lcom/mrpoid/core/EmuScreen$GLBitmap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/mrpoid/core/EmuScreen$GLBitmap;-><init>(Lcom/mrpoid/core/EmuScreen$1;)V

    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->glBitmap:Lcom/mrpoid/core/EmuScreen$GLBitmap;

    .line 690
    invoke-virtual {p2, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/16 v0, 0x4100

    .line 753
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 756
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->resize:Z

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v0}, Lcom/mrpoid/core/EmuScreen;->access$400(Lcom/mrpoid/core/EmuScreen;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v1}, Lcom/mrpoid/core/EmuScreen;->access$500(Lcom/mrpoid/core/EmuScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v2}, Lcom/mrpoid/core/EmuScreen;->access$400(Lcom/mrpoid/core/EmuScreen;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v2}, Lcom/mrpoid/core/EmuScreen;->access$400(Lcom/mrpoid/core/EmuScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v2}, Lcom/mrpoid/core/EmuScreen;->access$400(Lcom/mrpoid/core/EmuScreen;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v3}, Lcom/mrpoid/core/EmuScreen;->access$400(Lcom/mrpoid/core/EmuScreen;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/4 v0, 0x0

    .line 758
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->resize:Z

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->glBitmap:Lcom/mrpoid/core/EmuScreen$GLBitmap;

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    iget-object v1, v1, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/mrpoid/core/EmuScreen$GLBitmap;->draw(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 765
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {p1}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object p1

    iget p1, p1, Lcom/mrpoid/core/EmuConfig;->fps:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 766
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {p1}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object p1

    iput v0, p1, Lcom/mrpoid/core/EmuConfig;->fps:I

    goto :goto_0

    .line 767
    :cond_1
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {p1}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object p1

    iget p1, p1, Lcom/mrpoid/core/EmuConfig;->fps:I

    const/16 v0, 0x3c

    if-le p1, v0, :cond_2

    .line 768
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {p1}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object p1

    iput v0, p1, Lcom/mrpoid/core/EmuConfig;->fps:I

    .line 769
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {p1}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object p1

    iget p1, p1, Lcom/mrpoid/core/EmuConfig;->fps:I

    sput p1, Lcom/mrpoid/core/Emulator;->fps:I

    const/16 p1, 0x3e8

    .line 770
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-static {v0}, Lcom/mrpoid/core/EmuScreen;->access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;

    move-result-object v0

    iget v0, v0, Lcom/mrpoid/core/EmuConfig;->fps:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    const/4 v0, 0x1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 722
    :cond_0
    sget-object v1, Lcom/mrpoid/core/EmuScreen;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChangedGL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->this$0:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {v1, p2, p3}, Lcom/mrpoid/core/EmuScreen;->setViewportSize(II)V

    const/4 v1, 0x0

    .line 726
    invoke-interface {p1, v1, v1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/16 p2, 0x1701

    .line 730
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 731
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/16 p2, 0x1700

    .line 735
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 736
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 742
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->resize:Z

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 695
    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p2, 0xde1

    .line 697
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const p2, 0x8074

    .line 698
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const p2, 0x8078

    .line 699
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    const v0, 0x3f666666    # 0.9f

    .line 702
    invoke-interface {p1, p2, p2, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 708
    iget-object p2, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->glBitmap:Lcom/mrpoid/core/EmuScreen$GLBitmap;

    invoke-virtual {p2, p1}, Lcom/mrpoid/core/EmuScreen$GLBitmap;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method resize()V
    .locals 1

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuScreen$GLRender;->resize:Z

    return-void
.end method
