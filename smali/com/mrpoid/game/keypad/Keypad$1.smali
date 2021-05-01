.class Lcom/mrpoid/game/keypad/Keypad$1;
.super Ljava/lang/Object;
.source "Keypad.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/game/keypad/Keypad;->showOpactSeek(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/game/keypad/Keypad;


# direct methods
.method constructor <init>(Lcom/mrpoid/game/keypad/Keypad;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/mrpoid/game/keypad/Keypad$1;->this$0:Lcom/mrpoid/game/keypad/Keypad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_2

    const/16 p1, 0xff

    const/16 p3, 0x14

    if-ge p2, p3, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 164
    :goto_0
    iget-object p2, p0, Lcom/mrpoid/game/keypad/Keypad$1;->this$0:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p2, p1}, Lcom/mrpoid/game/keypad/Keypad;->setOpacity(I)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
