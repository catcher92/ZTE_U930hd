.class Lleadcore/dcm/OmsDcmHelperLW$2;
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
    .line 258
    iput-object p1, p0, Lleadcore/dcm/OmsDcmHelperLW$2;->this$0:Lleadcore/dcm/OmsDcmHelperLW;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 260
    iget-object v0, p0, Lleadcore/dcm/OmsDcmHelperLW$2;->this$0:Lleadcore/dcm/OmsDcmHelperLW;

    #calls: Lleadcore/dcm/OmsDcmHelperLW;->startConnection()V
    invoke-static {v0}, Lleadcore/dcm/OmsDcmHelperLW;->access$100(Lleadcore/dcm/OmsDcmHelperLW;)V

    .line 299
    return-void
.end method
