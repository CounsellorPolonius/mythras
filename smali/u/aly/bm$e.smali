.class public final enum Lu/aly/bm$e;
.super Ljava/lang/Enum;
.source "Traffic.java"

# interfaces
.implements Lu/aly/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/bm$e;",
        ">;",
        "Lu/aly/co;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bm$e;

.field public static final enum b:Lu/aly/bm$e;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bm$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lu/aly/bm$e;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    new-instance v0, Lu/aly/bm$e;

    const-string v1, "UPLOAD_TRAFFIC"

    const-string v2, "upload_traffic"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bm$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bm$e;->a:Lu/aly/bm$e;

    .line 50
    new-instance v0, Lu/aly/bm$e;

    const-string v1, "DOWNLOAD_TRAFFIC"

    const-string v2, "download_traffic"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/bm$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bm$e;->b:Lu/aly/bm$e;

    .line 48
    new-array v0, v5, [Lu/aly/bm$e;

    sget-object v1, Lu/aly/bm$e;->a:Lu/aly/bm$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bm$e;->b:Lu/aly/bm$e;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bm$e;->f:[Lu/aly/bm$e;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bm$e;->c:Ljava/util/Map;

    .line 55
    const-class v0, Lu/aly/bm$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bm$e;

    .line 56
    sget-object v2, Lu/aly/bm$e;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/bm$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-short p3, p0, Lu/aly/bm$e;->d:S

    .line 96
    iput-object p4, p0, Lu/aly/bm$e;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/bm$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :pswitch_0
    sget-object p0, Lu/aly/bm$e;->b:Lu/aly/bm$e;

    return-object p0

    .line 66
    :pswitch_1
    sget-object p0, Lu/aly/bm$e;->a:Lu/aly/bm$e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bm$e;
    .locals 1

    .line 88
    sget-object v0, Lu/aly/bm$e;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/bm$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/bm$e;
    .locals 3

    .line 79
    invoke-static {p0}, Lu/aly/bm$e;->a(I)Lu/aly/bm$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bm$e;
    .locals 1

    .line 48
    const-class v0, Lu/aly/bm$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/bm$e;

    return-object p0
.end method

.method public static values()[Lu/aly/bm$e;
    .locals 1

    .line 48
    sget-object v0, Lu/aly/bm$e;->f:[Lu/aly/bm$e;

    invoke-virtual {v0}, [Lu/aly/bm$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bm$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 100
    iget-short v0, p0, Lu/aly/bm$e;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lu/aly/bm$e;->e:Ljava/lang/String;

    return-object v0
.end method
