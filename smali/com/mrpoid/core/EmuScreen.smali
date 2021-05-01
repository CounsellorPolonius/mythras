.class public Lcom/mrpoid/core/EmuScreen;
.super Ljava/lang/Object;
.source "EmuScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/core/EmuScreen$GLRender;,
        Lcom/mrpoid/core/EmuScreen$GLBitmap;,
        Lcom/mrpoid/core/EmuScreen$SurfaceRender;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "EmuScreen"

.field private static final TEST:Ljava/lang/String; = "1.\u4f60\u597d\uff0cHellogfa"

.field static final log:Lcom/edroid/common/utils/Logger;


# instance fields
.field bmpPaint:Landroid/graphics/Paint;

.field public cacheBmp:Landroid/graphics/Bitmap;

.field public cacheCanvas:Landroid/graphics/Canvas;

.field private cfg:Lcom/mrpoid/core/EmuConfig;

.field charBuf:[C

.field chrRect:Landroid/graphics/Rect;

.field private dRectDst:Landroid/graphics/Rect;

.field private dRectSrc:Landroid/graphics/Rect;

.field emuView:Landroid/view/View;

.field private emulator:Lcom/mrpoid/core/Emulator;

.field glRenderer:Lcom/mrpoid/core/EmuScreen$GLRender;

.field imgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private lastX:I

.field private lastY:I

.field lstChrR:I

.field lstChrY:I

.field private mrpH:I

.field private mrpRect:Landroid/graphics/Rect;

.field private mrpW:I

.field private final pfd:Landroid/graphics/PaintFlagsDrawFilter;

.field private scaleX:F

.field private scaleY:F

.field public screenBmp:Landroid/graphics/Bitmap;

.field surfaceRender:Lcom/mrpoid/core/EmuScreen$SurfaceRender;

.field txtPaint:Landroid/graphics/Paint;

.field private viewH:I

.field private viewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    sput-object v0, Lcom/mrpoid/core/EmuScreen;->log:Lcom/edroid/common/utils/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/mrpoid/core/Emulator;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 79
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->dRectSrc:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->dRectDst:Landroid/graphics/Rect;

    .line 338
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 93
    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    .line 94
    invoke-static {}, Lcom/mrpoid/core/EmuConfig;->getInstance()Lcom/mrpoid/core/EmuConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->imgs:Ljava/util/Map;

    .line 98
    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v1, v1, Lcom/mrpoid/core/EmuConfig;->fontType:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mrpoid/R$dimen;->font_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    .line 114
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 115
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 116
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->screenOn:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 120
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    instance-of p1, p1, Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_1

    .line 121
    new-instance p1, Lcom/mrpoid/core/EmuScreen$GLRender;

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {p1, p0, v0}, Lcom/mrpoid/core/EmuScreen$GLRender;-><init>(Lcom/mrpoid/core/EmuScreen;Landroid/opengl/GLSurfaceView;)V

    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen;->glRenderer:Lcom/mrpoid/core/EmuScreen$GLRender;

    goto :goto_0

    .line 124
    :cond_1
    new-instance p1, Lcom/mrpoid/core/EmuScreen$SurfaceRender;

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-direct {p1, p0, v0}, Lcom/mrpoid/core/EmuScreen$SurfaceRender;-><init>(Lcom/mrpoid/core/EmuScreen;Landroid/view/SurfaceView;)V

    iput-object p1, p0, Lcom/mrpoid/core/EmuScreen;->surfaceRender:Lcom/mrpoid/core/EmuScreen$SurfaceRender;

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget p1, p1, Lcom/mrpoid/core/EmuConfig;->g_scnw:I

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v0, v0, Lcom/mrpoid/core/EmuConfig;->g_scnh:I

    invoke-direct {p0, p1, v0}, Lcom/mrpoid/core/EmuScreen;->setSize(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/Emulator;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mrpoid/core/EmuScreen;)Lcom/mrpoid/core/EmuConfig;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mrpoid/core/EmuScreen;Landroid/graphics/Canvas;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/mrpoid/core/EmuScreen;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mrpoid/core/EmuScreen;)Landroid/graphics/Rect;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mrpoid/core/EmuScreen;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mrpoid/core/EmuScreen;->viewH:I

    return p0
.end method

