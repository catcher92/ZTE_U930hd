.class Lleadcore/dcm/OmsDcmHelperLW$1;
.super Ljava/lang/Object;
.source "OmsDcmHelperLW.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/dcm/OmsDcmHelperLW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lleadcore/dcm/OmsDcmHelperLW;


# direct methods
.method constructor <init>(Lleadcore/dcm/OmsDcmHelperLW;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lleadcore/dcm/OmsDcmHelperLW$1;->this$0:Lleadcore/dcm/OmsDcmHelperLW;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 252
    invoke-static {}, Lleadcore/dcm/OmsDcmHelperLW;->access$000()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 253
    invoke-static {p2}, Lleadcore/dcm/OmsDcmHelperLW;->access$002(I)I

    .line 255
    :cond_0
    return-void
.end method
