.class public final enum Lcom/edroid/common/utils/FileUtils$FileState;
.super Ljava/lang/Enum;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/edroid/common/utils/FileUtils$FileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/edroid/common/utils/FileUtils$FileState;

.field public static final enum FState_Dir:Lcom/edroid/common/utils/FileUtils$FileState;

.field public static final enum FState_File:Lcom/edroid/common/utils/FileUtils$FileState;

.field public static final enum FState_None:Lcom/edroid/common/utils/FileUtils$FileState;

.field public static final enum FState_Other:Lcom/edroid/common/utils/FileUtils$FileState;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Lcom/edroid/common/utils/FileUtils$FileState;

    const-string v1, "FState_Dir"

    const-string v2, "I am director!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/edroid/common/utils/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_Dir:Lcom/edroid/common/utils/FileUtils$FileState;

    .line 67
    new-instance v0, Lcom/edroid/common/utils/FileUtils$FileState;

    const-string v1, "FState_File"

    const-string v2, "I am file!"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/edroid/common/utils/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_File:Lcom/edroid/common/utils/FileUtils$FileState;

    .line 68
    new-instance v0, Lcom/edroid/common/utils/FileUtils$FileState;

    const-string v1, "FState_None"

    const-string v2, "I am a ghost!"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/edroid/common/utils/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_None:Lcom/edroid/common/utils/FileUtils$FileState;

    .line 69
    new-instance v0, Lcom/edroid/common/utils/FileUtils$FileState;

    const-string v1, "FState_Other"

    const-string v2, "I am not human!"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/edroid/common/utils/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_Other:Lcom/edroid/common/utils/FileUtils$FileState;

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [Lcom/edroid/common/utils/FileUtils$FileState;

    sget-object v1, Lcom/edroid/common/utils/FileUtils$FileState;->FState_Dir:Lcom/edroid/common/utils/FileUtils$FileState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/edroid/common/utils/FileUtils$FileState;->FState_File:Lcom/edroid/common/utils/FileUtils$FileState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/edroid/common/utils/FileUtils$FileState;->FState_None:Lcom/edroid/common/utils/FileUtils$FileState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/edroid/common/utils/FileUtils$FileState;->FState_Other:Lcom/edroid/common/utils/FileUtils$FileState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/edroid/common/utils/FileUtils$FileState;->$VALUES:[Lcom/edroid/common/utils/FileUtils$FileState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/edroid/common/utils/FileUtils$FileState;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/edroid/common/utils/FileUtils$FileState;
    .locals 1

    .line 65
    const-class v0, Lcom/edroid/common/utils/FileUtils$FileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/edroid/common/utils/FileUtils$FileState;

    return-object p0
.end method

.method public static values()[Lcom/edroid/common/utils/FileUtils$FileState;
    .locals 1

    .line 65
    sget-object v0, Lcom/edroid/common/utils/FileUtils$FileState;->$VALUES:[Lcom/edroid/common/utils/FileUtils$FileState;

    invoke-virtual {v0}, [Lcom/edroid/common/utils/FileUtils$FileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/edroid/common/utils/FileUtils$FileState;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/edroid/common/utils/FileUtils$FileState;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/edroid/common/utils/FileUtils$FileState;->tag:Ljava/lang/String;

    return-object v0
.end method