.method private createBitmap()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    :cond_1
    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    .line 235
    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    .line 237
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    .line 238
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheCanvas:Landroid/graphics/Canvas;

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    iget v4, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mrpoid/core/Emulator;->native_screenReset(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->scaleFilter:Z

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 1

    .line 470
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->getActivity()Lcom/mrpoid/app/EmulatorActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mrpoid/app/EmulatorActivity;->showOptMenu()V

    :cond_0
    const/16 p1, 0x52

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    const/16 p1, 0x18

    if-eq p2, p1, :cond_2

    const/16 p1, 0x19

    if-ne p2, p1, :cond_3

    .line 478
    :cond_2
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean p1, p1, Lcom/mrpoid/core/EmuConfig;->catchVolumeButton:Z

    if-nez p1, :cond_3

    return v0

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-static {p2}, Lcom/mrpoid/core/EmuScreen;->transKeycode(I)I

    move-result p2

    invoke-virtual {p1, v0, p2, v0}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 493
    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/mrpoid/core/EmuScreen;->scaleX:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 495
    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/mrpoid/core/EmuScreen;->scaleY:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 505
    :pswitch_0
    iget p1, p0, Lcom/mrpoid/core/EmuScreen;->lastX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 506
    iget v4, p0, Lcom/mrpoid/core/EmuScreen;->lastY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    .line 507
    iget v5, p0, Lcom/mrpoid/core/EmuScreen;->scaleX:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v5, v5, v6

    .line 508
    iget v6, p0, Lcom/mrpoid/core/EmuScreen;->scaleY:F

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float v6, v6, v7

    cmpl-float v7, p1, v5

    if-gtz v7, :cond_0

    neg-float v5, v5

    cmpg-float p1, p1, v5

    if-ltz p1, :cond_0

    cmpl-float p1, v4, v6

    if-gtz p1, :cond_0

    neg-float p1, v6

    cmpg-float p1, v4, p1

    if-gez p1, :cond_1

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v2, v3}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    .line 512
    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->lastX:I

    .line 513
    iput v1, p0, Lcom/mrpoid/core/EmuScreen;->lastY:I

    goto :goto_0

    .line 520
    :pswitch_1
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    goto :goto_0

    .line 499
    :pswitch_2
    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->lastX:I

    .line 500
    iput v1, p0, Lcom/mrpoid/core/EmuScreen;->lastY:I

    .line 501
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSize(II)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    .line 304
    iput p2, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    .line 306
    invoke-direct {p0}, Lcom/mrpoid/core/EmuScreen;->createBitmap()V

    return-void
.end method

.method public static transKeycode(I)I
    .locals 3

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    const/16 v1, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0xc

    const/16 v2, 0xd

    packed-switch p0, :pswitch_data_2

    const/4 p0, -0x1

    return p0

    :pswitch_0
    return v2

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    const/16 p0, 0xf

    return p0

    :pswitch_4
    const/16 p0, 0xe

    return p0

    :pswitch_5
    return v2

    :pswitch_6
    return v0

    :pswitch_7
    const/16 p0, 0xb

    return p0

    :pswitch_8
    const/16 p0, 0xa

    return p0

    :pswitch_9
    const/16 p0, 0x9

    return p0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x3

    return p0

    :pswitch_10
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x1

    return p0

    :pswitch_12
    const/4 p0, 0x0

    return p0

    :pswitch_13
    const/16 p0, 0x13

    return p0

    :cond_0
    :pswitch_14
    const/16 p0, 0x11

    return p0

    :cond_1
    return v1

    :cond_2
    :pswitch_15
    const/16 p0, 0x12

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_15
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public N2J_decode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 210
    sget-object v0, Lcom/mrpoid/core/EmuScreen;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N2J_decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->imgs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 215
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 216
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->imgs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public N2J_drawChar(IIII)V
    .locals 8

    .line 151
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 152
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    const/4 v1, 0x1

    aput-char v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 156
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    iget-object v4, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p4, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    .line 170
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    int-to-float v5, p1

    add-int/lit8 p1, p3, 0x10

    add-int/lit8 p1, p1, -0x3

    int-to-float v6, p1

    iget-object v7, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    .line 169
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 174
    iput p3, p0, Lcom/mrpoid/core/EmuScreen;->lastY:I

    .line 175
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/mrpoid/core/EmuScreen;->lastX:I

    return-void
.end method

.method public N2J_drawCharBitmap(I)V
    .locals 9

    .line 191
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 192
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    const/4 v0, 0x1

    aput-char v1, p1, v0

    .line 193
    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    iget p1, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    int-to-float v7, p1

    iget-object v8, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public N2J_drawImg(Ljava/lang/String;IIII)V
    .locals 0

    return-void
.end method

