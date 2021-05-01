.class Lcom/mrpoid/core/EmuScreen$GLBitmap;
.super Ljava/lang/Object;
.source "EmuScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/core/EmuScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLBitmap"
.end annotation


# instance fields
.field private texture:[F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textures:[I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 617
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->texture:[F

    .line 626
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->vertices:[F

    .line 634
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 635
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 636
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 637
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 638
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 640
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->texture:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 641
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 642
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 643
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->texture:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 644
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    .line 648
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textures:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/mrpoid/core/EmuScreen$1;)V
    .locals 0

    .line 615
    invoke-direct {p0}, Lcom/mrpoid/core/EmuScreen$GLBitmap;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 668
    invoke-static {v2, v1, p2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 674
    iget-object p2, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v0, 0x1406

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 675
    iget-object p2, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v0, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 p2, 0x5

    const/4 v0, 0x4

    .line 679
    invoke-interface {p1, p2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textures:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 654
    iget-object v0, p0, Lcom/mrpoid/core/EmuScreen$GLBitmap;->textures:[I

    aget v0, v0, v1

    const/16 v1, 0xde1

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 656
    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 657
    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    return-void
.end method
