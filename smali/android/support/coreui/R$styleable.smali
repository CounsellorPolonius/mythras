.class public final Landroid/support/coreui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/coreui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/coreui/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    .line 138
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout:[I

    const/4 v0, 0x6

    .line 146
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/coreui/R$styleable;->FontFamily:[I

    .line 153
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/coreui/R$styleable;->FontFamilyFont:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400b4
        0x7f04010a
    .end array-data

    :array_1
    .array-data 4
        0x10100b3
        0x7f0400b7
        0x7f0400b8
        0x7f0400b9
        0x7f0400bc
        0x7f0400bd
        0x7f0400be
    .end array-data

    :array_2
    .array-data 4
        0x7f040093
        0x7f040094
        0x7f040095
        0x7f040096
        0x7f040097
        0x7f040098
    .end array-data

    :array_3
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f040091
        0x7f040099
        0x7f04009a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
