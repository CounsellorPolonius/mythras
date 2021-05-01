.class public final enum Lcom/mrpoid/mrplist/moduls/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mrpoid/mrplist/moduls/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum APK:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum ARCHIVE:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum AUDIO:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum FOLDER:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum IMAGE:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum MRP:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum NOTYPE:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum TEXT:Lcom/mrpoid/mrplist/moduls/FileType;

.field public static final enum VIDEO:Lcom/mrpoid/mrplist/moduls/FileType;


# instance fields
.field private final icon:I

.field private mBitmapIcon:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final regExts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "FOLDER"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f080081

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->FOLDER:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 19
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "TEXT"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, ".txt"

    aput-object v6, v5, v3

    const v6, 0x7f080086

    invoke-direct {v0, v1, v4, v6, v5}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->TEXT:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 22
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "ARCHIVE"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, ".zip"

    aput-object v7, v6, v3

    const-string v7, ".7z"

    aput-object v7, v6, v4

    const-string v7, ".gz"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, ".tar"

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const v7, 0x7f080088

    invoke-direct {v0, v1, v8, v7, v6}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->ARCHIVE:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 25
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "AUDIO"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, ".mid"

    aput-object v7, v6, v3

    const-string v7, ".mp3"

    aput-object v7, v6, v4

    const-string v7, ".wav"

    aput-object v7, v6, v8

    const v7, 0x7f080084

    invoke-direct {v0, v1, v9, v7, v6}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->AUDIO:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 28
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "VIDEO"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, ".mp4"

    aput-object v7, v6, v3

    const-string v7, ".3gp"

    aput-object v7, v6, v4

    const-string v7, ".rm"

    aput-object v7, v6, v8

    const v7, 0x7f080082

    invoke-direct {v0, v1, v5, v7, v6}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->VIDEO:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 31
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "IMAGE"

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, ".png"

    aput-object v7, v6, v3

    const-string v7, ".jpg"

    aput-object v7, v6, v4

    const-string v7, ".bmp"

    aput-object v7, v6, v8

    const-string v7, ".gif"

    aput-object v7, v6, v9

    const/4 v7, 0x5

    const v10, 0x7f080085

    invoke-direct {v0, v1, v7, v10, v6}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->IMAGE:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 34
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "APK"

    new-array v6, v4, [Ljava/lang/String;

    const-string v10, ".apk"

    aput-object v10, v6, v3

    const/4 v10, 0x6

    const v11, 0x7f080080

    invoke-direct {v0, v1, v10, v11, v6}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->APK:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 37
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "MRP"

    new-array v6, v4, [Ljava/lang/String;

    const-string v11, ".mrp"

    aput-object v11, v6, v3

    const/4 v11, 0x7

    const v12, 0x7f080083

    invoke-direct {v0, v1, v11, v12, v6}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->MRP:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 40
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FileType;

    const-string v1, "NOTYPE"

    const/16 v6, 0x8

    const v12, 0x7f080087

    invoke-direct {v0, v1, v6, v12, v2}, Lcom/mrpoid/mrplist/moduls/FileType;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->NOTYPE:Lcom/mrpoid/mrplist/moduls/FileType;

    const/16 v0, 0x9

    .line 16
    new-array v0, v0, [Lcom/mrpoid/mrplist/moduls/FileType;

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->FOLDER:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->TEXT:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->ARCHIVE:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->AUDIO:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->VIDEO:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->IMAGE:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->APK:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->MRP:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->NOTYPE:Lcom/mrpoid/mrplist/moduls/FileType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->$VALUES:[Lcom/mrpoid/mrplist/moduls/FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/mrpoid/mrplist/moduls/FileType;->icon:I

    .line 49
    iput-object p4, p0, Lcom/mrpoid/mrplist/moduls/FileType;->regExts:[Ljava/lang/String;

    return-void
.end method

.method public static getTypeByName(Ljava/lang/String;)Lcom/mrpoid/mrplist/moduls/FileType;
    .locals 15

    if-eqz p0, :cond_5

    const/16 v0, 0x2e

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 74
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 76
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FileType;->values()[Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object v1

    array-length v2, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v2, :cond_4

    aget-object v11, v1, v10

    .line 77
    iget-object v12, v11, Lcom/mrpoid/mrplist/moduls/FileType;->regExts:[Ljava/lang/String;

    if-nez v12, :cond_1

    goto :goto_2

    .line 81
    :cond_1
    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    aget-object v6, v12, v14

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v11

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 88
    :cond_4
    sget-object p0, Lcom/mrpoid/mrplist/moduls/FileType;->NOTYPE:Lcom/mrpoid/mrplist/moduls/FileType;

    return-object p0

    .line 72
    :cond_5
    :goto_3
    sget-object p0, Lcom/mrpoid/mrplist/moduls/FileType;->NOTYPE:Lcom/mrpoid/mrplist/moduls/FileType;

    return-object p0
.end method

.method public static loadIcons(Landroid/content/res/Resources;)V
    .locals 4

    .line 92
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FileType;->values()[Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    invoke-virtual {v3, p0}, Lcom/mrpoid/mrplist/moduls/FileType;->getIconBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static unloadIcons()V
    .locals 7

    .line 98
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FileType;->values()[Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 99
    iget-object v4, v3, Lcom/mrpoid/mrplist/moduls/FileType;->mBitmapIcon:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/mrpoid/mrplist/moduls/FileType;->mBitmapIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    :goto_1
    if-eqz v4, :cond_1

    .line 100
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    :cond_1
    iput-object v5, v3, Lcom/mrpoid/mrplist/moduls/FileType;->mBitmapIcon:Ljava/lang/ref/WeakReference;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mrpoid/mrplist/moduls/FileType;
    .locals 1

    .line 16
    const-class v0, Lcom/mrpoid/mrplist/moduls/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mrpoid/mrplist/moduls/FileType;

    return-object p0
.end method

.method public static values()[Lcom/mrpoid/mrplist/moduls/FileType;
    .locals 1

    .line 16
    sget-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->$VALUES:[Lcom/mrpoid/mrplist/moduls/FileType;

    invoke-virtual {v0}, [Lcom/mrpoid/mrplist/moduls/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mrpoid/mrplist/moduls/FileType;

    return-object v0
.end method


# virtual methods
.method public getIconBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FileType;->mBitmapIcon:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FileType;->mBitmapIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    :cond_1
    iget v0, p0, Lcom/mrpoid/mrplist/moduls/FileType;->icon:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/FileType;->mBitmapIcon:Ljava/lang/ref/WeakReference;

    :cond_2
    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/mrpoid/mrplist/moduls/FileType;->icon:I

    return v0
.end method

.method public getRegExts()[Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FileType;->regExts:[Ljava/lang/String;

    return-object v0
.end method