.method public N2J_measureChar(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 182
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    const/4 v0, 0x1

    aput-char v1, p1, v0

    .line 184
    iget-object p1, p0, Lcom/mrpoid/core/EmuScreen;->txtPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->charBuf:[C

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 315
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method

.method dfps(Landroid/graphics/Canvas;)V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mrpoid/core/Emulator;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 360
    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    iget v2, p0, Lcom/mrpoid/core/EmuScreen;->viewH:I

    add-int/lit8 v2, v2, -0x5

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 362
    sget-object v0, Lcom/mrpoid/core/Emulator;->meminfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/mrpoid/core/Emulator;->meminfo:Ljava/lang/String;

    sget-object v2, Lcom/mrpoid/core/Emulator;->meminfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 364
    sget-object v0, Lcom/mrpoid/core/Emulator;->meminfo:Ljava/lang/String;

    const/high16 v1, 0x40a00000    # 5.0f

    iget v2, p0, Lcom/mrpoid/core/EmuScreen;->viewH:I

    add-int/lit8 v2, v2, -0x5

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->chrRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->dRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 375
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->dRectDst:Landroid/graphics/Rect;

    add-int/2addr p4, p2

    add-int/lit8 p4, p4, -0x1

    add-int/2addr p5, p3

    add-int/lit8 p5, p5, -0x1

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    iget-object p2, p0, Lcom/mrpoid/core/EmuScreen;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/mrpoid/core/EmuScreen;->dRectSrc:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/mrpoid/core/EmuScreen;->dRectDst:Landroid/graphics/Rect;

    const/4 p5, 0x0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method initScale()V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v0, v0, Lcom/mrpoid/core/EmuConfig;->scaleMode:I

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 271
    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleX:F

    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleY:F

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 265
    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleY:F

    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleX:F

    goto :goto_0

    .line 261
    :pswitch_1
    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleX:F

    .line 262
    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->viewH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleY:F

    goto :goto_0

    .line 268
    :pswitch_2
    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->viewH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleX:F

    iput v0, p0, Lcom/mrpoid/core/EmuScreen;->scaleY:F

    .line 275
    :goto_0
    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mrpoid/core/EmuScreen;->scaleX:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 276
    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->viewH:I

    iget v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mrpoid/core/EmuScreen;->scaleY:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 278
    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    :goto_1
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 279
    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    :goto_2
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 281
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 282
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 287
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mrpRect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->useOpenGL:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->glRenderer:Lcom/mrpoid/core/EmuScreen$GLRender;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuScreen$GLRender;->resize()V

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuScreen;->postFlush()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 528
    invoke-direct {p0, p3, p2}, Lcom/mrpoid/core/EmuScreen;->handleKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 533
    invoke-direct {p0, p2}, Lcom/mrpoid/core/EmuScreen;->handleMotionEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public pause()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public postFlush()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->useOpenGL:Z

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->surfaceRender:Lcom/mrpoid/core/EmuScreen$SurfaceRender;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuScreen$SurfaceRender;->flush()V

    :cond_0
    return-void
.end method

.method public declared-synchronized recyle()V
    .locals 2

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 130
    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 5

    .line 324
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    :cond_1
    iget v0, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    iget v1, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    .line 330
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emulator:Lcom/mrpoid/core/Emulator;

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cacheBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/mrpoid/core/EmuScreen;->mrpW:I

    iget v4, p0, Lcom/mrpoid/core/EmuScreen;->mrpH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mrpoid/core/Emulator;->native_screenReset(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->emuView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_3
    return-void
.end method

.method public screenShot(Landroid/content/Context;)V
    .locals 4

    .line 390
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "screenshot"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 398
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyymmddHHmmss"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->screenBmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/mrpoid/core/EmuUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u622a\u56fe\u6210\u529f\uff01\n\u6587\u4ef6\u4fdd\u5b58\u5728\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "\u622a\u56fe\u5931\u8d25\uff01"

    .line 405
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public setPosition(II)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->mrpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public setScale(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iput p1, v0, Lcom/mrpoid/core/EmuConfig;->scaleMode:I

    .line 255
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuScreen;->initScale()V

    return-void
.end method

.method setViewportSize(II)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/mrpoid/core/EmuScreen;->viewW:I

    .line 249
    iput p2, p0, Lcom/mrpoid/core/EmuScreen;->viewH:I

    .line 250
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuScreen;->initScale()V

    return-void
.end method

.method public switchAnt()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v1, v1, Lcom/mrpoid/core/EmuConfig;->scaleFilter:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/mrpoid/core/EmuConfig;->scaleFilter:Z

    .line 370
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuScreen;->postFlush()V

    return-void
.end method
