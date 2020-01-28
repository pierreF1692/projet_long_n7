# Load parameters from GUI
function loadGUI()
    # Directory path
    dirPath=pwd()

    # Data
    data_op = CSV.read(joinpath(dirPath,"data\\data_op.csv"))

    # Load
    ld = (
    power = data_op.ld_E[1:nh],
    )

    # Pv
    pv = (
    powerMax = 50,
    power = 50 * data_op.pv[1:nh],
    )

    # Liion
    liion = (
    Erated = 100,
    cRateChMax = 1.5,
    cRateDchMax = 1.5,
    ηCh = 0.8,
    ηDch = 0.8,
    socMin = 0.2,
    socMax = 0.8,
    socIni = 0.8,
    )

    # Grid
    grid = (
    powerMax = 50.,
    C_grid = data_op.C_grid[1:nh],
    )

    #
    outputGUI = Dict(
    "ld" => ld,
    "pv" => pv,
    "liion" => liion,
    "grid" => grid,
    )

    return outputGUI
end
