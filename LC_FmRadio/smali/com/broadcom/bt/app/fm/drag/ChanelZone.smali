.class public Lcom/broadcom/bt/app/fm/drag/ChanelZone;
.super Landroid/widget/LinearLayout;
.source "ChanelZone.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/drag/DropTarget;
.implements Lcom/broadcom/bt/app/fm/drag/DragController$DragListener;


# instance fields
.field private mFrequencySaveListener:Lcom/broadcom/bt/app/fm/drag/FrequencySaveListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)Z
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone acceptDrop()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    const-string v0, "ChanelZone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptDrop--- this== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "ChanelZone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptDrop--- this.mFrequencySaveListener== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->mFrequencySaveListener:Lcom/broadcom/bt/app/fm/drag/FrequencySaveListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragTextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragContainer;

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->mFrequencySaveListener:Lcom/broadcom/bt/app/fm/drag/FrequencySaveListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/broadcom/bt/app/fm/drag/FrequencySaveListener;->onSaveFrequency(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragEnd()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onDragEnter(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 48
    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragTextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragContainer;

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragEnter()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 61
    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragTextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragContainer;

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragExit()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onDragOver(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 71
    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragTextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/broadcom/bt/app/fm/drag/DragContainer;

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDragOver()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onDragStart(Landroid/view/View;Lcom/broadcom/bt/app/fm/drag/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 94
    instance-of v0, p2, Lcom/broadcom/bt/app/fm/drag/DragTextView;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/broadcom/bt/app/fm/drag/DragContainer;

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onDrop(Lcom/broadcom/bt/app/fm/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "offset2"
    .parameter "dragInfo"

    .prologue
    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DeleteZone onDrop()......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 106
    return-void
.end method

.method public setFrequencySaveListener(Lcom/broadcom/bt/app/fm/drag/FrequencySaveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/drag/ChanelZone;->mFrequencySaveListener:Lcom/broadcom/bt/app/fm/drag/FrequencySaveListener;

    .line 19
    return-void
.end method
