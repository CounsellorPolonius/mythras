.class public final enum Lu/aly/bk;
.super Ljava/lang/Enum;
.source "SDKType.java"

# interfaces
.implements Lu/aly/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/bk;",
        ">;",
        "Lu/aly/cl;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bk;

.field public static final enum b:Lu/aly/bk;

.field public static final enum c:Lu/aly/bk;

.field public static final enum d:Lu/aly/bk;

.field private static final synthetic f:[Lu/aly/bk;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lu/aly/bk;

    const-string v1, "ANDROID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lu/aly/bk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/bk;->a:Lu/aly/bk;

    .line 17
    new-instance v0, Lu/aly/bk;

    const-string v1, "IOS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lu/aly/bk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/bk;->b:Lu/aly/bk;

    .line 18
    new-instance v0, Lu/aly/bk;

    const-string v1, "WINDOWS_PHONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lu/aly/bk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/bk;->c:Lu/aly/bk;

    .line 19
    new-instance v0, Lu/aly/bk;

    const-string v1, "WINDOWS_RT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lu/aly/bk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/bk;->d:Lu/aly/bk;

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Lu/aly/bk;

    sget-object v1, Lu/aly/bk;->a:Lu/aly/bk;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/bk;->b:Lu/aly/bk;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bk;->c:Lu/aly/bk;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/bk;->d:Lu/aly/bk;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/bk;->f:[Lu/aly/bk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lu/aly/bk;->e:I

    return-void
.end method

.method public static a(I)Lu/aly/bk;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :pswitch_0
    sget-object p0, Lu/aly/bk;->d:Lu/aly/bk;

    return-object p0

    .line 45
    :pswitch_1
    sget-object p0, Lu/aly/bk;->c:Lu/aly/bk;

    return-object p0

    .line 43
    :pswitch_2
    sget-object p0, Lu/aly/bk;->b:Lu/aly/bk;

    return-object p0

    .line 41
    :pswitch_3
    sget-object p0, Lu/aly/bk;->a:Lu/aly/bk;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bk;
    .locals 1

    .line 15
    const-class v0, Lu/aly/bk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/bk;

    return-object p0
.end method

.method public static values()[Lu/aly/bk;
    .locals 1

    .line 15
    sget-object v0, Lu/aly/bk;->f:[Lu/aly/bk;

    invoke-virtual {v0}, [Lu/aly/bk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bk;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    iget v0, p0, Lu/aly/bk;->e:I

    return v0
.end method
